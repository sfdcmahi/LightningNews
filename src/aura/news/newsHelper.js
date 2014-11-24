({
	getNews : function(component) {
		var action = component.get("c.getNews");
        var that = this;
        action.setCallback(this,function(a) {
            component.set("v.newsList",a.getReturnValue());
        });
        $A.enqueueAction(action);
	},
})