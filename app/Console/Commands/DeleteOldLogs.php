<?php

namespace App\Console\Commands;

use App\Models\ActivityLog;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class DeleteOldLogs extends Command
{
    protected $signature = 'logs:delete-old';
    protected $description = 'Deletes logs older than 1 month from the activity logs table.';

    public function handle()
    {
        $date = Carbon::now()->subMonth();
        $deletedRows = ActivityLog::query()->where('created_at', '<', $date)->delete();

        $this->info("$deletedRows logs deleted successfully.");
    }
}
