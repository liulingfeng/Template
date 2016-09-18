package ${packageName};

import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.widget.ImageView;
import android.widget.TextView;
import ${packageName}.fragment.TabFourFragment;
import ${packageName}.fragment.TabOneFragment;
import ${packageName}.fragment.TabThreeFragment;
import ${packageName}.fragment.TabTwoFragment;
import java.util.ArrayList;
import java.util.List;
import ${packageName}.adapter.FragmentAdapter;
/**
 * Created by llf on 2016/9/11.
 */
public class ${activityClass} extends FragmentActivity {
    private String[] titles = new String[]{"微信", "通讯录", "发现", "我"};
    private TabLayout mTabLayout;
    private ViewPager mViewPager;
    private FragmentAdapter adapter;
    //ViewPage选项卡页面集合
    private List<Fragment> mFragments;
    //Tab标题集合
    private List<String> mTitles;
    /**
     * 图片数组
     */
    private int[] mImgs = new int[]{R.drawable.selector_tab_weixin, R.drawable.selector_tab_friends, R.drawable.selector_tab_find,
            R.drawable.selector_tab_me};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayoutName});

        mViewPager = (ViewPager) findViewById(R.id.viewpager);
        mTabLayout = (TabLayout) findViewById(R.id.tablayout);

        mTitles = new ArrayList<>();
        for (int i = 0; i < 4; i++) {
            mTitles.add(titles[i]);
        }

        mFragments = new ArrayList<>();
        TabOneFragment tabOneFragment = TabOneFragment.newInstance(0);
        TabTwoFragment tabTwoFragment = TabTwoFragment.newInstance(1);
        TabThreeFragment tabThreeFragment = TabThreeFragment.newInstance(2);
        TabFourFragment tabFourFragment = TabFourFragment.newInstance(3);
        mFragments.add(tabOneFragment);
        mFragments.add(tabTwoFragment);
        mFragments.add(tabThreeFragment);
        mFragments.add(tabFourFragment);
        adapter = new FragmentAdapter(getSupportFragmentManager(), mFragments, mTitles);
        mViewPager.setAdapter(adapter);//给ViewPager设置适配器
        mViewPager.setOffscreenPageLimit(0);
        mTabLayout.setupWithViewPager(mViewPager);//将TabLayout和ViewPager关联起来

        mTabLayout.setSelectedTabIndicatorHeight(0);//不显示tab底部的横线
        for (int i = 0; i < mTitles.size(); i++) {
            //获得到对应位置的Tab
            TabLayout.Tab itemTab = mTabLayout.getTabAt(i);
            if (itemTab != null) {
                //设置自定义的标题
                itemTab.setCustomView(R.layout.item_tab);
                TextView textView = (TextView) itemTab.getCustomView().findViewById(R.id.tv_name);
                textView.setText(mTitles.get(i));
                ImageView imageView = (ImageView) itemTab.getCustomView().findViewById(R.id.iv_img);
                imageView.setImageResource(mImgs[i]);
            }
        }
        mTabLayout.getTabAt(0).getCustomView().setSelected(true);
    }
}
