<?php

namespace App\Observers;

use App\Models\ActivityLog;
use App\Models\Employee;
use App\Notifications\SalaryChangedNotification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class EmployeeObserver
{
    public function created(Employee $employee)
    {
        $this->logChange('created', $employee);
    }

    public function updated(Employee $employee)
    {
        $this->logChange('updated', $employee, $employee->getOriginal());
        if ($employee->isDirty('salary')) {
            Log::debug('Attempting to send salary change notification.');
            $oldSalary = (float) $employee->getOriginal('salary');
            $newSalary = (float) $employee->salary;
            $employee->notify(new SalaryChangedNotification($oldSalary,$newSalary));
        }
    }

    public function deleted(Employee $employee)
    {
        $this->logChange('deleted', $employee);
    }

    protected function logChange($action, Employee $employee, $original = null)
    {
        $user = Auth::user();

        ActivityLog::create([
            'action' => 'update',
            'type' => Employee::class,
            'user_id' => auth()->user()->id ?? null,
            'old_values' => json_encode($employee->getOriginal()),
            'new_values' => json_encode($employee->getAttributes()),
        ]);

        Log::channel('employee')->info("$action employee", [
            'action' => $action,
            'type' => Employee::class,
            'user' => $user ? $user->id : null,
            'old' => $original,
            'new' => $employee->getAttributes(),
        ]);

    }
}
