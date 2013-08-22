
package 
{

import flash.display.Sprite;
import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;
import mx.styles.CSSStyleDeclaration;
import mx.styles.StyleManager;
import mx.skins.halo.ButtonBarButtonSkin;

[ExcludeClass]

public class _ButtonBarButtonStyle
{

    public static function init(fbs:IFlexModuleFactory):void
    {
        var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("ButtonBarButton");
    
        if (!style)
        {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("ButtonBarButton", style, false);
        }
    
        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = null;
                this.selectedDownSkin = null;
                this.overSkin = null;
                this.downSkin = null;
                this.selectedDisabledSkin = null;
                this.selectedUpSkin = null;
                this.disabledSkin = null;
                this.horizontalGap = 1;
                this.skin = mx.skins.halo.ButtonBarButtonSkin;
                this.selectedOverSkin = null;
            };
        }
    }
}

}
