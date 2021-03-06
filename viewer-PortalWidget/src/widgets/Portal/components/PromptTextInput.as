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
package widgets.Portal.components
{

import flash.events.FocusEvent;

import spark.components.TextInput;

public class PromptTextInput extends TextInput
{
    [SkinState("focused")]
    private var _promptText:String;
    protected var focused:Boolean;

    public function PromptTextInput()
    {
        super();
    }

    [Bindable]
    public function get promptText():String
    {
        return _promptText;
    }

    public function set promptText(value:String):void
    {
        _promptText = value;
    }

    override protected function partAdded(partName:String, instance:Object):void
    {
        super.partAdded(partName, instance);

        if (instance == this.textDisplay)
        {
            this.textDisplay.addEventListener(FocusEvent.FOCUS_IN, onFocusInHandler);
            this.textDisplay.addEventListener(FocusEvent.FOCUS_OUT, onFocusOutHandler);
        }
    }

    override protected function partRemoved(partName:String, instance:Object):void
    {
        super.partRemoved(partName, instance);

        if (instance == this.textDisplay)
        {
            this.textDisplay.removeEventListener(FocusEvent.FOCUS_IN, onFocusInHandler);
            this.textDisplay.removeEventListener(FocusEvent.FOCUS_OUT, onFocusOutHandler);
        }
    }

    override protected function getCurrentSkinState():String
    {
        if (focused)
        {
            return "focused";
        }

        else
        {
            return super.getCurrentSkinState();
        }
    }

    private function onFocusInHandler(event:FocusEvent):void
    {
        focused = true;
        invalidateSkinState();
    }

    private function onFocusOutHandler(event:FocusEvent):void
    {
        focused = false;
        invalidateSkinState();
    }
}
}
