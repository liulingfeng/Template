<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
	
    <instantiate from="root/src/app_package/MainActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <instantiate from="root/res/layout/activity_main.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
	<instantiate from="root/res/layout/advertise_layout.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/advertise_layout.xml" />
	<instantiate from="root/src/app_package/CommonPageAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/adapter/CommonPageAdapter.java" />
	<instantiate from="root/src/app_package/DensityUtil.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/tools/DensityUtil.java" />
	<instantiate from="root/src/app_package/ScreenUtil.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/tools/ScreenUtil.java" />
	<instantiate from="root/src/app_package/AdvertiseView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/AdvertiseView.java" />
				   
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	<open file="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml"/>
	
	<copy from="root/res/drawable"
                to="${escapeXmlAttribute(resOut)}/drawable" />
	<copy from="root/res/drawable-hdpi"
                to="${escapeXmlAttribute(resOut)}/drawable-xhdpi" />
</recipe>
