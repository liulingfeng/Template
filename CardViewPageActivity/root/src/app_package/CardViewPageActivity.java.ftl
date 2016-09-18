package ${packageName};

import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import ${packageName}.adapter.CommonPageAdapter;
import ${packageName}.R;
import ${packageName}.tools.DensityUtil;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by llf on 2016/9/14.
 */
public class ${activityClass} extends AppCompatActivity{
    private ViewPager mViewPager;
    private List<View> mData = new ArrayList<>();
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayoutName});

        for (int i = 0; i <8; i++) {
            CardView cardView = (CardView) LayoutInflater.from(this).inflate(R.layout.item_card,null);
            mData.add(cardView);
        }
        mViewPager = (ViewPager)findViewById(R.id.viewpager);
        mViewPager.setAdapter(new CommonPageAdapter(mData));
        mViewPager.setOffscreenPageLimit(3);
        mViewPager.setPageMargin(DensityUtil.dip2px(this,12));
    }
}
