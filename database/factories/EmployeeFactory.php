<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Employee>
 */
class EmployeeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        static $managerId = null;
        static $employeeCount = 0;

        $employeeCount++;

        if ($employeeCount === 1 || $employeeCount === 2) {
            $managerId = null;
        } else {
            $managerId = 2;
        }

        return [
            'name' => $this->faker->name,
            'start_date' => $this->faker->date(),
            'salary' => $this->faker->randomFloat(2, 30000, 80000),
            'manager_id' => $managerId,
            'is_founder' => $employeeCount === 1 ? 1 : 0,
        ];
    }
}
