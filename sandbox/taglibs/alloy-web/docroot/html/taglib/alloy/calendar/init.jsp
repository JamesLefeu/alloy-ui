<%--
/**
 * Copyright (c) 2000-2011 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/html/taglib/init-taglib.jsp" %>

<%
java.lang.String NAMESPACE = "alloy:calendar:";

Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("alloy:calendar:dynamicAttributes");
Map<String, Object> scopedAttributes = (Map<String, Object>)request.getAttribute("alloy:calendar:scopedAttributes");
CustomAttributes customAttributes = (CustomAttributes)request.getAttribute("alloy:calendar:customAttributes");

Map<String, Object> _options = new HashMap<String, Object>();

_options.putAll(scopedAttributes);
_options.putAll(dynamicAttributes);

%>

<%@ include file="/html/taglib/alloy/init-alloy.jsp" %>

<%
java.util.HashMap align = _getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:calendar:align"), "{ node: null, points: [ TL, BL ] }"));
java.lang.Object calendarBodyContent = (java.lang.Object)request.getAttribute("alloy:calendar:calendarBodyContent");
java.lang.Boolean cancellableHide = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:calendar:cancellableHide"), true);
java.lang.Object centered = (java.lang.Object)request.getAttribute("alloy:calendar:centered");
java.lang.Object constrain = (java.lang.Object)request.getAttribute("alloy:calendar:constrain");
java.lang.String cssClass = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:calendar:cssClass"));
java.lang.Number currentDay = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:calendar:currentDay")), 0);
java.lang.Number currentMonth = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:calendar:currentMonth")), 0);
java.lang.Object currentNode = (java.lang.Object)request.getAttribute("alloy:calendar:currentNode");
java.lang.Number currentYear = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:calendar:currentYear")), 0);
java.lang.String dateFormat = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:calendar:dateFormat"), "%m/%d/%Y");
java.util.ArrayList dates = _getArrayList(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:calendar:dates")));
java.lang.Boolean destroyed = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:calendar:destroyed"), false);
java.lang.Boolean disabled = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:calendar:disabled"), false);
java.lang.Object fillHeight = (java.lang.Object)request.getAttribute("alloy:calendar:fillHeight");
java.lang.Number firstDayOfWeek = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:calendar:firstDayOfWeek")), 0);
java.lang.Boolean focused = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:calendar:focused"), false);
java.lang.Object footerContent = (java.lang.Object)request.getAttribute("alloy:calendar:footerContent");
java.lang.Object headerContent = (java.lang.Object)request.getAttribute("alloy:calendar:headerContent");
java.lang.Object height = (java.lang.Object)request.getAttribute("alloy:calendar:height");
java.lang.String hideClass = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:calendar:hideClass"), "aui-helper-hidden");
java.lang.Number hideDelay = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:calendar:hideDelay")), 0);
java.lang.String hideOn = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:calendar:hideOn"), "mouseout");
java.lang.Boolean hideOnDocumentClick = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:calendar:hideOnDocumentClick"), true);
java.lang.String calendarId = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:calendar:calendarId"));
java.lang.Boolean initialized = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:calendar:initialized"), false);
java.lang.Object maxDate = (java.lang.Object)request.getAttribute("alloy:calendar:maxDate");
java.lang.Object minDate = (java.lang.Object)request.getAttribute("alloy:calendar:minDate");
java.lang.Boolean preventOverlap = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:calendar:preventOverlap"), false);
java.lang.Object render = (java.lang.Object)request.getAttribute("alloy:calendar:render");
java.lang.Boolean rendered = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:calendar:rendered"), false);
java.lang.Boolean selectMultipleDates = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:calendar:selectMultipleDates"), false);
java.lang.Boolean setValue = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:calendar:setValue"), true);
java.lang.Boolean shim = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:calendar:shim"), false);
java.lang.Number showDelay = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:calendar:showDelay")), 0);
java.lang.String showOn = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:calendar:showOn"), "mouseover");
java.lang.Boolean stack = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:calendar:stack"), true);
java.util.HashMap strings = _getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:calendar:strings")));
java.lang.Number tabIndex = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:calendar:tabIndex")), 0);
java.lang.Object trigger = (java.lang.Object)request.getAttribute("alloy:calendar:trigger");
java.lang.Boolean visible = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:calendar:visible"), false);
java.lang.Object width = (java.lang.Object)request.getAttribute("alloy:calendar:width");
java.lang.Number x = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:calendar:x")), 0);
java.util.ArrayList xy = _getArrayList(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:calendar:xy"), "[0,0]"));
java.lang.Number y = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:calendar:y")), 0);
java.lang.Number zIndex = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:calendar:zIndex")), 0);
java.lang.Object afterAlignChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterAlignChange");
java.lang.Object afterBodyContentChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterBodyContentChange");
java.lang.Object afterBoundingBoxChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterBoundingBoxChange");
java.lang.Object afterCancellableHideChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterCancellableHideChange");
java.lang.Object afterCenteredChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterCenteredChange");
java.lang.Object afterConstrainChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterConstrainChange");
java.lang.Object afterContentBoxChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterContentBoxChange");
java.lang.Object afterCssClassChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterCssClassChange");
java.lang.Object afterCurrentDayChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterCurrentDayChange");
java.lang.Object afterCurrentMonthChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterCurrentMonthChange");
java.lang.Object afterCurrentNodeChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterCurrentNodeChange");
java.lang.Object afterCurrentYearChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterCurrentYearChange");
java.lang.Object afterDateFormatChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterDateFormatChange");
java.lang.Object afterDatesChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterDatesChange");
java.lang.Object afterDestroy = (java.lang.Object)request.getAttribute("alloy:calendar:afterDestroy");
java.lang.Object afterDestroyedChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterDestroyedChange");
java.lang.Object afterDisabledChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterDisabledChange");
java.lang.Object afterFillHeightChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterFillHeightChange");
java.lang.Object afterFirstDayOfWeekChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterFirstDayOfWeekChange");
java.lang.Object afterFocusedChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterFocusedChange");
java.lang.Object afterFooterContentChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterFooterContentChange");
java.lang.Object afterHeaderContentChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterHeaderContentChange");
java.lang.Object afterHeightChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterHeightChange");
java.lang.Object afterHideClassChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterHideClassChange");
java.lang.Object afterHideDelayChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterHideDelayChange");
java.lang.Object afterHideOnChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterHideOnChange");
java.lang.Object afterHideOnDocumentClickChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterHideOnDocumentClickChange");
java.lang.Object afterIdChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterIdChange");
java.lang.Object afterInit = (java.lang.Object)request.getAttribute("alloy:calendar:afterInit");
java.lang.Object afterInitializedChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterInitializedChange");
java.lang.Object afterMaxDateChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterMaxDateChange");
java.lang.Object afterMinDateChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterMinDateChange");
java.lang.Object afterPreventOverlapChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterPreventOverlapChange");
java.lang.Object afterRenderChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterRenderChange");
java.lang.Object afterRenderedChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterRenderedChange");
java.lang.Object afterSelectMultipleDatesChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterSelectMultipleDatesChange");
java.lang.Object afterSetValueChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterSetValueChange");
java.lang.Object afterShimChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterShimChange");
java.lang.Object afterShowDelayChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterShowDelayChange");
java.lang.Object afterShowOnChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterShowOnChange");
java.lang.Object afterSrcNodeChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterSrcNodeChange");
java.lang.Object afterStackChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterStackChange");
java.lang.Object afterStringsChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterStringsChange");
java.lang.Object afterTabIndexChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterTabIndexChange");
java.lang.Object afterTriggerChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterTriggerChange");
java.lang.Object afterVisibleChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterVisibleChange");
java.lang.Object afterContentUpdate = (java.lang.Object)request.getAttribute("alloy:calendar:afterContentUpdate");
java.lang.Object afterRender = (java.lang.Object)request.getAttribute("alloy:calendar:afterRender");
java.lang.Object afterWidthChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterWidthChange");
java.lang.Object afterXChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterXChange");
java.lang.Object afterXyChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterXyChange");
java.lang.Object afterYChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterYChange");
java.lang.Object afterZIndexChange = (java.lang.Object)request.getAttribute("alloy:calendar:afterZIndexChange");
java.lang.Object onAlignChange = (java.lang.Object)request.getAttribute("alloy:calendar:onAlignChange");
java.lang.Object onBodyContentChange = (java.lang.Object)request.getAttribute("alloy:calendar:onBodyContentChange");
java.lang.Object onBoundingBoxChange = (java.lang.Object)request.getAttribute("alloy:calendar:onBoundingBoxChange");
java.lang.Object onCancellableHideChange = (java.lang.Object)request.getAttribute("alloy:calendar:onCancellableHideChange");
java.lang.Object onCenteredChange = (java.lang.Object)request.getAttribute("alloy:calendar:onCenteredChange");
java.lang.Object onConstrainChange = (java.lang.Object)request.getAttribute("alloy:calendar:onConstrainChange");
java.lang.Object onContentBoxChange = (java.lang.Object)request.getAttribute("alloy:calendar:onContentBoxChange");
java.lang.Object onCssClassChange = (java.lang.Object)request.getAttribute("alloy:calendar:onCssClassChange");
java.lang.Object onCurrentDayChange = (java.lang.Object)request.getAttribute("alloy:calendar:onCurrentDayChange");
java.lang.Object onCurrentMonthChange = (java.lang.Object)request.getAttribute("alloy:calendar:onCurrentMonthChange");
java.lang.Object onCurrentNodeChange = (java.lang.Object)request.getAttribute("alloy:calendar:onCurrentNodeChange");
java.lang.Object onCurrentYearChange = (java.lang.Object)request.getAttribute("alloy:calendar:onCurrentYearChange");
java.lang.Object onDateFormatChange = (java.lang.Object)request.getAttribute("alloy:calendar:onDateFormatChange");
java.lang.Object onDatesChange = (java.lang.Object)request.getAttribute("alloy:calendar:onDatesChange");
java.lang.Object onDestroy = (java.lang.Object)request.getAttribute("alloy:calendar:onDestroy");
java.lang.Object onDestroyedChange = (java.lang.Object)request.getAttribute("alloy:calendar:onDestroyedChange");
java.lang.Object onDisabledChange = (java.lang.Object)request.getAttribute("alloy:calendar:onDisabledChange");
java.lang.Object onFillHeightChange = (java.lang.Object)request.getAttribute("alloy:calendar:onFillHeightChange");
java.lang.Object onFirstDayOfWeekChange = (java.lang.Object)request.getAttribute("alloy:calendar:onFirstDayOfWeekChange");
java.lang.Object onFocusedChange = (java.lang.Object)request.getAttribute("alloy:calendar:onFocusedChange");
java.lang.Object onFooterContentChange = (java.lang.Object)request.getAttribute("alloy:calendar:onFooterContentChange");
java.lang.Object onHeaderContentChange = (java.lang.Object)request.getAttribute("alloy:calendar:onHeaderContentChange");
java.lang.Object onHeightChange = (java.lang.Object)request.getAttribute("alloy:calendar:onHeightChange");
java.lang.Object onHideClassChange = (java.lang.Object)request.getAttribute("alloy:calendar:onHideClassChange");
java.lang.Object onHideDelayChange = (java.lang.Object)request.getAttribute("alloy:calendar:onHideDelayChange");
java.lang.Object onHideOnChange = (java.lang.Object)request.getAttribute("alloy:calendar:onHideOnChange");
java.lang.Object onHideOnDocumentClickChange = (java.lang.Object)request.getAttribute("alloy:calendar:onHideOnDocumentClickChange");
java.lang.Object onIdChange = (java.lang.Object)request.getAttribute("alloy:calendar:onIdChange");
java.lang.Object onInit = (java.lang.Object)request.getAttribute("alloy:calendar:onInit");
java.lang.Object onInitializedChange = (java.lang.Object)request.getAttribute("alloy:calendar:onInitializedChange");
java.lang.Object onMaxDateChange = (java.lang.Object)request.getAttribute("alloy:calendar:onMaxDateChange");
java.lang.Object onMinDateChange = (java.lang.Object)request.getAttribute("alloy:calendar:onMinDateChange");
java.lang.Object onPreventOverlapChange = (java.lang.Object)request.getAttribute("alloy:calendar:onPreventOverlapChange");
java.lang.Object onRenderChange = (java.lang.Object)request.getAttribute("alloy:calendar:onRenderChange");
java.lang.Object onRenderedChange = (java.lang.Object)request.getAttribute("alloy:calendar:onRenderedChange");
java.lang.Object onSelectMultipleDatesChange = (java.lang.Object)request.getAttribute("alloy:calendar:onSelectMultipleDatesChange");
java.lang.Object onSetValueChange = (java.lang.Object)request.getAttribute("alloy:calendar:onSetValueChange");
java.lang.Object onShimChange = (java.lang.Object)request.getAttribute("alloy:calendar:onShimChange");
java.lang.Object onShowDelayChange = (java.lang.Object)request.getAttribute("alloy:calendar:onShowDelayChange");
java.lang.Object onShowOnChange = (java.lang.Object)request.getAttribute("alloy:calendar:onShowOnChange");
java.lang.Object onSrcNodeChange = (java.lang.Object)request.getAttribute("alloy:calendar:onSrcNodeChange");
java.lang.Object onStackChange = (java.lang.Object)request.getAttribute("alloy:calendar:onStackChange");
java.lang.Object onStringsChange = (java.lang.Object)request.getAttribute("alloy:calendar:onStringsChange");
java.lang.Object onTabIndexChange = (java.lang.Object)request.getAttribute("alloy:calendar:onTabIndexChange");
java.lang.Object onTriggerChange = (java.lang.Object)request.getAttribute("alloy:calendar:onTriggerChange");
java.lang.Object onVisibleChange = (java.lang.Object)request.getAttribute("alloy:calendar:onVisibleChange");
java.lang.Object onContentUpdate = (java.lang.Object)request.getAttribute("alloy:calendar:onContentUpdate");
java.lang.Object onRender = (java.lang.Object)request.getAttribute("alloy:calendar:onRender");
java.lang.Object onWidthChange = (java.lang.Object)request.getAttribute("alloy:calendar:onWidthChange");
java.lang.Object onXChange = (java.lang.Object)request.getAttribute("alloy:calendar:onXChange");
java.lang.Object onXyChange = (java.lang.Object)request.getAttribute("alloy:calendar:onXyChange");
java.lang.Object onYChange = (java.lang.Object)request.getAttribute("alloy:calendar:onYChange");
java.lang.Object onZIndexChange = (java.lang.Object)request.getAttribute("alloy:calendar:onZIndexChange");

_updateOptions(_options, "align", align);
_updateOptions(_options, "calendarBodyContent", calendarBodyContent);
_updateOptions(_options, "boundingBox", boundingBox);
_updateOptions(_options, "cancellableHide", cancellableHide);
_updateOptions(_options, "centered", centered);
_updateOptions(_options, "constrain", constrain);
_updateOptions(_options, "contentBox", contentBox);
_updateOptions(_options, "cssClass", cssClass);
_updateOptions(_options, "currentDay", currentDay);
_updateOptions(_options, "currentMonth", currentMonth);
_updateOptions(_options, "currentNode", currentNode);
_updateOptions(_options, "currentYear", currentYear);
_updateOptions(_options, "dateFormat", dateFormat);
_updateOptions(_options, "dates", dates);
_updateOptions(_options, "destroyed", destroyed);
_updateOptions(_options, "disabled", disabled);
_updateOptions(_options, "fillHeight", fillHeight);
_updateOptions(_options, "firstDayOfWeek", firstDayOfWeek);
_updateOptions(_options, "focused", focused);
_updateOptions(_options, "footerContent", footerContent);
_updateOptions(_options, "headerContent", headerContent);
_updateOptions(_options, "height", height);
_updateOptions(_options, "hideClass", hideClass);
_updateOptions(_options, "hideDelay", hideDelay);
_updateOptions(_options, "hideOn", hideOn);
_updateOptions(_options, "hideOnDocumentClick", hideOnDocumentClick);
_updateOptions(_options, "calendarId", calendarId);
_updateOptions(_options, "initialized", initialized);
_updateOptions(_options, "maxDate", maxDate);
_updateOptions(_options, "minDate", minDate);
_updateOptions(_options, "preventOverlap", preventOverlap);
_updateOptions(_options, "render", render);
_updateOptions(_options, "rendered", rendered);
_updateOptions(_options, "selectMultipleDates", selectMultipleDates);
_updateOptions(_options, "setValue", setValue);
_updateOptions(_options, "shim", shim);
_updateOptions(_options, "showDelay", showDelay);
_updateOptions(_options, "showOn", showOn);
_updateOptions(_options, "srcNode", srcNode);
_updateOptions(_options, "stack", stack);
_updateOptions(_options, "strings", strings);
_updateOptions(_options, "tabIndex", tabIndex);
_updateOptions(_options, "trigger", trigger);
_updateOptions(_options, "visible", visible);
_updateOptions(_options, "width", width);
_updateOptions(_options, "x", x);
_updateOptions(_options, "xy", xy);
_updateOptions(_options, "y", y);
_updateOptions(_options, "zIndex", zIndex);
_updateOptions(_options, "afterAlignChange", afterAlignChange);
_updateOptions(_options, "afterBodyContentChange", afterBodyContentChange);
_updateOptions(_options, "afterBoundingBoxChange", afterBoundingBoxChange);
_updateOptions(_options, "afterCancellableHideChange", afterCancellableHideChange);
_updateOptions(_options, "afterCenteredChange", afterCenteredChange);
_updateOptions(_options, "afterConstrainChange", afterConstrainChange);
_updateOptions(_options, "afterContentBoxChange", afterContentBoxChange);
_updateOptions(_options, "afterCssClassChange", afterCssClassChange);
_updateOptions(_options, "afterCurrentDayChange", afterCurrentDayChange);
_updateOptions(_options, "afterCurrentMonthChange", afterCurrentMonthChange);
_updateOptions(_options, "afterCurrentNodeChange", afterCurrentNodeChange);
_updateOptions(_options, "afterCurrentYearChange", afterCurrentYearChange);
_updateOptions(_options, "afterDateFormatChange", afterDateFormatChange);
_updateOptions(_options, "afterDatesChange", afterDatesChange);
_updateOptions(_options, "afterDestroy", afterDestroy);
_updateOptions(_options, "afterDestroyedChange", afterDestroyedChange);
_updateOptions(_options, "afterDisabledChange", afterDisabledChange);
_updateOptions(_options, "afterFillHeightChange", afterFillHeightChange);
_updateOptions(_options, "afterFirstDayOfWeekChange", afterFirstDayOfWeekChange);
_updateOptions(_options, "afterFocusedChange", afterFocusedChange);
_updateOptions(_options, "afterFooterContentChange", afterFooterContentChange);
_updateOptions(_options, "afterHeaderContentChange", afterHeaderContentChange);
_updateOptions(_options, "afterHeightChange", afterHeightChange);
_updateOptions(_options, "afterHideClassChange", afterHideClassChange);
_updateOptions(_options, "afterHideDelayChange", afterHideDelayChange);
_updateOptions(_options, "afterHideOnChange", afterHideOnChange);
_updateOptions(_options, "afterHideOnDocumentClickChange", afterHideOnDocumentClickChange);
_updateOptions(_options, "afterIdChange", afterIdChange);
_updateOptions(_options, "afterInit", afterInit);
_updateOptions(_options, "afterInitializedChange", afterInitializedChange);
_updateOptions(_options, "afterMaxDateChange", afterMaxDateChange);
_updateOptions(_options, "afterMinDateChange", afterMinDateChange);
_updateOptions(_options, "afterPreventOverlapChange", afterPreventOverlapChange);
_updateOptions(_options, "afterRenderChange", afterRenderChange);
_updateOptions(_options, "afterRenderedChange", afterRenderedChange);
_updateOptions(_options, "afterSelectMultipleDatesChange", afterSelectMultipleDatesChange);
_updateOptions(_options, "afterSetValueChange", afterSetValueChange);
_updateOptions(_options, "afterShimChange", afterShimChange);
_updateOptions(_options, "afterShowDelayChange", afterShowDelayChange);
_updateOptions(_options, "afterShowOnChange", afterShowOnChange);
_updateOptions(_options, "afterSrcNodeChange", afterSrcNodeChange);
_updateOptions(_options, "afterStackChange", afterStackChange);
_updateOptions(_options, "afterStringsChange", afterStringsChange);
_updateOptions(_options, "afterTabIndexChange", afterTabIndexChange);
_updateOptions(_options, "afterTriggerChange", afterTriggerChange);
_updateOptions(_options, "afterVisibleChange", afterVisibleChange);
_updateOptions(_options, "afterContentUpdate", afterContentUpdate);
_updateOptions(_options, "afterRender", afterRender);
_updateOptions(_options, "afterWidthChange", afterWidthChange);
_updateOptions(_options, "afterXChange", afterXChange);
_updateOptions(_options, "afterXyChange", afterXyChange);
_updateOptions(_options, "afterYChange", afterYChange);
_updateOptions(_options, "afterZIndexChange", afterZIndexChange);
_updateOptions(_options, "onAlignChange", onAlignChange);
_updateOptions(_options, "onBodyContentChange", onBodyContentChange);
_updateOptions(_options, "onBoundingBoxChange", onBoundingBoxChange);
_updateOptions(_options, "onCancellableHideChange", onCancellableHideChange);
_updateOptions(_options, "onCenteredChange", onCenteredChange);
_updateOptions(_options, "onConstrainChange", onConstrainChange);
_updateOptions(_options, "onContentBoxChange", onContentBoxChange);
_updateOptions(_options, "onCssClassChange", onCssClassChange);
_updateOptions(_options, "onCurrentDayChange", onCurrentDayChange);
_updateOptions(_options, "onCurrentMonthChange", onCurrentMonthChange);
_updateOptions(_options, "onCurrentNodeChange", onCurrentNodeChange);
_updateOptions(_options, "onCurrentYearChange", onCurrentYearChange);
_updateOptions(_options, "onDateFormatChange", onDateFormatChange);
_updateOptions(_options, "onDatesChange", onDatesChange);
_updateOptions(_options, "onDestroy", onDestroy);
_updateOptions(_options, "onDestroyedChange", onDestroyedChange);
_updateOptions(_options, "onDisabledChange", onDisabledChange);
_updateOptions(_options, "onFillHeightChange", onFillHeightChange);
_updateOptions(_options, "onFirstDayOfWeekChange", onFirstDayOfWeekChange);
_updateOptions(_options, "onFocusedChange", onFocusedChange);
_updateOptions(_options, "onFooterContentChange", onFooterContentChange);
_updateOptions(_options, "onHeaderContentChange", onHeaderContentChange);
_updateOptions(_options, "onHeightChange", onHeightChange);
_updateOptions(_options, "onHideClassChange", onHideClassChange);
_updateOptions(_options, "onHideDelayChange", onHideDelayChange);
_updateOptions(_options, "onHideOnChange", onHideOnChange);
_updateOptions(_options, "onHideOnDocumentClickChange", onHideOnDocumentClickChange);
_updateOptions(_options, "onIdChange", onIdChange);
_updateOptions(_options, "onInit", onInit);
_updateOptions(_options, "onInitializedChange", onInitializedChange);
_updateOptions(_options, "onMaxDateChange", onMaxDateChange);
_updateOptions(_options, "onMinDateChange", onMinDateChange);
_updateOptions(_options, "onPreventOverlapChange", onPreventOverlapChange);
_updateOptions(_options, "onRenderChange", onRenderChange);
_updateOptions(_options, "onRenderedChange", onRenderedChange);
_updateOptions(_options, "onSelectMultipleDatesChange", onSelectMultipleDatesChange);
_updateOptions(_options, "onSetValueChange", onSetValueChange);
_updateOptions(_options, "onShimChange", onShimChange);
_updateOptions(_options, "onShowDelayChange", onShowDelayChange);
_updateOptions(_options, "onShowOnChange", onShowOnChange);
_updateOptions(_options, "onSrcNodeChange", onSrcNodeChange);
_updateOptions(_options, "onStackChange", onStackChange);
_updateOptions(_options, "onStringsChange", onStringsChange);
_updateOptions(_options, "onTabIndexChange", onTabIndexChange);
_updateOptions(_options, "onTriggerChange", onTriggerChange);
_updateOptions(_options, "onVisibleChange", onVisibleChange);
_updateOptions(_options, "onContentUpdate", onContentUpdate);
_updateOptions(_options, "onRender", onRender);
_updateOptions(_options, "onWidthChange", onWidthChange);
_updateOptions(_options, "onXChange", onXChange);
_updateOptions(_options, "onXyChange", onXyChange);
_updateOptions(_options, "onYChange", onYChange);
_updateOptions(_options, "onZIndexChange", onZIndexChange);
%>

<%@ include file="init-ext.jsp" %>