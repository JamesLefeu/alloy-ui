AUI.add("aui-form-combobox",function(a){var e=a.Lang,d=a.getClassName,f="combobox",b=d(f);var c=a.Component.create({NAME:f,ATTRS:{field:{},fieldWidget:{value:a.Textfield},node:{getter:function(){var g=this;if(g._field){return g._field.get("node");}}},icons:{value:["circle-triangle-b"],validator:e.isArray}},prototype:{renderUI:function(){var g=this;c.superclass.renderUI.call(g);g._renderField();g._renderIcons();},_renderField:function(){var g=this;var h=g.get("contentBox");var i=g.get("field");var j=g.get("fieldWidget");g._field=new j(i).render();h.appendChild(g._field.get("boundingBox"));},_renderIcons:function(){var g=this;var i=g.get("icons");if(i.length){var h=new a.Toolbar({children:i}).render(g.get("contentBox"));g.icons=h;}}}});a.Combobox=c;},"@VERSION@",{requires:["aui-form-textarea","aui-toolbar"],skinnable:true});