<?php

use Illuminate\Support\Facades\Route;

// --------------------------
// Custom Backpack Routes
// --------------------------
// This route file is loaded automatically by Backpack\Base.
// Routes you generate using Backpack\Generators will be placed here.

Route::group([
    'prefix'     => config('backpack.base.route_prefix', 'admin'),
    'middleware' => array_merge(
        (array) config('backpack.base.web_middleware', 'web'),
        (array) config('backpack.base.middleware_key', 'admin')
    ),
    'namespace'  => 'App\Http\Controllers\Admin',
], function () { // custom admin routes
    Route::crud('class', 'ClassDetailCrudController');
    Route::crud('contact', 'ContactCrudController');
    Route::crud('time-table', 'TimeTableCrudController');
    Route::crud('issue', 'IssueCrudController');
    Route::crud('user-class', 'UserClassCrudController');
    Route::crud('class-trainer', 'ClassTrainerCrudController');
}); // this should be the absolute last line of this file