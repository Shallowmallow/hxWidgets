package hx.widgets;

import cpp.Pointer;
import wx.widgets.MouseEvent in WxMouseEvent;
import wx.widgets.Event in WxEvent;
import hx.widgets.MouseWheelAxis;

class MouseEvent extends Event implements MouseState {
    public var x(get, null):Int;
    public var y(get, null):Int;
    public var wheelRotation(get, null):Int;
    public var wheelDelta(get, null):Int;
    public var linesPerAction(get, null):Int;
    public var columnsPerAction(get, null):Int;
    public var wheelAxis(get, null):MouseWheelAxis;
    public var isPageScroll(get, null):Bool;
    public var shiftDown(get, null):Bool;
    public var controlDown(get, null):Bool;
    public var altDown(get, null):Bool;
    public var metaDown(get, null):Bool;

    private function get_x():Int {
        return mouseEventRef.ptr.getX();
    }

    private function get_y():Int {
        return mouseEventRef.ptr.getY();
    }

    private function get_wheelRotation():Int {
        return mouseEventRef.ptr.getWheelRotation();
    }

    private function get_wheelDelta():Int {
        return mouseEventRef.ptr.getWheelDelta();
    }

    private function get_linesPerAction():Int {
        return mouseEventRef.ptr.getLinesPerAction();
    }

    private function get_columnsPerAction():Int {
        return mouseEventRef.ptr.getColumnsPerAction();
    }

    private function get_wheelAxis():MouseWheelAxis {
        return mouseEventRef.ptr.getWheelAxis();
    }

    private function get_isPageScroll():Bool {
        return mouseEventRef.ptr.isPageScroll();
    }

    private function get_shiftDown():Bool {
        return mouseEventRef.ptr.shiftDown();
    }

    private function get_controlDown():Bool {
        return mouseEventRef.ptr.controlDown();
    }

    private function get_altDown():Bool {
        return mouseEventRef.ptr.altDown();
    }

    private function get_metaDown():Bool {
        return mouseEventRef.ptr.metaDown();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var mouseEventRef(get, null):Pointer<WxMouseEvent>;
    private function get_mouseEventRef():Pointer<WxMouseEvent> {
        return _ref.reinterpret();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // STATIC HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function fromPointer(ptr:Pointer<WxEvent>):Event {
        var event:MouseEvent = new MouseEvent();
        event._ref = ptr;
        return event;
    }

}
