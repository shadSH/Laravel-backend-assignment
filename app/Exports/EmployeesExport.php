<?php

namespace App\Exports;

use App\Models\Employee;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class EmployeesExport implements FromCollection, WithHeadings
{
    /**
     * Return a collection of all employees.
     *
     * @return \Illuminate\Support\Collection
     */
    public function collection()
    {
        return Employee::query()->select('id', 'name', 'start_date', 'salary')->get();
    }

    /**
     * Define the headings for the Excel file.
     *
     * @return array
     */
    public function headings(): array
    {
        return [
            'ID',
            'Name',
            'Start Date',
            'Salary',
        ];
    }
}
