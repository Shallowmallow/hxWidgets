package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("wxMouseEvent")
@:structAccess
extern class MouseEvent extends Event implements MouseState {
    @:native("GetX")               public function getX():Int;
    @:native("GetY")               public function getY():Int;
    @:native("GetWheelRotation")   public function getWheelRotation():Int;
    @:native("GetWheelDelta")      public function getWheelDelta():Int;
    @:native("GetLinesPerAction")  public function getLinesPerAction():Int;
    @:native("GetColumnsPerAction") public function getColumnsPerAction():Int;
    @:native("GetWheelAxis")       public function getWheelAxis():MouseWheelAxis;
    @:native("IsPageScroll")       public function isPageScroll():Bool;
    @:native("ShiftDown")          public function shiftDown():Bool;
    @:native("ControlDown")        public function controlDown():Bool;
    @:native("AltDown")            public function altDown():Bool;
    @:native("MetaDown")           public function metaDown():Bool;
}
