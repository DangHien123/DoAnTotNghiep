<?php

use App\Http\Middleware\CheckLoginAdmin;
use App\Http\Middleware\CheckLoginUser;
use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {
        $middleware->alias([
            'check_admin_login' =>CheckLoginAdmin::class,
            'check_user_login'  =>CheckLoginUser::class,
            // 'Image' => Intervention\Image\Facades\Image::class
        ]);
    })
    ->withExceptions(function (Exceptions $exceptions) {
        //
    })->create();
