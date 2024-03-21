<?php

namespace Tests\Feature;

use App\Models\Employee;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Http\Response;
use Tests\TestCase;

class EmployeeControllerTest extends TestCase
{
    public function test_store_employee()
    {
        $employeeData = [
            'name' => 'John Doe',
            'start_date' => '2021-01-01',
            'salary' => 1000,
            'manager_id' => null,
            'is_founder' => 0
        ];

        $response = $this->post(route('employee.store'), $employeeData);


        $response->assertStatus(Response::HTTP_OK);

        $response->assertJson([
            'message' => 'Employee created successfully'
        ]);
   }

    public function test_update_employee()
    {
        $employee = Employee::factory()->create();

        $updatedData = [
            'name' => 'Updated Name',
            'start_date' => '2022-01-01',
            'salary' => 1500,
            'manager_id' => null,
            'is_founder' => 0
        ];

        $response = $this->post(route('employee.update', ['employee' => $employee->id]), $updatedData);

        $response->assertStatus(Response::HTTP_OK);

        $response->assertJson([
            'message' => 'Employee updated successfully'
        ]);

        $this->assertDatabaseHas('employees', $updatedData);
    }

    public function test_delete_employee()
    {
        $employee = Employee::factory()->create();
        $response = $this->delete(route('employee.destroy', ['employee' => $employee->id]));
        $response->assertStatus(Response::HTTP_OK);
    }
}
