<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    
    <instantiate from="root/res/layout/activity_main.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="root/src/app_package/MVPActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <instantiate from="root/src/app_package/MVPPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />
    <instantiate from="root/src/app_package/MVPContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${contractName}.java" />
</recipe>
