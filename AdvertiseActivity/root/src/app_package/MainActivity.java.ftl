package ${packageName};

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

import ${packageName}.view.AdvertiseView;

import java.util.ArrayList;
import java.util.List;

public class ${activityClass} extends Activity {
    private AdvertiseView mAdvertiseView;
    private List<View> images = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mAdvertiseView = (AdvertiseView)findViewById(R.id.advertise);
        ImageView iv1 = new ImageView(this);
        iv1.setAdjustViewBounds(true);
        iv1.setImageResource(R.drawable.a);
        ImageView iv2 = new ImageView(this);
        iv2.setAdjustViewBounds(true);
        iv2.setImageResource(R.drawable.c);
        ImageView iv3 = new ImageView(this);
        iv3.setAdjustViewBounds(true);
        iv3.setImageResource(R.drawable.e);
        images.add(iv1);
        images.add(iv2);
        images.add(iv3);
        mAdvertiseView.setParas(1.5,images);
    }
}
