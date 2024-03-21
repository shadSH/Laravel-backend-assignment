<?php

namespace App\Rules;

use App\Models\Employee;
use Closure;
use Illuminate\Contracts\Validation\Rule;
use Illuminate\Contracts\Validation\ValidationRule;

class NoManagerForFounder implements Rule
{
    /**
     * Run the validation rule.
     *
     * @param  \Closure(string): \Illuminate\Translation\PotentiallyTranslatedString  $fail
     */
    public function passes($attribute, $value)
    {
        // Check if the employee is designated as a founder
        if ($value) {
            $isFounder = Employee::where('id', $value)->value('is_founder');
            return !$isFounder;
        }

        return true; // If manager_id is null, validation passes
    }

    public function message()
    {
        return 'A founder cannot have a manager.';
    }
}
