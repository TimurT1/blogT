<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210922115407 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE article_mot_cles (article_id INT NOT NULL, mot_cles_id INT NOT NULL, INDEX IDX_95F260647294869C (article_id), INDEX IDX_95F26064855234A9 (mot_cles_id), PRIMARY KEY(article_id, mot_cles_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE article_mot_cles ADD CONSTRAINT FK_95F260647294869C FOREIGN KEY (article_id) REFERENCES article (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE article_mot_cles ADD CONSTRAINT FK_95F26064855234A9 FOREIGN KEY (mot_cles_id) REFERENCES mot_cles (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE article_mot_cles');
    }
}
