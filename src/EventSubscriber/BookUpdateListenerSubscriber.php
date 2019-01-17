<?php

namespace App\EventSubscriber;

use ApiPlatform\Core\Api\UrlGeneratorInterface;
use ApiPlatform\Core\EventListener\EventPriorities;
use App\Entity\Book;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Event\GetResponseForControllerResultEvent;
use Symfony\Component\Mercure\Publisher;
use Symfony\Component\Mercure\Update;

class BookUpdateListenerSubscriber implements EventSubscriberInterface
{
    private $publisher;
    private $router;

    public function __construct(Publisher $publisher, UrlGeneratorInterface $router)
    {
        $this->publisher = $publisher;
        $this->router = $router;
    }

    public function onKernelView(GetResponseForControllerResultEvent $event): void
    {
        $book = $event->getControllerResult();
        $method = $event->getRequest()->getMethod();

        if (!$book instanceof Book || Request::METHOD_POST !== $method) {
            return;
        }

        $bookUrl = $this->router->generate('api_books_get_item', ['id' => $book->getId()]);

        $update = new Update($bookUrl, \json_encode(['msg' => 'Yeah!!!!']));

        $this->publisher->__invoke($update);
    }

    public static function getSubscribedEvents()
    {
        return [
           'kernel.view' => ['onKernelView', EventPriorities::POST_WRITE],
        ];
    }
}
