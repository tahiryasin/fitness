<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index(){
        return view('contact');
    }
    public function submitContact(Request $request){
        Contact::create($request->all());

        return back()->with(['success'=>'We received your query and will reply as soon as possible.']);
    }
}
