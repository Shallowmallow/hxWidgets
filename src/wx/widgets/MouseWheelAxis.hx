package wx.widgets;

@:include("wx/event.h")
extern enum abstract MouseWheelAxis(MouseWheelAxisImpl) {
    @:native("wxMOUSE_WHEEL_VERTICAL") var VERTICAL;
    @:native("wxMOUSE_WHEEL_HORIZONTAL") var HORIZONTAL;
}

@:include("wx/event.h")
@:native("cpp::Struct<wxMouseWheelAxis, cpp::EnumHandler>")
extern class MouseWheelAxisImpl {
}
