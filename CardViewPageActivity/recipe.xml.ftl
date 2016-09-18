<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
	
   <#if (buildApi gte 22) && appCompat && !(hasDependency('com.android.support:cardview-v7'))>
	    <dependency mavenUrl="com.android.support:cardview-v7:${buildApi}.+" />
	</#if>
		
	 <merge from="root/res/values/themes.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/styles.xml" />
			 
    <instantiate from="root/src/app_package/CardViewPageActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <instantiate from="root/res/layout/activity_card_viewpage.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
     <instantiate from="root/res/layout/item_card.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/item_card.xml" />
	<instantiate from="root/src/app_package/CommonPageAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/adapter/CommonPageAdapter.java" />
	<instantiate from="root/src/app_package/DensityUtil.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/tools/DensityUtil.java" />
				   
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	<open file="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml"/>
	
</recipe>
