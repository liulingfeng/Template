我这边做了几个Activity的模板，方便快速创建

1.AdvertiseActivity 轮播广告activity
2.CardViewPageActivity 底部卡片轮播activity
3.SplashActivity 启动屏activity
4.TabsActivity 首页卡片切换activity
5.WelcomeGuideActivity 欢迎页activity
6.MVPActivity 快速创建MVPActivity
7.MVPFragment 快速创建MVPFragment

使用方法：
将模板放入Android Studio安装路径/plugins/android/lib/templates/activities下面，然后重启Android Studio
选择New——Activity——Gallery 就可以看到我们添加的activity模板了

MVPActivity和MVPFragment包引入部分是根据我们公司的项目路径的，所以不一定都适用，这两个我还要做下联动修改（类的命名联动已经加上，fragmentMVP的联动还有一点小问题，目前只能通过修改Fragment Name来实现，layout是不行的）。
