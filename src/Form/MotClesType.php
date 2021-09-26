<?php

namespace App\Form;

use App\Entity\Article;
use App\Entity\MotCles;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class MotClesType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nomMotCles')
            ->add('articles', EntityType::class, [
                'class' => Article::class,
                'choice_label' => 'titre',
                'multiple' => true
            ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => MotCles::class,
        ]);
    }
}
