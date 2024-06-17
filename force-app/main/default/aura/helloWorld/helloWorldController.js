({
	doInit : function(component, event, helper) {
		alert("Component Ready!!!");
	},
    handleChangeWhom : function(component, event, helper) {
        alert("Input Change: '" + component.get("v.whom"));
	},
    handleChangeInput : function(component, event, helper) {
        component.set("v.whom", event.currentTarget.value);
	},
    handleClickButton : function(component, event, helper) {
        helper.sayHi(component.get("v.whom"));
	},
})