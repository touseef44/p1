<?php

namespace App\Http\Controllers;

use App\Models\SubscriptionDetail;
use App\Models\SubscriptionPlan;
use Exception;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class SubscriptionController extends Controller
{
    public function loadsubscription(){
        $plans = SubscriptionPlan::where('enabled',1)->get();
        return view('subscription',compact('plans'));
    }

    public function getPlanDetails(Request $request){
      try{
          $planData = SubscriptionPlan::where('id',$request->id)->first();
          $haveAnyActivePlan=SubscriptionDetail::where(['user_id'=>auth()->user()->id, 'status'=>'active'])->count();

          if($haveAnyActivePlan == 0){

          }else{
            
          }





      }catch (Exception $e) {
        // Handle other exceptions
        return response()->json(['success' => 'false', 'msg'=>$e->getMessage()]);
    }
    }
}
