## Template
Activity模板，快速创建项目。

#### AdvertiseActivity
轮播广告activity
#### CardViewPageActivity
底部卡片轮播activity
#### SplashActivity
启动屏activity
#### TabsActivity
首页卡片切换activity
#### WelcomeGuideActivity
欢迎页activity
#### MVPActivity
快速创建MVPActivity
#### MVPFragment
快速创建MVPFragment

## 使用方法
将模板放入Android Studio安装路径/plugins/android/lib/templates/activities下面，然后重启Android Studio。</br>
选择New——Activity——Gallery 就可以看到我们添加的activity模板了。</br>
重装Android Studio之后自定义的插件需要重新导入。

## 注意
MVPActivity和MVPFragment包引入部分是根据我们公司的项目路径的，所以不一定都适用（需要的提Issue，我给你定制），fragmentMVP的联动还有一点小问题，目前只能通过修改Fragment Name来实现，layout是不行的。
