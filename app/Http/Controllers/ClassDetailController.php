<?php

namespace App\Http\Controllers;

use App\Models\ClassDetail;
use App\Models\UserClass;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ClassDetailController extends Controller
{
    public function index(){
        return view('class');
    }
    public function book(ClassDetail $class){

        if(UserClass::where('user_id',backpack_user()->id)->where('class_id',backpack_user()->id)->count()){
            return back()->with(['success'=>'You booked this class already']);
        }
        $booking = new UserClass();

        $booking->user_id = backpack_user()->id;
        $booking->class_id = $class->id;
        $booking->date = Carbon::now();
        $booking->save();

        return back()->with(['success'=>'Booking Completed']);
    }
}
