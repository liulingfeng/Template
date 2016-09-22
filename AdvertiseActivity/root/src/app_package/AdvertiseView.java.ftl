package ${packageName}.view;

import android.content.Context;
import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import ${packageName}.R;
import ${packageName}.adapter.CommonPageAdapter;
import ${packageName}.tools.DensityUtil;
import ${packageName}.tools.ScreenUtil;
import java.util.ArrayList;
import java.util.List;
/**
 * Created by llf on 2016/9/22.
 */

public class AdvertiseView extends LinearLayout implements ViewPager.OnPageChangeListener{
    private Context context;
    private RelativeLayout control;
    private ViewPager mViewPager;
    private LinearLayout points;
    private View viewFocus;
    private List<View> images = new ArrayList<>();
    private double scale;//图片的长宽比
    private static final int DELAY = 3000;//轮播时间间隔
    private int space,mPointWidth,currentItem;
    private boolean isAutoPlay = true;
    private Handler mHandler;

    public AdvertiseView(Context context) {
        this(context,null);
    }

    public AdvertiseView(Context context, AttributeSet attrs) {
        this(context, attrs,0);
    }

    public AdvertiseView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);

        this.context = context;
        mHandler = new Handler();
        space = DensityUtil.dip2px(context,10);
        mPointWidth = space*2;
        LayoutInflater.from(context).inflate(R.layout.advertise_layout,this,true);
        control = (RelativeLayout)findViewById(R.id.control);
        mViewPager = (ViewPager)findViewById(R.id.viewpage);
        points = (LinearLayout)findViewById(R.id.points);
        viewFocus = (View)findViewById(R.id.point_focus);
        mViewPager.addOnPageChangeListener(this);
    }

    public void setParas(double scale,List<View> images){
        this.images.addAll(images);
        this.scale = scale;
        init();
    }

    private void init(){
        LinearLayout.LayoutParams paramsControl = new LinearLayout.LayoutParams(ScreenUtil.getScreenWidth(context), (int)(ScreenUtil.getScreenWidth(context)/scale));
        control.setLayoutParams(paramsControl);
        // 设置引导页默认圆点
        for (int i = 0; i < images.size(); i++) {
            View point = new View(context);
            point.setBackgroundResource(R.drawable.shape_point_unfocus);
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(space, space);
            if (i > 0) {
                params.leftMargin = space;
            }
            point.setLayoutParams(params);
            points.addView(point);
        }

        mViewPager.setAdapter(new CommonPageAdapter(images));
        //自动轮播
        mHandler.postDelayed(task, DELAY);
    }

    private final Runnable task=new Runnable() {
        @Override
        public void run() {
            if (isAutoPlay) {
                currentItem=(currentItem+1)%(images.size());
                mViewPager.setCurrentItem(currentItem,false);
                mHandler.postDelayed(task, DELAY);
            } else {
                mHandler.postDelayed(task, DELAY);
            }
        }
    };

    @Override
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        int len = (int) (mPointWidth * positionOffset) + position * mPointWidth;
        RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) viewFocus.getLayoutParams();// 获取当前蓝点的布局参数
        params.leftMargin = len;// 设置左边距
        viewFocus.setLayoutParams(params);// 重新给蓝点设置布局参数
    }

    @Override
    public void onPageSelected(int position) {
        currentItem = position;
    }

    @Override
    public void onPageScrollStateChanged(int state) {
        switch (state) {
            case 1:
                isAutoPlay = false;
                break;

            case 2:
                isAutoPlay = true;
                break;
            default:
                break;
        }
    }
}
