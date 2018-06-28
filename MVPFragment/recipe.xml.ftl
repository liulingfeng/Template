<?xml version="1.0"?>
<recipe> 
    <instantiate from="root/res/layout/fragment_main.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="root/src/app_package/MVPFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/fragment/${fragmentClass}.java" />
    <instantiate from="root/src/app_package/MVPPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${presenterName}.java" />
    <instantiate from="root/src/app_package/MVPContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/contract/${contractName}.java" />
</recipe>
