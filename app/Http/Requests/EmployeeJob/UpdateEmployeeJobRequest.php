<?php

namespace App\Http\Requests\EmployeeJob;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdateEmployeeJobRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'title' => 'required|string',
            'description' => 'nullable|string',
            'employee_id' => [
                'required',
                'exists:employees,id',
                'unique:employee_jobs,employee_id',
                Rule::unique('employee_jobs')->ignore($this->employeeJob->id),
            ],
        ];
    }
}
