<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
	
    <#if !appCompat && !(hasDependency('com.android.support:support-v4'))>
	        <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
	    </#if>
		
	<merge from="root/res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
	<merge from="root/res/values/colors.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
			 
    <instantiate from="root/src/app_package/WelcomeGuideActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <instantiate from="root/res/layout/activity_welcome_guide.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
	<instantiate from="root/src/app_package/CommonPageAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/adapter/CommonPageAdapter.java" />
	<instantiate from="root/src/app_package/DensityUtil.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/tools/DensityUtil.java" />
				   
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	<open file="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml"/>
	
	<copy from="root/res/drawable"
                to="${escapeXmlAttribute(resOut)}/drawable" />
	<copy from="root/res/drawable-hdpi"
                to="${escapeXmlAttribute(resOut)}/drawable-hdpi" />
</recipe>
