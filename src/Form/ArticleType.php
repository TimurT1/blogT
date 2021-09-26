<?php

namespace App\Form;

use App\Entity\Article;
use App\Entity\MotCles;
use App\Entity\Categorie;
use App\Form\MotClesType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('titre')
            ->add('categorie', EntityType::class, [
                'class' => Categorie::class,
                'choice_label' => 'nomCategorie'
            ])
            ->add('contenu')
            ->add('image')
            // ->add('dateCreation')
            ->add('auteur')
            // ->add('motscles', CollectionType::class, [
            //     'entry_type' => MotClesType::class,
            //     'entry_options' => ['label' => false],
            //     'allow_add' => true,
            //     'allow_delete' => true,
            //     'by_reference' => true
            // ])
            ->add('motscles', EntityType::class, [
                'class' => MotCles::class,
                'multiple' => true
            ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}
