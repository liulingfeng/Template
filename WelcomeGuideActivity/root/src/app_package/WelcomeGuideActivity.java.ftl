package ${packageName};

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import ${packageName}.tools.DensityUtil;
import java.util.ArrayList;
import java.util.List;
import ${packageName}.adapter.CommonPageAdapter;

public class ${activityClass} extends Activity implements View.OnClickListener {

    private ViewPager mViewPager;
    private List<View> list;
    private LinearLayout llPointGroup;// 引导圆点的父控件
    private int mPointWidth;// 圆点间的距离
    private View viewBluePoint;// 蓝点
    private int tenDPtoPx;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayoutName});

        mViewPager = (ViewPager) findViewById(R.id.id_welcome_pager);
        llPointGroup = (LinearLayout)findViewById(R.id.ll_point_group);
        viewBluePoint = (View)findViewById(R.id.view_blue_point);
        findViewById(R.id.btn_welcome_guide).setOnClickListener(this);
        tenDPtoPx = DensityUtil.dip2px(WelcomeGuideActivity.this,10);

        initViewPager();
    }

    private void initViewPager(){
        list = new ArrayList<View>();
        ImageView iv = new ImageView(this);
        iv.setImageResource(R.drawable.guide_01);
        list.add(iv);
        ImageView iv1 = new ImageView(this);
        iv1.setImageResource(R.drawable.guide_02);
        list.add(iv1);
        ImageView iv2 = new ImageView(this);
        iv2.setImageResource(R.drawable.guide_03);
        list.add(iv2);

        // 初始化引导页的灰色圆点
        for (int i = 0; i < list.size(); i++) {
            View point = new View(this);
            point.setBackgroundResource(R.drawable.shape_point_gray);// 设置引导页默认圆点
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(tenDPtoPx, tenDPtoPx);
            if (i > 0) {
                params.leftMargin = tenDPtoPx;// 设置圆点间隔
            }
            point.setLayoutParams(params);// 设置圆点的大小
            llPointGroup.addView(point);// 将圆点添加给线性布局
        }

        // 获取视图树, 对layout结束事件进行监听
        llPointGroup.getViewTreeObserver().addOnGlobalLayoutListener(
                new ViewTreeObserver.OnGlobalLayoutListener() {
                    // 当layout执行结束后回调此方法
                    @Override
                    public void onGlobalLayout() {
                        llPointGroup.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                        mPointWidth = llPointGroup.getChildAt(1).getLeft()-llPointGroup.getChildAt(0).getLeft();
                    }
                });

        mViewPager.setAdapter(new CommonPageAdapter(list));
        mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {
            //页卡被选中的效果
            @Override
            public void onPageSelected(int arg0) {
                if (arg0==2) {
                    findViewById(R.id.btn_welcome_guide).setVisibility(View.VISIBLE);
                }else {
                    findViewById(R.id.btn_welcome_guide).setVisibility(View.GONE);
                }
            }

            @Override
            public void onPageScrolled(int position, float positionOffset, int arg2) {
                int len = (int) (mPointWidth * positionOffset) + position * mPointWidth;
                RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) viewBluePoint.getLayoutParams();// 获取当前蓝点的布局参数
                params.leftMargin = len;// 设置左边距
                viewBluePoint.setLayoutParams(params);// 重新给蓝点设置布局参数
            }

            @Override
            public void onPageScrollStateChanged(int arg0) {
            }
        });
    }
    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_welcome_guide:
                this.finish();
                break;
        }
    }
}
