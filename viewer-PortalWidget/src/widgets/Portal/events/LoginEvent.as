/*
//////////////////////////////////////////////////////////////////
// Copyright (c) 2008-2013 Esri. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
////////////////////////////////////////////////////////////////
*/
package widgets.Portal.events
{

import flash.events.Event;

public class LoginEvent extends Event
{
    public static const LOGIN_PROVIDED:String = "loginProvided";
    public static const LOGIN_CANCELLED:String = "loginCancelled";

    public var username:String;
    public var password:String;

    public function LoginEvent(user:String, pword:String, type:String, bubbles:Boolean = false, cancelable:Boolean = false)
    {
        super(type, bubbles, cancelable);

        this.username = user;
        this.password = pword;
    }
}
}