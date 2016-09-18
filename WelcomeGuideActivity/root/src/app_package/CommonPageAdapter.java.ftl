package ${packageName}.adapter;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

/**
 * Created by llf on 2016/9/12.
 */
public class CommonPageAdapter extends PagerAdapter{
    private List<View> list;
    public CommonPageAdapter(List<View> list){
        this.list = list;
    }
    @Override
    public int getCount() {
        return list.size();
    }

    @Override
    public boolean isViewFromObject(View view, Object object) {
        return view == object;
    }

    //初始化Item实例的方法
    @Override
    public Object instantiateItem(ViewGroup container, int position) {
        container.addView(list.get(position));
        return list.get(position);
    }
    //Item销毁的方法
    @Override
    public void destroyItem(ViewGroup container, int position, Object object) {
        /**
         * 销毁Item的方法不使用系统定义销毁Item的方法，而是使用我们自己定义的形式，将一个View对象从ViewPager中移除
         */
        container.removeView(list.get(position));
    }

}
