<?php

namespace App\Repository;

use App\Entity\Article;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Collections\Collection;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Article|null find($id, $lockMode = null, $lockVersion = null)
 * @method Article|null findOneBy(array $criteria, array $orderBy = null)
 * @method Article[]    findAll()
 * @method Article[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ArticleRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Article::class);
    }

    public function search(?string $query = null, ?array $filtres = [])
    {
        $qb = $this->createQueryBuilder('a');

        if (!empty($query)) {
            $qb->andWhere('a.titre LIKE :query OR a.contenu LIKE :query')
                ->setParameter('query', '%' . $query . '%');
        }

        if (array_key_exists('categorie', $filtres)) {
            $qb->andWhere('a.categorie = :categorie')
                ->setParameter('categorie', $filtres['categorie']);
        }


        if (array_key_exists('auteur', $filtres)) {
            $qb->andWhere('a.auteur = :auteur')
                ->setParameter('auteur', $filtres['auteur']);
        }

        return $qb->orderBy('a.titre', 'ASC')
            ->getQuery()
            ->getResult();
    }

    // /**
    //  * @return Article[] Returns an array of Article objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Article
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
