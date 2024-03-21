<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\AuthController;
use App\Http\Middleware\ApiThrottleMiddleware;
use App\Http\Middleware\RateLimit;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Employee\EmployeeController;
use App\Http\Controllers\EmployeeJob\EmployeeJobController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::middleware('auth:sanctum')->post('/logout', [AuthController::class, 'logout']);


Route::middleware([ApiThrottleMiddleware::class])->group(function () {


        Route::get('/employee/export', [EmployeeController::class, 'exportEmployees']);
        Route::post('/employee/import', [EmployeeController::class, 'importEmployees']);
        Route::get('employee/{employee}/manager',  [EmployeeController::class, 'findManagers']);
        Route::get('employee/{employee}/salary',  [EmployeeController::class, 'salaries']);
        Route::get('employee/search', [EmployeeController::class, 'search']);

        /*Route::apiResource('employee', EmployeeController::class)->except(['index']);*/

        Route::controller( EmployeeController::class)->prefix('employee')
            ->group(function(){
            Route::post('/', 'store')->name('employee.store');
            Route::get('/{employee}', 'show')->name('employee.show');
            Route::post('/{employee}', 'update')->name('employee.update');
            Route::delete('/{employee}', 'destroy')->name('employee.destroy');
        });


        /*Route::apiResource('employeeJobs', EmployeeJobController::class)->except(['index']);*/

        Route::controller( EmployeeJobController::class)->prefix('employeeJobs')
        ->group(function(){
            Route::post('/store', 'store')->name('employeeJobs.store');
            Route::post('/update/{employeeJob}', 'update')->name('employeeJobs.update');
            Route::post('/delete/{employeeJob}', 'destroy')->name('employeeJobs.destroy');
        });

});




