
/**
 * 	Generated by mxmlc 2.0
 *
 *	Package:	org.werelate.comps
 *	Class: 		WarningsPrint
 *	Source: 	/home/dallan/werelate/gedcom-review/src/org/werelate/comps/WarningsPrint.mxml
 *	Template: 	flex2/compiler/mxml/gen/ClassDef.vm
 *	Time: 		2013.08.22 08:43:04 CDT
 */

package org.werelate.comps
{

import flash.accessibility.*;
import flash.debugger.*;
import flash.display.*;
import flash.errors.*;
import flash.events.*;
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
import mx.containers.VBox;
import mx.controls.Label;
import mx.controls.dataGridClasses.DataGridColumn;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.UIComponentDescriptor;
import mx.core.mx_internal;
import mx.printing.PrintDataGrid;
import mx.styles.*;




public class WarningsPrint
	extends mx.containers.VBox
	implements mx.binding.IBindingClient
{

/**
 * @private
 **/
	public var _WarningsPrint_Label1 : mx.controls.Label;

	[Bindable]
/**
 * @private
 **/
	public var myDataGrid : mx.printing.PrintDataGrid;




private var _documentDescriptor_ : mx.core.UIComponentDescriptor = 
new mx.core.UIComponentDescriptor({
  type: mx.containers.VBox
  ,
  propertiesFactory: function():Object { return {
    childDescriptors: [
      new mx.core.UIComponentDescriptor({
        type: mx.containers.VBox
        ,
        stylesFactory: function():void {
          this.horizontalAlign = "left";
        }
        ,
        propertiesFactory: function():Object { return {
          percentWidth: 80.0,
          childDescriptors: [
            new mx.core.UIComponentDescriptor({
              type: mx.controls.Label
              ,
              id: "_WarningsPrint_Label1"
            })
          ]
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.printing.PrintDataGrid
        ,
        id: "myDataGrid"
        ,
        stylesFactory: function():void {
          this.fontSize = 10;
          this.paddingBottom = 0;
        }
        ,
        propertiesFactory: function():Object { return {
          percentWidth: 100.0,
          percentHeight: 100.0,
          wordWrap: true,
          columns: [_WarningsPrint_DataGridColumn1_c(), _WarningsPrint_DataGridColumn2_c(), _WarningsPrint_DataGridColumn3_c()]
        }}
      })
    ]
  }}
})

    /**
     * @private
     **/
	public function WarningsPrint()
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
			this.backgroundColor = 16777215;
			this.paddingTop = 50;
			this.paddingBottom = 50;
			this.paddingLeft = 50;
			this.paddingRight = 50;
		};



		//	properties

		//	events

	}

    /**
     * @private
     **/
	override public function initialize():void
	{
 		mx_internal::setDocumentDescriptor(_documentDescriptor_);

		var bindings:Array = _WarningsPrint_bindingsSetup();
		var watchers:Array = [];

		var target:WarningsPrint = this;

		if (_watcherSetupUtil == null)
		{
			var watcherSetupUtilClass:Object = getDefinitionByName("_org_werelate_comps_WarningsPrintWatcherSetupUtil");
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


            import mx.core.*

            import org.werelate.model.ModelUtils;

            [Bindable]
            [Autowire]
            public var mu : ModelUtils;
            private function getWarningPersonFamilyName(warn:XML, column:DataGridColumn):String {
               return mu.getPersonFamilyName(mu.getWarningPersonFamily(warn));
            }

            private function getWarningLevel(warn:XML, column:DataGridColumn):String {
               return mu.getWarningLevelDesc(warn);
            }

            // Declare and initialize the variables used in the component.
            // The application sets the actual prodTotal value.
            [Bindable]
            public var pageNumber:Number = 1;
        



    //	supporting function definitions for properties, events, styles, effects
private function _WarningsPrint_DataGridColumn1_c() : mx.controls.dataGridClasses.DataGridColumn
{
	var temp : mx.controls.dataGridClasses.DataGridColumn = new mx.controls.dataGridClasses.DataGridColumn();
	temp.headerText = "Level";
	temp.labelFunction = getWarningLevel;
	temp.width = 50;
	temp.setStyle("fontSize", 9);
	return temp;
}

private function _WarningsPrint_DataGridColumn2_c() : mx.controls.dataGridClasses.DataGridColumn
{
	var temp : mx.controls.dataGridClasses.DataGridColumn = new mx.controls.dataGridClasses.DataGridColumn();
	temp.headerText = "Person/Family";
	temp.labelFunction = getWarningPersonFamilyName;
	temp.wordWrap = true;
	temp.setStyle("fontSize", 9);
	return temp;
}

private function _WarningsPrint_DataGridColumn3_c() : mx.controls.dataGridClasses.DataGridColumn
{
	var temp : mx.controls.dataGridClasses.DataGridColumn = new mx.controls.dataGridClasses.DataGridColumn();
	temp.headerText = "Description";
	temp.dataField = "@warning";
	temp.wordWrap = true;
	temp.setStyle("fontSize", 9);
	return temp;
}


	//	binding mgmt
    private function _WarningsPrint_bindingsSetup():Array
    {
        var result:Array = [];
        var binding:Binding;

        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = "Page " + (pageNumber);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _WarningsPrint_Label1.text = _sourceFunctionReturnValue;
            },
            "_WarningsPrint_Label1.text");
        result[0] = binding;

        return result;
    }

    private function _WarningsPrint_bindingExprs():void
    {
        var destination:*;
		[Binding(id='0')]
		destination = "Page " + (pageNumber);
    }

    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil):void
    {
        (WarningsPrint)._watcherSetupUtil = watcherSetupUtil;
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
