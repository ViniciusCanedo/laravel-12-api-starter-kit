<?php

declare(strict_types=1);

namespace App\Console\Commands;

use Exception;
use Illuminate\Console\Command;

final class VersionUpdateCommand extends Command
{
    protected $signature = 'version:update';

    protected $description = 'Cria uma tag e atualiza o arquivo VERSION';

    public function handle(): int
    {
        $tag = '';

        do {
            try {
                /** @var string $tag */
                $tag = $this->ask('Digite a tag (ex: 1.2.0)');

                if (empty($tag)) {
                    throw new Exception('A tag não pode estar vazia.');
                }
                if (! preg_match('/^\d+\.\d+\.\d+$/', $tag)) {
                    throw new Exception('Formato inválido. Use X.Y.Z');
                }

                $valid = true;
            } catch (Exception $e) {
                $this->error($e->getMessage());
                $valid = false;
            }
        } while (! $valid);

        exec("git tag $tag", $output, $returnVar);

        if ($returnVar !== 0) {
            $this->error('Erro ao criar a tag.');

            return 1;
        }

        $versionFile = base_path('VERSION');
        file_put_contents($versionFile, $tag);

        $this->info("Tag {$tag} criada e VERSION atualizado.");

        return 0;
    }
}
