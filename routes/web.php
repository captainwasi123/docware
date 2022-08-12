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
                    Route::prefix('country')->group(function(){
                        Route::get('/', 'databaseController@viewCountry');
                        Route::get('add', 'databaseController@addCountry');
                        Route::get('delete/{id}', 'databaseController@deleteCountry');
                        Route::get('edit/{id}', 'databaseController@editCountry');

                        Route::post('insert', 'databaseController@insertCountry');
                        Route::post('update', 'databaseController@updateCountry');
                    });

                /* City */
                    Route::prefix('city')->group(function(){

                        Route::get('/', 'databaseController@viewCity');
                        Route::get('add', 'databaseController@addCity');
                        Route::get('delete/{id}', 'databaseController@deleteCity');
                        Route::get('edit/{id}', 'databaseController@editCity');

                        Route::post('insert', 'databaseController@insertcity');
                        Route::post('update', 'databaseController@updatecity');
                    });


                /* Foreign Agent */
                    Route::prefix('foreignAgent')->group(function(){

                        Route::get('/', 'databaseController@viewForeignAgent');
                        Route::get('add', 'databaseController@addForeignAgent');
                        Route::get('delete/{id}', 'databaseController@deleteForeignAgent');
                        Route::get('edit/{id}', 'databaseController@editForeignAgent');

                        Route::post('insert', 'databaseController@insertForeignAgent');
                        Route::post('update', 'databaseController@updateForeignAgent');
                    });


                /* Importer */
                    Route::prefix('importer')->group(function(){

                        Route::get('/', 'databaseController@viewImporter');
                        Route::get('add', 'databaseController@addImporter');
                        Route::get('delete/{id}', 'databaseController@deleteImporter');
                        Route::get('edit/{id}', 'databaseController@editImporter');

                        Route::post('insert', 'databaseController@insertImporter');
                        Route::post('update', 'databaseController@updateImporter');
                    });


                /* Sale Person */
                    Route::prefix('saleperson')->group(function(){

                        Route::get('/', 'databaseController@viewSalePerson');
                        Route::get('add', 'databaseController@addSalePerson');
                        Route::get('delete/{id}', 'databaseController@deleteSalePerson');
                        Route::get('edit/{id}', 'databaseController@editSalePerson');

                        Route::post('insert', 'databaseController@insertSalePerson');
                        Route::post('update', 'databaseController@updateSalePerson');
                    });


                /* Terminal */
                    Route::prefix('terminal')->group(function(){

                        Route::get('/', 'databaseController@viewTerminal');
                        Route::get('add', 'databaseController@addTerminal');
                        Route::get('delete/{id}', 'databaseController@deleteTerminal');
                        Route::get('edit/{id}', 'databaseController@editTerminal');

                        Route::post('insert', 'databaseController@insertTerminal');
                        Route::post('update', 'databaseController@updateTerminal');
                    });
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
                        Route::get('add', 'settingController@addCompany')->name('settings.companies.add');
                        Route::get('delete/{id}', 'settingController@deleteCompany');
                        Route::get('edit/{id}', 'settingController@editCompany');

                        Route::post('insert', 'settingController@insertCompany')->name('settings.companies.insert');
                        Route::post('update', 'settingController@updateCompany');
                    });
            });

    });