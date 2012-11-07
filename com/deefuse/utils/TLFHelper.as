package com.deefuse.utils{

    import flash.display.*;
    import flash.events.*;

    import flash.text.*;
    import flash.text.engine.*;
    import fl.text.*;

    public class TLFHelper{

        public static function fixEditableRightAligned(obj:TLFTextField){
            var _shape  :Shape;
            var _sprite :Sprite;
            var _button :SimpleButton;
            var _line   :TextLine;

            var i:int;

            for(i = 0; i < obj.numChildren; i++){
                if(obj.getChildAt(i) is Shape && !_shape){
                    _shape = obj.getChildAt(i) as Shape;
                }else if(obj.getChildAt(i) is Sprite){
                    _sprite = obj.getChildAt(i) as Sprite;
                }
            }

            for(i = 0; i < _sprite.numChildren; i++){
                if(_sprite.getChildAt(i) is TextLine){
                    _line = _sprite.getChildAt(i) as TextLine;
                }
                if(_sprite.getChildAt(i) is SimpleButton){
                    _button = _sprite.getChildAt(i) as SimpleButton;
                }
            }

            _button.hitTestState.x = - _button.hitTestState.width
        }

    }

}