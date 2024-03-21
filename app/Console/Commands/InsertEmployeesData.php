<?php

namespace App\Console\Commands;

use App\Models\Employee;
use Illuminate\Console\Command;
use Faker\Factory as Faker;

class InsertEmployeesData extends Command
{
    protected $signature = 'employees:insert {number=10}';
    protected $description = 'Inserts a given number of employees data with a progress bar';

    public function handle()
    {
        $number = $this->argument('number');
        $faker = Faker::create();

        $this->output->progressStart($number);

        for ($i = 0; $i < $number; $i++) {
            Employee::create([
                'name' => $faker->name,
                'title' => $faker->jobTitle,
                'start_date' => $faker->date,
                'salary' => $faker->numberBetween(30000, 100000),
                'manager_id' => null, // Assuming no manager for simplicity
                'is_founder' => false,
            ]);
            $this->output->progressAdvance();
        }

        $this->output->progressFinish();
        $this->info("Inserted $number employees data.");
    }
}
