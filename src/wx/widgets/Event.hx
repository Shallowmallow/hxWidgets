package wx.widgets;

import cpp.RawPointer;
import wx.widgets.Object in WxObject;

@:include("wx/event.h")
@:unreflective
@:native("wxEvent")
@:structAccess
extern class Event extends Object {

    @:native("GetEventType")        public function getEventType():Int;
    @:native("GetId")               public function getId():Int;
    @:native("GetEventObject")      public function getEventObject():RawPointer<WxObject>;
    @:native("Skip")                public function skip(skip:Bool = true):Void;
    @:native("StopPropagation")     public function stopPropagation():Void;

}
