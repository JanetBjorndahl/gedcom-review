
/**
 * 	Generated by mxmlc 2.0
 *
 *	Package:	org.werelate.comps
 *	Class: 		WLHDialog
 *	Source: 	/home/dallan/werelate/gedcom-review/src/org/werelate/comps/WLHDialog.mxml
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
import mx.containers.TitleWindow;
import mx.controls.Button;
import mx.controls.Label;
import mx.controls.List;
import mx.controls.Spacer;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexDisplayObject;
import mx.core.IPropertyChangeNotifier;
import mx.core.UIComponentDescriptor;
import mx.core.mx_internal;
import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.styles.*;




public class WLHDialog
	extends mx.containers.TitleWindow
	implements mx.binding.IBindingClient
{

	[Bindable]
/**
 * @private
 **/
	public var cancelButton : mx.controls.Button;

	[Bindable]
/**
 * @private
 **/
	public var referencesDataGrid : mx.controls.List;




private var _documentDescriptor_ : mx.core.UIComponentDescriptor = 
new mx.core.UIComponentDescriptor({
  type: mx.containers.TitleWindow
  ,
  propertiesFactory: function():Object { return {
    childDescriptors: [
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Label
        ,
        stylesFactory: function():void {
          this.fontSize = 12;
        }
        ,
        propertiesFactory: function():Object { return {
          text: "Click on a person or family to see their page",
          percentWidth: 100.0
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.controls.List
        ,
        id: "referencesDataGrid"
        ,
        events: {
          click: "__referencesDataGrid_click"
        }
        ,
        propertiesFactory: function():Object { return {
          horizontalScrollPolicy: "off",
          verticalScrollPolicy: "auto",
          height: 100,
          width: 600,
          labelFunction: getPersonFamilyName
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.containers.HBox
        ,
        stylesFactory: function():void {
          this.paddingLeft = 10;
          this.paddingRight = 10;
          this.paddingTop = 3;
          this.paddingBottom = 2;
          this.horizontalAlign = "center";
        }
        ,
        propertiesFactory: function():Object { return {
          percentWidth: 100.0,
          childDescriptors: [
            new mx.core.UIComponentDescriptor({
              type: mx.controls.Spacer
              ,
              propertiesFactory: function():Object { return {
                percentWidth: 100.0
              }}
            })
          ,
            new mx.core.UIComponentDescriptor({
              type: mx.controls.Button
              ,
              id: "cancelButton"
              ,
              events: {
                click: "__cancelButton_click"
              }
              ,
              propertiesFactory: function():Object { return {
                label: "Cancel"
              }}
            })
          ]
        }}
      })
    ]
  }}
})

    /**
     * @private
     **/
	public function WLHDialog()
	{
		super();

		mx_internal::_document = this;

		//	our style settings



		//	properties
		this.layout = "vertical";
		this.title = "Referencing people and families";
		this.horizontalScrollPolicy = "off";
		this.verticalScrollPolicy = "off";
		this.showCloseButton = true;
		this.percentWidth = 100.0;
		this.percentHeight = 100.0;

		//	events
		this.addEventListener("close", ___WLHDialog_TitleWindow1_close);
		this.addEventListener("creationComplete", ___WLHDialog_TitleWindow1_creationComplete);

	}

    /**
     * @private
     **/
	override public function initialize():void
	{
 		mx_internal::setDocumentDescriptor(_documentDescriptor_);

		var bindings:Array = _WLHDialog_bindingsSetup();
		var watchers:Array = [];

		var target:WLHDialog = this;

		if (_watcherSetupUtil == null)
		{
			var watcherSetupUtilClass:Object = getDefinitionByName("_org_werelate_comps_WLHDialogWatcherSetupUtil");
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


		import org.werelate.controllers.WLHController;
		import org.werelate.model.ModelUtils;
		import org.werelate.controllers.UnlinkController;
		import mx.core.Application;
		import mx.managers.PopUpManager;
		import mx.collections.ArrayCollection;

		[Autowire]
		public var wc:WLHController;
		[Autowire]
		public var mu : ModelUtils;
		
		[Bindable]
		private var references:ArrayCollection;
		
		public function init(references:ArrayCollection):void {
			this.references = references;
		}
		
		private function onCreationComplete():void {
			cancelButton.setFocus();
		} 
		
		public function show():void {
			PopUpManager.addPopUp(this, DisplayObject(Application.application), true);
			PopUpManager.centerPopUp(this);
		}
		
		private function getPersonFamilyName(pf:XML):String {
			return mu.getPersonFamilyName(pf);
		}
		
		private function onClick(data:Object):void {
			if (data != null) {
				hide();
				wc.goto(data as XML);
			}
		}
		
		private function cancel():void {
			hide();
			wc.goto(null);
		}
		
		private function hide():void {
			PopUpManager.removePopUp(this);
		}
	



    //	supporting function definitions for properties, events, styles, effects
/**
 * @private
 **/
public function ___WLHDialog_TitleWindow1_close(event:mx.events.CloseEvent):void
{
	cancel();
}

/**
 * @private
 **/
public function ___WLHDialog_TitleWindow1_creationComplete(event:mx.events.FlexEvent):void
{
	onCreationComplete()
}

/**
 * @private
 **/
public function __referencesDataGrid_click(event:flash.events.MouseEvent):void
{
	onClick(referencesDataGrid.selectedItem)
}

/**
 * @private
 **/
public function __cancelButton_click(event:flash.events.MouseEvent):void
{
	cancel()
}


	//	binding mgmt
    private function _WLHDialog_bindingsSetup():Array
    {
        var result:Array = [];
        var binding:Binding;

        binding = new mx.binding.Binding(this,
            function():mx.core.IFlexDisplayObject
            {
                return (cancelButton);
            },
            function(_sourceFunctionReturnValue:mx.core.IFlexDisplayObject):void
            {
				
                this.defaultButton = _sourceFunctionReturnValue;
            },
            "this.defaultButton");
        result[0] = binding;
        binding = new mx.binding.Binding(this,
            function():Object
            {
                return (references);
            },
            function(_sourceFunctionReturnValue:Object):void
            {
				
                referencesDataGrid.dataProvider = _sourceFunctionReturnValue;
            },
            "referencesDataGrid.dataProvider");
        result[1] = binding;

        return result;
    }

    private function _WLHDialog_bindingExprs():void
    {
        var destination:*;
		[Binding(id='0')]
		destination = (cancelButton);
		[Binding(id='1')]
		destination = (references);
    }

    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil):void
    {
        (WLHDialog)._watcherSetupUtil = watcherSetupUtil;
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
