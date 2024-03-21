<?php

namespace App\Rules;

use App\Models\Employee;
use Closure;
use Illuminate\Contracts\Validation\Rule;
use Illuminate\Contracts\Validation\ValidationRule;

class NotFounderManager implements Rule
{
    /**
     * Run the validation rule.
     *
     * @param  \Closure(string): \Illuminate\Translation\PotentiallyTranslatedString  $fail
     */
    public function passes($attribute, $value)
    {
        // Check if the manager_id exists
        if (!$value) {
            return true; // If manager_id is null, validation passes
        }

        // Check if the employee designated as the manager is not a founder
        $isFounder = Employee::where('id', $value)->value('is_founder');
        return !$isFounder;
    }

    public function message()
    {
        return 'A founder cannot be assigned as a manager.';
    }
}
