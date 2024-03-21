<?php

namespace App\Services;

use App\Models\Employee;

class employeeManagerService
{
    public function getManagerChain(Employee $employee)
    {
        $managersChain = [];

        while ($employee->manager_id) {
            $manager = Employee::find($employee->manager_id);
            if (!$manager) {
                break;
            }
            $managersChain[] = $manager;
            $employee = $manager;
        }

        return $managersChain;
    }
}
