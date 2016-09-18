package ${packageName};

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;

/**
 * Created by llf on 2016/9/14.
 */
public class ${activityClass} extends Activity{
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayoutName});

        Handler x = new Handler();//定义一个handle对象
        x.postDelayed(new splashhandler(), 3000);
    }

    class splashhandler implements Runnable{
        public void run() {
            //在这里做一些初始化工作
            ${activityClass}.this.finish();
        }
    }
}
