<?php

namespace App\Entity;

use App\Repository\MotClesRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=MotClesRepository::class)
 */
class MotCles
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $nomMotCles;

    /**
     * @ORM\ManyToMany(targetEntity=Article::class, mappedBy="motscles", cascade={"persist", "remove"})
     */
    private $articles;

    public function __construct()
    {
        $this->articles = new ArrayCollection();
    }
    /////////////////////////////
    public function __toString()
    {
        return $this->nomMotCles;
    }

    ///////////////////////////////////
    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNomMotCles(): ?string
    {
        return $this->nomMotCles;
    }

    public function setNomMotCles(string $nomMotCles): self
    {
        $this->nomMotCles = $nomMotCles;

        return $this;
    }

    /**
     * @return Collection|Article[]
     */
    public function getArticles(): Collection
    {
        return $this->articles;
    }

    public function addArticle(Article $article): self
    {
        if (!$this->articles->contains($article)) {
            $this->articles[] = $article;
            $article->addMotscle($this);
        }

        return $this;
    }

    public function removeArticle(Article $article): self
    {
        if ($this->articles->removeElement($article)) {
            $article->removeMotscle($this);
        }

        return $this;
    }
}
