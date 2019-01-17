<?php

namespace App\Controller;

use App\Repository\BookRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mercure\Publisher;
use Symfony\Component\Mercure\Update;
use Symfony\Component\Routing\Annotation\Route;

class DefaultController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(BookRepository $repo): Response
    {
        return $this->render('home/home.html.twig', [
            'books' => $repo->findAll(),
        ]);
    }

    /**
     * @Route("/pub", name="pub")
     */
    public function pub(Publisher $publisher): Response
    {
        $update = new Update('http://127.0.0.1:8080/api/books/1', \json_encode(['msg' => 'Yeah!!!!']));

        $publisher->__invoke($update);

        return new Response(<<<HTML
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
             <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
                         <meta http-equiv="X-UA-Compatible" content="ie=edge">
             <title>Document</title>
</head>
<body>
  Done.
</body>
</html>
HTML
        );
    }
}
