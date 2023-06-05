package hx.widgets;

import cpp.Pointer;
import wx.widgets.Locale;
import wx.widgets.App in WxApp;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class App extends AppConsole {
    private var _locale:Pointer<Locale>;
    
    public static var instance:App;
    
    public function new(setInstance:Bool = true) {
        _ref = WxApp.createInstance().reinterpret();
        if (setInstance) {
            instance = this;
            App.setInstance(this);
        }

        super();
        var systemLanguage = Locale.getSystemLanguage();
        if (systemLanguage != 1) {
            _locale = Locale.createInstance(systemLanguage);
        }
        //setCLocale();
    }

    public function init():Bool {
        Entry.start(Sys.args());
        return appRef.ptr.init();
    }

    public function run() {
        appRef.ptr.run();
    }

    public function exit() {
        _locale.destroy();
        appRef.ptr.exit();
        Entry.cleanup();
    }

    public static function setInstance(instance:App) {
        WxApp.setInstance(instance.appRef.get_raw());
    }

    public function setCLocale() {
        appRef.ptr.setCLocale();
    }
    
    public var topWindow(get, set):Window;
    private function get_topWindow():Window {
        var p = appRef.ptr.getTopWindow();
        var win:Window = new Window();
        win._ref = Pointer.fromRaw(p).reinterpret();
        return win;
    }
    private function set_topWindow(value:Window):Window {
        return value;
    }

    public var traits(get, null):AppTraits;
    @:access(hx.widgets.AppTraits)
    private function get_traits():AppTraits {
        var p = appRef.ptr.getTraits();
        var appTraits = new AppTraits();
        appTraits._ref = Pointer.fromRaw(p);
        return appTraits;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var appRef(get, null):Pointer<WxApp>;
    private function get_appRef():Pointer<WxApp> {
        return _ref.reinterpret();
    }
}
