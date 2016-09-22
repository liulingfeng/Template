<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
                android:id="@+id/control"
                android:layout_width="match_parent"
                android:layout_height="200dp"
                android:orientation="vertical"
    >
    <android.support.v4.view.ViewPager
        android:id="@+id/viewpage"
        android:layout_width="match_parent"
        android:layout_height="match_parent"/>

    <RelativeLayout
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_alignParentBottom="true"
        android:layout_centerHorizontal="true"
        android:layout_marginBottom="10dp" >

        <LinearLayout
            android:id="@+id/points"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:orientation="horizontal" >
        </LinearLayout>

        <View
            android:id="@+id/point_focus"
            android:layout_width="10dp"
            android:layout_height="10dp"
            android:background="@drawable/shape_point_focus" />
    </RelativeLayout>
</RelativeLayout>