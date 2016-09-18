<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
	
	<#if !appCompat && !(hasDependency('com.android.support:support-v4'))>
	        <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
	</#if>

	<#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
	       <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+" />
	</#if>

	<#if (buildApi gte 22) && appCompat && !(hasDependency('com.android.support:design'))>
	    <dependency mavenUrl="com.android.support:design:${buildApi}.+" />
	</#if>
		 
    <instantiate from="root/src/app_package/MainActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <instantiate from="root/res/layout/activity_main.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
	<instantiate from="root/res/layout/item_tab.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/item_tab.xml" />
	<instantiate from="root/src/app_package/FragmentAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/adapter/FragmentAdapter.java" />
	<instantiate from="root/src/app_package/TabOneFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/TabOneFragment.java" />
	<instantiate from="root/src/app_package/TabTwoFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/TabTwoFragment.java" />
    <instantiate from="root/src/app_package/TabThreeFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/TabThreeFragment.java" />
    <instantiate from="root/src/app_package/TabFourFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/TabFourFragment.java" />	
				   
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	<open file="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml"/>
	
	<copy from="root/res/drawable"
                to="${escapeXmlAttribute(resOut)}/drawable" />
	<copy from="root/res/drawable-hdpi"
                to="${escapeXmlAttribute(resOut)}/drawable-hdpi" />
	<copy from="root/res/color"
                to="${escapeXmlAttribute(resOut)}/color" />
</recipe>
