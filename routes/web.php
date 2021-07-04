<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/* Auth Routes */

    Route::get('/login', 'authController@loginView');
    Route::post('/login', 'authController@loginAttempt');
    Route::get('/logout', 'authController@logout');

    Route::middleware('adminAuth')->group(function(){

        Route::get('/', 'authController@dashboardView');
        
        Route::prefix('users')->group(function(){

            Route::get('/', 'authController@users');
            Route::get('Add', 'authController@addUser');
            Route::get('delete/{id}', 'authController@deleteUser');
            Route::get('edit/{id}', 'authController@editUser');
            Route::get('inactive/{id}', 'authController@inactiveUser');
            Route::get('active/{id}', 'authController@activeUser');

            Route::post('insert', 'authController@insertUser');
            Route::post('update', 'authController@updateUser');
        });


        /* Database Routes */

            Route::prefix('database')->group(function(){

                /* Country */
                    Route::get('country', 'databaseController@viewCountry');
                    Route::get('country/add', 'databaseController@addCountry');
                    Route::get('country/delete/{id}', 'databaseController@deleteCountry');
                    Route::get('country/edit/{id}', 'databaseController@editCountry');

                    Route::post('country/insert', 'databaseController@insertCountry');
                    Route::post('country/update', 'databaseController@updateCountry');

                /* City */
                    Route::get('city', 'databaseController@viewCity');
                    Route::get('city/add', 'databaseController@addCity');
                    Route::get('city/delete/{id}', 'databaseController@deleteCity');
                    Route::get('/database/city/edit/{id}', 'databaseController@editCity');

                    Route::post('city/insert', 'databaseController@insertcity');
                    Route::post('city/update', 'databaseController@updatecity');


                /* Foreign Agent */
                    Route::get('foreignAgent', 'databaseController@viewForeignAgent');
                    Route::get('foreignAgent/add', 'databaseController@addForeignAgent');
                    Route::get('foreignAgent/delete/{id}', 'databaseController@deleteForeignAgent');
                    Route::get('foreignAgent/edit/{id}', 'databaseController@editForeignAgent');

                    Route::post('foreignAgent/insert', 'databaseController@insertForeignAgent');
                    Route::post('foreignAgent/update', 'databaseController@updateForeignAgent');


                /* Importer */
                    Route::get('importer', 'databaseController@viewImporter');
                    Route::get('importer/add', 'databaseController@addImporter');
                    Route::get('importer/delete/{id}', 'databaseController@deleteImporter');
                    Route::get('importer/edit/{id}', 'databaseController@editImporter');

                    Route::post('importer/insert', 'databaseController@insertImporter');
                    Route::post('importer/update', 'databaseController@updateImporter');


                /* Sale Person */
                    Route::get('saleperson', 'databaseController@viewSalePerson');
                    Route::get('saleperson/add', 'databaseController@addSalePerson');
                    Route::get('saleperson/delete/{id}', 'databaseController@deleteSalePerson');
                    Route::get('saleperson/edit/{id}', 'databaseController@editSalePerson');

                    Route::post('saleperson/insert', 'databaseController@insertSalePerson');
                    Route::post('saleperson/update', 'databaseController@updateSalePerson');


                /* Terminal */
                    Route::get('terminal', 'databaseController@viewTerminal');
                    Route::get('terminal/add', 'databaseController@addTerminal');
                    Route::get('terminal/delete/{id}', 'databaseController@deleteTerminal');
                    Route::get('terminal/edit/{id}', 'databaseController@editTerminal');

                    Route::post('terminal/insert', 'databaseController@insertTerminal');
                    Route::post('terminal/update', 'databaseController@updateTerminal');
            });




        /* Data Load */

            Route::prefix('load')->group(function(){
                Route::get('terminal', 'loadController@terminal');
                Route::get('country', 'loadController@country');
                Route::get('city', 'loadController@city');
                Route::get('importer', 'loadController@importer');
                Route::get('saleperson', 'loadController@saleperson');
                Route::get('foreignAgent', 'loadController@foreignAgent');
            });




        /* Settings */
            Route::prefix('settings')->group(function(){
                
                /* Shipping License */
                    Route::prefix('companies')->group(function(){

                        Route::get('/', 'settingController@viewCompanies');
                        Route::get('add', 'settingController@addCompany');
                        Route::get('delete/{id}', 'settingController@deleteCompany');
                        Route::get('edit/{id}', 'settingController@editCompany');

                        Route::post('insert', 'settingController@insertCompany');
                        Route::post('update', 'settingController@updateCompany');
                    });
            });

    });