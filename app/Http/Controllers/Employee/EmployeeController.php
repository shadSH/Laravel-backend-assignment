<?php

namespace App\Http\Controllers\Employee;

use App\Exports\EmployeesExport;
use App\Http\Controllers\Controller;
use App\Http\Requests\Emmployee\ImportEmployeeRequest;
use App\Http\Requests\Emmployee\StoreEmployeeRequest;
use App\Http\Requests\Emmployee\UpdateEmployeeRequest;
use App\Http\Resources\EmployeeResource;
use App\Http\Resources\ManagerResource;
use App\Http\Resources\SalaryResource;
use App\Models\Employee;
use App\Services\employeeManagerService;
use App\Services\EmployeeSalaryService;
use GuzzleHttp\Promise\Create;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Imports\EmployeesImport;

use Maatwebsite\Excel\Facades\Excel;
class EmployeeController extends Controller
{

    private $employeeManagerService;
    private $employeeSalaryService;

    public function __construct(
        EmployeeManagerService $employeeManagerService,
        EmployeeSalaryService $employeeSalaryService
    ) {
        $this->employeeManagerService = $employeeManagerService;
        $this->employeeSalaryService = $employeeSalaryService;
    }
    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreEmployeeRequest $request)
    {
        Employee::create([
            'name' => $request->name,
            'start_date' => $request->start_date,
            'salary' => $request->salary,
            'manager_id' => $request->manager_id,
            'is_founder' => $request->is_founder,

        ]);

        return jsonResponse(message: 'Employee created successfully');
    }//end store()

    /**
     * Display the specified resource.
     */
    public function show(Employee $employee)
    {
        $employees = Employee::all();
        return EmployeeResource::collection($employees);
    }//end show()



    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateEmployeeRequest $request, Employee $employee)
    {
        $employee->update([
            'name' => $request->name,
            'start_date' => $request->start_date,
            'salary' => $request->salary,
            'manager_id' => $request->manager_id,
            'is_founder' => $request->is_founder,
        ]);

        return jsonResponse(message: 'Employee updated successfully');
    }//end update()

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Employee $employee)
    {
        $employee->delete();

        return jsonResponse(message: 'Employee deleted successfully');
    }//end destroy()

    public function findManagers(Employee $employee)
    {
        $managersChain = $this->employeeManagerService->getManagerChain($employee);

        $founder = $managersChain[0] ?? null;
        $manager = $managersChain[count($managersChain) - 1] ?? null;
        $employeeName = $employee->name;

        return new ManagerResource((object) [
            'manager' => $manager,
            'founder' => $founder,
            'employee' => $employeeName,
        ]);
    }//end findManagers()


    public function salaries(Request $request, Employee $employee)
    {
        $manager = Employee::where('id', $employee->manager_id)->first();
        $founder = Employee::where('is_founder', 1)->first();

        return new SalaryResource($employee, $manager, $founder);
    }

    public function search(Request $request)
    {

        $query = Employee::query();

        if ($request->has('name')) {
            $query->where('name', 'like', '%' . $request->name . '%');
        }

        if ($request->has('salary')) {
            $query->where('salary', $request->salary);
        }

        $employees = $query->get();

        return EmployeeResource::collection($employees);
    }

    public function exportEmployees()
    {
        return Excel::download(new EmployeesExport, 'employees.csv');
    }



    public function importEmployees(ImportEmployeeRequest $request)
    {

        Excel::import(new EmployeesImport, $request->file('file'));

        return jsonResponse(message: 'Employees imported successfully');
    }


}
