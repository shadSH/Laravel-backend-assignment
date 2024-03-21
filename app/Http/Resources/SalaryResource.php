<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class SalaryResource extends JsonResource
{

    private $employee;
    private $manager;
    private $founder;

    /**
     * Create a new resource instance.
     */
    public function __construct($employee, $manager, $founder)
    {
        parent::__construct($employee);
        $this->employee = $employee;
        $this->manager = $manager;
        $this->founder = $founder;
    }
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'founder' => [
                'name' => $this->founder ? $this->founder->name : null,
                'salary' => $this->founder ? $this->founder->salary : null,
                'started date' => $this->founder ? $this->founder->start_date : null,
            ],
            'manager' => [
                'name' => $this->manager ? $this->manager->name : null,
                'salary' => $this->manager ? $this->manager->salary : null,
                'started date' => $this->manager ? $this->manager->start_date : null,
            ],
            'employee' => [
                'name' => $this->employee->name,
                'salary' => $this->employee->salary,
                'started date' => $this->employee ? $this->employee->start_date : null,
            ],


        ];
    }
}
