package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.Object in WxObject;
import wx.widgets.Event in WxEvent;

@:access(hx.widgets.Object)
class Event {

    private var _ref:Pointer<WxEvent>;

    public function new() {

    }

    public var eventType(get, null):Int;
    private function get_eventType():Int {
        return _ref.ptr.getEventType();
    }

    public var id(get, null):Int;
    private function get_id():Int {
        return _ref.ptr.getId();
    }

    public function skip(skip:Bool = true) {
        _ref.ptr.skip(skip);
    }

    public function stopPropagation() {
        _ref.ptr.stopPropagation();
    }

    public function isEventObject(object:Object):Bool {
        if (object == null || object._ref == null) {
            return false;
        }
        var eventObject:RawPointer<WxObject> = _ref.ptr.getEventObject();
        var expectedObject:RawPointer<WxObject> = object._ref.rawCast();
        return eventObject == expectedObject;
    }

    public function convertTo<T>(clz:Class<T>):T {
        var event:T = Type.createInstance(clz, []);
        cast(event, Event)._ref = _ref;
        return event;
    }

    public static function fromPointer(ptr:Pointer<WxEvent>):Event {
        var event:Event = new Event();
        event._ref = ptr;
        return event;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var eventRef(get, null):Pointer<WxEvent>;
    private function get_eventRef():Pointer<WxEvent> {
        return _ref.reinterpret();
    }
}
