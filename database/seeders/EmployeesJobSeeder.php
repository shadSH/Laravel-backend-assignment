<?php

namespace Database\Seeders;

use App\Models\EmployeeJob;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class EmployeesJobSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        EmployeeJob::factory()->count(10)->create();
    }
}
