<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;

class RemoveLogFiles extends Command
{
    protected $signature = 'logs:clear-files';
    protected $description = 'Removes all log files from the storage/logs directory.';

    public function handle()
    {
        $logFiles = File::files(storage_path('logs'));

        foreach ($logFiles as $file) {
            File::delete($file);
        }

        $this->info('All log files have been removed.');
    }
}
