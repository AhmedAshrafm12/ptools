<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class sp
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if(Auth('sanctum')->user()->account_type_id != 2)
        return apiresponse(false , 401 , __('auth.unAuthorized'));

        return $next($request);
    }
}
