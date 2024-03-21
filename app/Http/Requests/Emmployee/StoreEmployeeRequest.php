<?php

namespace App\Http\Requests\Emmployee;

use App\Rules\MaxFounders;
use App\Rules\NoManagerForFounder;
use App\Rules\NotFounderManager;
use Illuminate\Foundation\Http\FormRequest;

class StoreEmployeeRequest extends FormRequest
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
            'name' => ['required', 'string', 'max:255'],
            'start_date' => ['required', 'date'],
            'salary' => ['required', 'numeric'],
            'manager_id' => ['numeric','nullable','exists:employees,id', new NotFounderManager,new NoManagerForFounder], // Custom validation rules  noFounderManager  are used for founder can't be manager, and noManagerForFounder is used for founder can't have manager
            'is_founder' => ['required', 'boolean', new MaxFounders], // Custom validation rule maxFounders is used for maximum 1 founders
        ];
    }
}
