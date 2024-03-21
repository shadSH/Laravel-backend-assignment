<?php

namespace App\Rules;

use App\Models\Employee;
use Closure;
use Illuminate\Contracts\Validation\Rule;
use Illuminate\Contracts\Validation\ValidationRule;

class MaxFounders implements Rule
{
    /**
     * Run the validation rule.
     *
     * @param  \Closure(string): \Illuminate\Translation\PotentiallyTranslatedString  $fail
     */
    public function passes($attribute, $value)
    {
        $foundersCount = Employee::where('is_founder', true)->count();
        $maxFoundersLimit = 1;

        // If the employee being created is designated as a founder,
        // then check if the number of founders is less than the maximum limit.
        if ($value) {
            return $foundersCount < $maxFoundersLimit;
        }

        return true;
    }

    public function message()
    {
        return 'Only one persons can be designated as founders.';
    }
}
