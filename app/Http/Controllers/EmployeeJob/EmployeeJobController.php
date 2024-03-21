<?php

namespace App\Http\Controllers\EmployeeJob;

use App\Http\Controllers\Controller;
use App\Http\Requests\Emmployee\UpdateEmployeeRequest;
use App\Http\Requests\EmployeeJob\StoreEmployeeJobRequest;
use App\Http\Requests\EmployeeJob\UpdateEmployeeJobRequest;
use App\Models\EmployeeJob;
use Illuminate\Http\Request;

class EmployeeJobController extends Controller
{
    public function store(StoreEmployeeJobRequest $request)
    {
        $validatedData = $request->validated();

        EmployeeJob::create($validatedData);

        return jsonResponse(message: 'Employee job created successfully');

    }//end of store

    public function update(UpdateEmployeeJobRequest $request, EmployeeJob $employeeJob)
    {
        $validatedData = $request->validated();

        $employeeJob->update($validatedData);

        return jsonResponse(message: 'Employee job updated successfully');

    }//end of update

    public function destroy(EmployeeJob $employeeJob)
    {
        $employeeJob->delete();

        return jsonResponse(message: 'Employee job deleted successfully');

    }//end of destroy


}
