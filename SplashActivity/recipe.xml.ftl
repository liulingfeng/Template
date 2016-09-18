<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
 
	<merge from="root/res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
			 
    <instantiate from="root/src/app_package/SplashActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <instantiate from="root/res/layout/activity_splash.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
		
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	<open file="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml"/>
	
	<copy from="root/res/drawable"
                to="${escapeXmlAttribute(resOut)}/drawable" />
</recipe>
