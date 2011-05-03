AUI.add("aui-form-validator",function(x){var p=x.Lang,m=x.Object,z=p.isBoolean,I=p.isDate,D=m.isEmpty,y=p.isFunction,r=p.isObject,ag=p.isString,b=p.trim,N="-",H=".",u="",aa="form-validator",P="Invalid Date",R="|",j="blurHandlers",ak="checkbox",ap="container",i="containerErrorClass",v="containerValidClass",M="contentBox",X="error",e="errorClass",f="extractCssPrefix",d="extractRules",w="field",am="fieldContainer",s="fieldStrings",g="inputHandlers",af="message",a="messageContainer",Y="name",ad="radio",t="rules",n="selectText",al="showAllMessages",Q="showMessages",U="stack",q="stackErrorContainer",B="type",aj="valid",G="validateOnBlur",ac="validateOnInput",ab="validClass",ae="blur",W="errorField",ah="input",K="reset",E="submit",J="submitError",ai="validateField",F="validField",l=x.getClassName,ao=l(aa,X),V=l(aa,X,ap),h=l(aa,aj),k=l(aa,aj,ap),S=l(w),c=l(aa,af),C=l(aa,U,X),an='<div class="'+c+'"></div>',Z='<label class="'+C+'"></label>',o=[d,G,ac];YUI.AUI.defaults.FormValidator={STRINGS:{DEFAULT:"Please fix this field.",acceptFiles:"Please enter a value with a valid extension ({0}).",alpha:"Please enter only apha characters.",alphanum:"Please enter only aphanumeric characters.",date:"Please enter a valid date.",digits:"Please enter only digits.",email:"Please enter a valid email address.",equalTo:"Please enter the same value again.",max:"Please enter a value less than or equal to {0}.",maxLength:"Please enter no more than {0} characters.",min:"Please enter a value greater than or equal to {0}.",minLength:"Please enter at least {0} characters.",number:"Please enter a valid number.",range:"Please enter a value between {0} and {1}.",rangeLength:"Please enter a value between {0} and {1} characters long.",required:"This field is required.",url:"Please enter a valid URL."},REGEX:{alpha:/^[a-z_]+$/i,alphanum:/^\w+$/,digits:/^\d+$/,number:/^[+\-]?(\d+([.,]\d+)?)+$/,email:/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i,url:/^(https?|ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i},RULES:{acceptFiles:function(ar,O,aq){var L=null;if(ag(aq)){var A=aq.split(/,\s*|\b\s*/).join(R);L=new RegExp("[.]("+A+")$","i");}return L&&L.test(ar);},date:function(aq,L,O){var A=new Date(aq);return(I(A)&&(A!=P)&&!isNaN(A));},equalTo:function(aq,L,O){var A=x.one(O);return A&&(b(A.val())==aq);},max:function(O,A,L){return(T.toNumber(O)<=L);},maxLength:function(O,A,L){return(O.length<=L);},min:function(O,A,L){return(T.toNumber(O)>=L);},minLength:function(O,A,L){return(O.length>=L);},range:function(aq,L,O){var A=T.toNumber(aq);return(A>=O[0])&&(A<=O[1]);},rangeLength:function(aq,L,O){var A=aq.length;return(A>=O[0])&&(A<=O[1]);},required:function(at,aq,ar){var L=this;if(x.FormValidator.isCheckable(aq)){var O=aq.get(Y);var A=L.getElementsByName(O);return(A.filter(":checked").size()>0);}else{return !!at;}}}};var T=x.Component.create({NAME:aa,ATTRS:{containerErrorClass:{value:V,validator:ag},containerValidClass:{value:k,validator:ag},errorClass:{value:ao,validator:ag},extractCssPrefix:{value:S+N,validator:ag},extractRules:{value:true,validator:z},fieldContainer:{value:H+S},fieldStrings:{value:{},validator:r},messageContainer:{getter:function(A){return x.Node.create(A).clone();},value:an},render:{value:true},strings:{valueFn:function(){return YUI.AUI.defaults.FormValidator.STRINGS;}},rules:{validator:r,value:{}},selectText:{value:true,validator:z},showMessages:{value:true,validator:z},showAllMessages:{value:false,validator:z},stackErrorContainer:{getter:function(A){return x.Node.create(A).clone();},value:Z},validateOnBlur:{value:true,validator:z},validateOnInput:{value:false,validator:z},validClass:{value:h,validator:ag}},isCheckable:function(L){var A=L.get(B).toLowerCase();return(A==ak||A==ad);},toNumber:function(A){return parseFloat(A)||0;},EXTENDS:x.Widget,UI_ATTRS:o,prototype:{CONTENT_TEMPLATE:null,UI_EVENTS:{},initializer:function(){var A=this;A.blurHandlers=[];A.errors={};A.inputHandlers=[];A.stackErrorContainers={};},bindUI:function(){var A=this;A._createEvents();A._bindValidation();
},addFieldError:function(ar,O){var A=this;var aq=A.errors;var L=ar.get(Y);if(!aq[L]){aq[L]=[];}aq[L].push(O);},clearFieldError:function(L){var A=this;delete A.errors[L.get(Y)];},eachRule:function(L){var A=this;x.each(A.get(t),function(O,aq){if(y(L)){L.apply(A,[O,aq]);}});},findFieldContainer:function(L){var A=this;var O=A.get(am);if(O){return L.ancestor(O);}},focusInvalidField:function(){var A=this;var L=A.get(M);var O=L.one(H+ao);if(O){if(A.get(n)){O.selectText();}O.focus();}},getElementsByName:function(L){var A=this;return A.get(M).all('[name="'+L+'"]');},getField:function(L){var A=this;if(ag(L)){L=A.getElementsByName(L).item(0);}return L;},getFieldError:function(L){var A=this;return A.errors[L.get(Y)];},getFieldStackErrorContainer:function(aq){var A=this;var O=aq.get(Y);var L=A.stackErrorContainers;if(!L[O]){L[O]=A.get(q);}return L[O];},getFieldErrorMessage:function(at,ar){var au=this;var aw=at.get(Y);var O=au.get(s)[aw]||{};var aq=au.get(t)[aw];var av=au.getStrings();var A={};if(ar in aq){var L=x.Array(aq[ar]);x.each(L,function(az,ay){A[ay]=[az].join(u);});}var ax=(O[ar]||av[ar]||av.DEFAULT);return x.substitute(ax,A);},hasErrors:function(){var A=this;return !D(A.errors);},highlight:function(O,L){var A=this;var aq=A.findFieldContainer(O);A._highlightHelper(O,A.get(e),A.get(ab),L);A._highlightHelper(aq,A.get(i),A.get(v),L);},normalizeRuleValue:function(L){var A=this;return y(L)?L.apply(A):L;},unhighlight:function(L){var A=this;A.highlight(L,true);},printStackError:function(aq,L,O){var A=this;if(!A.get(al)){O=O.slice(0,1);}L.empty();x.each(O,function(at,ar){var au=A.getFieldErrorMessage(aq,at);var av=A.get(a).addClass(at);L.append(av.html(au));});},resetAllFields:function(){var A=this;A.eachRule(function(O,aq){var L=A.getField(aq);A.resetField(L);});},resetField:function(O){var A=this;var L=A.getFieldStackErrorContainer(O);L.remove();A.resetFieldCss(O);A.clearFieldError(O);},resetFieldCss:function(O){var L=this;var aq=L.findFieldContainer(O);var A=function(at,ar){if(at){x.each(ar,function(au){at.removeClass(L.get(au));});}};A(O,[ab,e]);A(aq,[v,i]);},validatable:function(O){var A=this;var ar=A.get(t)[O.get(Y)];var aq=A.normalizeRuleValue(ar.required);var L=YUI.AUI.defaults.FormValidator.RULES.required.apply(A,[O.val(),O]);return(aq||(!aq&&L));},validate:function(){var A=this;A.eachRule(function(L,O){A.validateField(O);});A.focusInvalidField();},validateField:function(aq){var A=this;var L=A.getField(aq);if(L){var O=A.validatable(L);A.resetField(L);if(O){A.fire(ai,{validator:{field:L}});}}},_bindValidation:function(){var A=this;var L=A.get(M);L.on(K,x.bind(A._onFormReset,A));L.on(E,x.bind(A._onFormSubmit,A));},_createEvents:function(){var A=this;var L=function(O,aq){A.publish(O,{defaultFn:aq});};L(W,A._defErrorFieldFn);L(F,A._defValidFieldFn);L(ai,A._defValidateFieldFn);},_defErrorFieldFn:function(aq){var A=this;var O=aq.validator;var ar=O.field;A.highlight(ar);if(A.get(Q)){var L=A.getFieldStackErrorContainer(ar);ar.placeBefore(L);A.printStackError(ar,L,O.errors);}},_defValidFieldFn:function(L){var A=this;var O=L.validator.field;A.unhighlight(O);},_defValidateFieldFn:function(L){var A=this;var aq=L.validator.field;var ar=A.get(t)[aq.get(Y)];x.each(ar,function(aw,au){var av=YUI.AUI.defaults.FormValidator.RULES[au];var at=b(aq.val());aw=A.normalizeRuleValue(aw);if(y(av)&&!av.apply(A,[at,aq,aw])){A.addFieldError(aq,au);}});var O=A.getFieldError(aq);if(O){A.fire(W,{validator:{field:aq,errors:O}});}else{A.fire(F,{validator:{field:aq}});}},_highlightHelper:function(aq,A,L,O){if(aq){if(O){aq.removeClass(A).addClass(L);}else{aq.removeClass(L).addClass(A);}}},_onBlurField:function(L){var A=this;var O=L.currentTarget.get(Y);A.validateField(O);},_onFieldInputChange:function(L){var A=this;A.validateField(L.currentTarget);},_onFormSubmit:function(L){var A=this;var O={validator:{formEvent:L}};A.validate();if(A.hasErrors()){O.validator.errors=A.errors;A.fire(J,O);L.halt();}else{A.fire(E,O);}},_onFormReset:function(L){var A=this;A.resetAllFields();},_bindValidateHelper:function(ar,L,aq,O){var A=this;A._unbindHandlers(O);if(ar){A.eachRule(function(au,av){var at=A.getElementsByName(av);A[O].push(at.on(L,x.bind(aq,A)));});}},_uiSetExtractRules:function(ar){var A=this;if(ar){var L=A.get(M);var aq=A.get(t);var O=A.get(f);x.each(YUI.AUI.defaults.FormValidator.RULES,function(av,au){var at=[H,O,au].join(u);L.all(at).each(function(aw){if(aw.get(B)){var ax=aw.get(Y);if(!aq[ax]){aq[ax]={};}if(!(au in aq[ax])){aq[ax][au]=true;}}});});}},_uiSetValidateOnInput:function(L){var A=this;A._bindValidateHelper(L,ah,A._onFieldInputChange,g);},_uiSetValidateOnBlur:function(L){var A=this;A._bindValidateHelper(L,ae,A._onBlurField,j);},_unbindHandlers:function(L){var A=this;x.each(A[L],function(O){O.detach();});A[L]=[];}}});x.each(YUI.AUI.defaults.FormValidator.REGEX,function(L,A){YUI.AUI.defaults.FormValidator.RULES[A]=function(ar,O,aq){return YUI.AUI.defaults.FormValidator.REGEX[A].test(ar);};});x.FormValidator=T;},"@VERSION@",{requires:["aui-base","aui-event-input","selector-css3","substitute"]});