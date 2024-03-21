<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Symfony\Component\Process\Process;
use Symfony\Component\Process\Exception\ProcessFailedException;

class ExportDatabase extends Command
{
    protected $signature = 'db:export {filename?}';
    protected $description = 'Exports the database to a SQL file.';

    public function handle()
    {
        $filename = $this->argument('filename') ?? 'database_backup.sql';

        $command = sprintf(
            'mysqldump --user=%s --password=%s --host=%s %s > %s',
            env('DB_USERNAME'),
            env('DB_PASSWORD'),
            env('DB_HOST'),
            env('DB_DATABASE'),
            $filename
        );

        $process = Process::fromShellCommandline($command);
        try {
            $process->mustRun();
            $this->info("The database has been exported to $filename successfully.");
        } catch (ProcessFailedException $exception) {
            $this->error('The database export process has failed.');
        }
    }
}
