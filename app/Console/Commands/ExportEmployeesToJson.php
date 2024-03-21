<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Employee;

class ExportEmployeesToJson extends Command
{
    protected $signature = 'employees:export-json {filename=employees.json}';
    protected $description = 'Exports all employees to a JSON file.';

    public function handle()
    {
        $filename = $this->argument('filename');
        $employees = Employee::all();

        file_put_contents($filename, $employees->toJson(JSON_PRETTY_PRINT));
        $this->info("All employees have been exported to $filename.");
    }
}
