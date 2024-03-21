<?php

namespace App\Services;

use App\Models\Employee;

class EmployeeSalaryService
{
    public function getEmployeeSalary(Employee $employee)
    {
        return $employee->salary;
    }

    public function getManagerSalary(Employee $employee)
    {
        if ($employee->manager_id) {
            $manager = Employee::find($employee->manager_id);
            return $manager->salary ?? null;
        }
        return null;
    }

    public function getFounderSalary()
    {
        $founder = Employee::where('is_founder', 1)->first();
        return $founder->salary ?? null;
    }

    public function getEmployeeManagerChainWithSalaries(Employee $employee)
    {
        $managers = [];

        while ($employee->manager_id) {
            $manager = Employee::find($employee->manager_id);
            if (!$manager) {
                break;
            }
            $managers[] = $manager;
            $employee = $manager;
        }

        return $managers;
    }
}
