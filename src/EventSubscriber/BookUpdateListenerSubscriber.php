<?php

namespace App\EventSubscriber;

use ApiPlatform\Core\EventListener\EventPriorities;
use App\Entity\Book;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Event\GetResponseForControllerResultEvent;
use Symfony\Component\Mercure\Publisher;
use Symfony\Component\Mercure\Update;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;
use Symfony\Component\Serializer\SerializerInterface;

class BookUpdateListenerSubscriber implements EventSubscriberInterface
{
    private $publisher;
    private $router;
    private $serializer;

    public function __construct(Publisher $publisher, UrlGeneratorInterface $router, SerializerInterface $serializer)
    {
        $this->publisher = $publisher;
        $this->router = $router;
        $this->serializer = $serializer;
    }

    public function onKernelView(GetResponseForControllerResultEvent $event): void
    {
        $book = $event->getControllerResult();
        $method = $event->getRequest()->getMethod();

        if (!$book instanceof Book || Request::METHOD_POST !== $method) {
            return;
        }

        $format = 'jsonld';

        $topics = [];

        // Current book URL
        $topics[] = $this->router->generate('api_books_get_item', ['id' => $book->getId(), '_format' => $format], UrlGeneratorInterface::ABSOLUTE_URL);

        // Pseudo-hack to get /books/{id}.{_format}
        $topics[] = \str_replace('0000', '{id}', $this->router->generate('api_books_get_item', ['id' => '0000', '_format' => $format], UrlGeneratorInterface::ABSOLUTE_URL));

        // Message to send to Mercure
        $update = new Update($topics, $this->serializer->serialize(['item' => $book], $format));

        $this->publisher->__invoke($update);
    }

    public static function getSubscribedEvents()
    {
        return [
           'kernel.view' => ['onKernelView', EventPriorities::POST_WRITE],
        ];
    }
}
