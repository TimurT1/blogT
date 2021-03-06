<?php

namespace App\Controller;

use App\Entity\Article;
use App\Form\ArticleType;
use App\Repository\ArticleRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\HttpFoundation\Request;

class BlogController extends AbstractController
{
    /**
     * @Route("/blog", name="blog")
     */
    public function index(Request $request, ArticleRepository $repo)
    {
        $query = $request->get('query', null);

        $articles = $repo->search($query);
        return $this->render('blog/index.html.twig', [
            'controller_name' => 'BlogController',
            'articles' => $articles,
            'query' => $query
        ]);
    }

    /**
     * @Route("/", name="home")
     */
    public function home()
    {
        return $this->render('blog/home.html.twig', [
            'title' => "Bienvenue!"
        ]);
    }

    /**
     * @Route("/blog/new", name="blog_create")
     * @Route("/blog/{id}/edit", name="blog_edit")
     */
    public function form(Article $article = null, Request $request, EntityManagerInterface $manager)
    {
        if (!$article) {
            $article = new Article();
        }

        // $form = $this->createFormBuilder($article)
        //     ->add('titre')
        //     ->add('contenu', TextareaType::class)
        //     ->add('image')
        //     ->add('auteur')
        //     ->getForm();

        $form = $this->createForm(ArticleType::class, $article);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            if (!$article->getID()) {
                $article->setDateCreation(new \DateTime());
            }

            $manager->persist($article);
            $manager->flush();

            return $this->redirectToRoute('blog_show', ['id' => $article->getId()]);
        }

        return $this->render('blog/form.html.twig', [
            'formArticle' => $form->createView(),
            'editMode' => $article->getId() !== null
        ]);
    }

    /**
     * @Route("/blog/{id}", name="blog_show")
     */
    public function show(Article $article)
    {
        return $this->render('blog/show.html.twig', [
            'article' => $article
        ]);
    }

    // /**
    //  * @Route("/{id}", name="blog_delete", methods={"GET"})
    //  */

    // public function delete(Article $article, Request $request): Response
    // {
    //     if ($this->isCsrfTokenValid('delete' . $article->getId(), $request->request->get('_token'))) {
    //         $entityManager = $this->getDoctrine()->getManager();
    //         $entityManager->persist($article);
    //         $entityManager->flush();

    //         $success = 'suppresion effectu??e avec succ??s';
    //         $this->addFlash('message', $success);
    //         return $this->redirectToRoute('blog');
    //     }
    // }

    // /**
    //  * @Route("/{id}", name="blog_delete", methods={"POST"})
    //  */
    // public function delete(Request $request, Article $article): Response
    // {
    //     if ($this->isCsrfTokenValid('delete' . $article->getId(), $request->request->get('_token'))) {
    //         $entityManager = $this->getDoctrine()->getManager();
    //         $entityManager->remove($article);
    //         $entityManager->flush();
    //     }

    //     $success = 'suppression effectu??e avec succ??s';
    //     $this->addFlash('message', $success);
    //     return $this->redirectToRoute('blog');
    // }

    /**
     * @Route("/{id}", name="article_delete", methods={"POST"})
     */
    public function delete(Request $request, Article $article): Response
    {
        if ($this->isCsrfTokenValid('delete' . $article->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($article);
            $entityManager->flush();
        }

        return $this->redirectToRoute('blog', [], Response::HTTP_SEE_OTHER);
    }
}
