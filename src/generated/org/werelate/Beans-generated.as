
/**
 * 	Generated by mxmlc 2.0
 *
 *	Package:	org.werelate
 *	Class: 		Beans
 *	Source: 	/home/dallan/werelate/gedcom-review/src/org/werelate/Beans.mxml
 *	Template: 	flex2/compiler/mxml/gen/ClassDef.vm
 *	Time: 		2013.08.22 08:43:04 CDT
 */

package org.werelate
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
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.styles.*;
import org.swizframework.util.BeanLoader;
import org.werelate.controllers.IncludeExclude;
import org.werelate.controllers.MainController;
import org.werelate.controllers.MatchAllController;
import org.werelate.controllers.ModelLoader;
import org.werelate.controllers.TipAlertController;
import org.werelate.controllers.UnlinkController;
import org.werelate.controllers.WLHController;
import org.werelate.model.Model;
import org.werelate.model.ModelUtils;
import org.werelate.services.SharedObjectService;
import org.werelate.services.WeRelateService;




public class Beans
	extends org.swizframework.util.BeanLoader
{

	[Bindable]
/**
 * @private
 **/
	public var includeExclude : org.werelate.controllers.IncludeExclude;

	[Bindable]
/**
 * @private
 **/
	public var mainController : org.werelate.controllers.MainController;

	[Bindable]
/**
 * @private
 **/
	public var matchAllController : org.werelate.controllers.MatchAllController;

	[Bindable]
/**
 * @private
 **/
	public var model : org.werelate.model.Model;

	[Bindable]
/**
 * @private
 **/
	public var modelLoader : org.werelate.controllers.ModelLoader;

	[Bindable]
/**
 * @private
 **/
	public var modelUtils : org.werelate.model.ModelUtils;

	[Bindable]
/**
 * @private
 **/
	public var sharedObjectService : org.werelate.services.SharedObjectService;

	[Bindable]
/**
 * @private
 **/
	public var tipAlertController : org.werelate.controllers.TipAlertController;

	[Bindable]
/**
 * @private
 **/
	public var unlinkController : org.werelate.controllers.UnlinkController;

	[Bindable]
/**
 * @private
 **/
	public var werelateService : org.werelate.services.WeRelateService;

	[Bindable]
/**
 * @private
 **/
	public var wlhController : org.werelate.controllers.WLHController;





    /**
     * @private
     **/
	public function Beans()
	{
	    super();


		//	our style settings



		//	properties
		_Beans_IncludeExclude1_i();
		_Beans_MainController1_i();
		_Beans_MatchAllController1_i();
		_Beans_Model1_i();
		_Beans_ModelLoader1_i();
		_Beans_ModelUtils1_i();
		_Beans_SharedObjectService1_i();
		_Beans_TipAlertController1_i();
		_Beans_UnlinkController1_i();
		_Beans_WeRelateService1_i();
		_Beans_WLHController1_i();

		//	events




	}



    //	supporting function definitions for properties, events, styles, effects
private function _Beans_IncludeExclude1_i() : org.werelate.controllers.IncludeExclude
{
	var temp : org.werelate.controllers.IncludeExclude = new org.werelate.controllers.IncludeExclude();
	includeExclude = temp;
	return temp;
}

private function _Beans_MainController1_i() : org.werelate.controllers.MainController
{
	var temp : org.werelate.controllers.MainController = new org.werelate.controllers.MainController();
	mainController = temp;
	return temp;
}

private function _Beans_MatchAllController1_i() : org.werelate.controllers.MatchAllController
{
	var temp : org.werelate.controllers.MatchAllController = new org.werelate.controllers.MatchAllController();
	matchAllController = temp;
	return temp;
}

private function _Beans_Model1_i() : org.werelate.model.Model
{
	var temp : org.werelate.model.Model = new org.werelate.model.Model();
	model = temp;
	return temp;
}

private function _Beans_ModelLoader1_i() : org.werelate.controllers.ModelLoader
{
	var temp : org.werelate.controllers.ModelLoader = new org.werelate.controllers.ModelLoader();
	modelLoader = temp;
	return temp;
}

private function _Beans_ModelUtils1_i() : org.werelate.model.ModelUtils
{
	var temp : org.werelate.model.ModelUtils = new org.werelate.model.ModelUtils();
	modelUtils = temp;
	return temp;
}

private function _Beans_SharedObjectService1_i() : org.werelate.services.SharedObjectService
{
	var temp : org.werelate.services.SharedObjectService = new org.werelate.services.SharedObjectService();
	sharedObjectService = temp;
	return temp;
}

private function _Beans_TipAlertController1_i() : org.werelate.controllers.TipAlertController
{
	var temp : org.werelate.controllers.TipAlertController = new org.werelate.controllers.TipAlertController();
	tipAlertController = temp;
	return temp;
}

private function _Beans_UnlinkController1_i() : org.werelate.controllers.UnlinkController
{
	var temp : org.werelate.controllers.UnlinkController = new org.werelate.controllers.UnlinkController();
	unlinkController = temp;
	return temp;
}

private function _Beans_WeRelateService1_i() : org.werelate.services.WeRelateService
{
	var temp : org.werelate.services.WeRelateService = new org.werelate.services.WeRelateService();
	werelateService = temp;
	return temp;
}

private function _Beans_WLHController1_i() : org.werelate.controllers.WLHController
{
	var temp : org.werelate.controllers.WLHController = new org.werelate.controllers.WLHController();
	wlhController = temp;
	return temp;
}







}

}
