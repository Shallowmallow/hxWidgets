package hx.widgets;

import wx.widgets.MultiChoiceDialog in WxMultiChoiceDialog;
import wx.widgets.WxString;

class MultiChoiceDialog extends Dialog {

    @:access(hx.widgets.ArrayString)
    public function new(parent:Window, message:String, caption:String = null, choices:Array<String> = null) {
        if (_ref == null) {
            if (message == null) {
                message = "";
            }
            if (caption == null) {
                caption = "";
            }
            if (choices == null) {
                choices = [];
            }
            var messageStr = WxString.createInstance(message);
            var captionStr = WxString.createInstance(caption);
            var choicesArr:ArrayString = ArrayString.fromArray(choices);
            _ref = WxMultiChoiceDialog.createInstance(Window.toRaw(parent), messageStr.ref, captionStr.ref, choicesArr._ref.ref).reinterpret();
            messageStr.destroy();
            captionStr.destroy();
            choicesArr.destroy();
        }

        super(parent);
    }

}
