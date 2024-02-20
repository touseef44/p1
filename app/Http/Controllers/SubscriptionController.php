<?php

namespace App\Http\Controllers;

use App\Models\SubscriptionPlan;
use Illuminate\Http\Request;

class SubscriptionController extends Controller
{
    public function loadsubscription(){
        $plans = SubscriptionPlan::where('enabled',1)->get();
        return view('subscription',compact('plans'));
    }
}
