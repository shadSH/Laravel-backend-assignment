<?php

namespace Tests\Feature;

use App\Models\Employee;
use App\Models\EmployeeJob;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Http\Response;
use Tests\TestCase;

class EmployeeJobControllerTest extends TestCase
{
    public function test_store_employee_job()
    {
        $employee = Employee::factory()->create();
        $jobData = [
            'employee_id' => $employee->id,
            'title' => 'Software Developer',
            'description' => 'Develop software applications',
        ];

        $response = $this->post(route('employeeJobs.store'), $jobData);

        $response->assertStatus(Response::HTTP_OK);

        $response->assertJson([
            'message' => 'Employee job created successfully'
        ]);

    }

    public function test_update_employee_job()
    {
        $employeeJob = EmployeeJob::factory()->create();
        $employee = Employee::factory()->create();

        $updatedData = [
            'employee_id' => $employee->id,
            'title' => 'Updated Title',
            'description' => 'Updated description for the employee job',
        ];

        $response = $this->post(route('employeeJobs.update', ['employeeJob' => $employeeJob->id]), $updatedData);

        $response->assertStatus(Response::HTTP_OK);

        $response->assertJson([
            'message' => 'Employee job updated successfully'
        ]);

        $this->assertDatabaseHas('employee_jobs', $updatedData);
    }

    public function test_delete_employee()
    {
        $employeeJob = EmployeeJob::factory()->create();
        $response = $this->post(route('employeeJobs.destroy', ['employeeJob' => $employeeJob->id]));
        $response->assertStatus(Response::HTTP_OK);
    }
}
