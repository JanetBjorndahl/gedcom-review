
/**
 * 	Generated by mxmlc 2.0
 *
 *	Package:	org.werelate.comps
 *	Class: 		LivingCheckBox
 *	Source: 	/home/dallan/werelate/gedcom-review/src/org/werelate/comps/LivingCheckBox.mxml
 *	Template: 	flex2/compiler/mxml/gen/ClassDef.vm
 *	Time: 		2013.08.22 08:43:05 CDT
 */

package org.werelate.comps
{

import flash.accessibility.*;
import flash.debugger.*;
import flash.display.*;
import flash.errors.*;
import flash.events.*;
import flash.events.MouseEvent;
import flash.external.*;
import flash.filters.*;
import flash.geom.*;
import flash.media.*;
import flash.net.*;
import flash.printing.*;
import flash.profiler.*;
import flash.system.*;
import flash.text.*;
import flash.ui.*;
import flash.utils.*;
import flash.xml.*;
import mx.binding.*;
import mx.binding.IBindingClient;
import mx.containers.HBox;
import mx.controls.CheckBox;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.UIComponentDescriptor;
import mx.core.mx_internal;
import mx.styles.*;




public class LivingCheckBox
	extends mx.containers.HBox
	implements mx.binding.IBindingClient
{

/**
 * @private
 **/
	public var _LivingCheckBox_CheckBox1 : mx.controls.CheckBox;




private var _documentDescriptor_ : mx.core.UIComponentDescriptor = 
new mx.core.UIComponentDescriptor({
  type: mx.containers.HBox
  ,
  propertiesFactory: function():Object { return {
    childDescriptors: [
      new mx.core.UIComponentDescriptor({
        type: mx.controls.CheckBox
        ,
        id: "_LivingCheckBox_CheckBox1"
        ,
        events: {
          click: "___LivingCheckBox_CheckBox1_click"
        }
      })
    ]
  }}
})

    /**
     * @private
     **/
	public function LivingCheckBox()
	{
		super();

		mx_internal::_document = this;

		//	our style settings
		//	initialize component styles
		if (!this.styleDeclaration)
		{
			this.styleDeclaration = new CSSStyleDeclaration();
		}

		this.styleDeclaration.defaultFactory = function():void
		{
			this.horizontalAlign = "center";
		};



		//	properties
		this.percentWidth = 100.0;

		//	events

	}

    /**
     * @private
     **/
	override public function initialize():void
	{
 		mx_internal::setDocumentDescriptor(_documentDescriptor_);

		var bindings:Array = _LivingCheckBox_bindingsSetup();
		var watchers:Array = [];

		var target:LivingCheckBox = this;

		if (_watcherSetupUtil == null)
		{
			var watcherSetupUtilClass:Object = getDefinitionByName("_org_werelate_comps_LivingCheckBoxWatcherSetupUtil");
			watcherSetupUtilClass["init"](null);
		}

		_watcherSetupUtil.setup(this,
					function(propertyName:String):* { return target[propertyName]; },
					bindings,
					watchers);

		for (var i:uint = 0; i < bindings.length; i++)
		{
			Binding(bindings[i]).execute();
		}

		mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
		mx_internal::_watchers = mx_internal::_watchers.concat(watchers);


		super.initialize();
	}


		import org.werelate.controllers.MainController;
		import org.werelate.model.Model;
		
		[Bindable]
		[Autowire(bean="model")]
		public var model : Model;
		
		[Autowire(bean="mainController")]
		public var mc : MainController;
	



    //	supporting function definitions for properties, events, styles, effects
/**
 * @private
 **/
public function ___LivingCheckBox_CheckBox1_click(event:flash.events.MouseEvent):void
{
	mc.toggleLiving(data as XML)
}


	//	binding mgmt
    private function _LivingCheckBox_bindingsSetup():Array
    {
        var result:Array = [];
        var binding:Binding;

        binding = new mx.binding.Binding(this,
            function():Boolean
            {
                return (data.@living == 'true');
            },
            function(_sourceFunctionReturnValue:Boolean):void
            {
				
                _LivingCheckBox_CheckBox1.selected = _sourceFunctionReturnValue;
            },
            "_LivingCheckBox_CheckBox1.selected");
        result[0] = binding;
        binding = new mx.binding.Binding(this,
            function():Boolean
            {
                return (false);
            },
            function(_sourceFunctionReturnValue:Boolean):void
            {
				
                _LivingCheckBox_CheckBox1.enabled = _sourceFunctionReturnValue;
            },
            "_LivingCheckBox_CheckBox1.enabled");
        result[1] = binding;

        return result;
    }

    private function _LivingCheckBox_bindingExprs():void
    {
        var destination:*;
		[Binding(id='0')]
		destination = (data.@living == 'true');
		[Binding(id='1')]
		destination = (false);
    }

    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil):void
    {
        (LivingCheckBox)._watcherSetupUtil = watcherSetupUtil;
    }

    private static var _watcherSetupUtil:IWatcherSetupUtil;




    /**
     * @private
     **/
    mx_internal var _bindings : Array = [];
    /**
     * @private
     **/
    mx_internal var _watchers : Array = [];
    /**
     * @private
     **/
    mx_internal var _bindingsByDestination : Object = {};
    /**
     * @private
     **/
    mx_internal var _bindingsBeginWithWord : Object = {};

}

}
