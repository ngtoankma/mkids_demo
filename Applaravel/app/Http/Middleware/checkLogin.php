<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;

use Closure;

class checkLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::check())
        {
            $User=Auth::user();
            if($User->status==0 && $User->is_delete==0)
                return $next($request);
            else
            return redirect('admin/login');
    }
    else{
        return redirect('admin/login');
    }
    }
}
