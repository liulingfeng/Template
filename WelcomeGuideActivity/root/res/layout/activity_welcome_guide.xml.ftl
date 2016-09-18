<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
                android:layout_width="match_parent"
                android:layout_height="match_parent">

    <android.support.v4.view.ViewPager
        android:id="@+id/id_welcome_pager"
        android:layout_width="match_parent"
        android:layout_height="match_parent">

    </android.support.v4.view.ViewPager>

    <Button
        android:id="@+id/btn_welcome_guide"
        android:layout_width="300dp"
        android:layout_height="40dp"
        android:layout_alignParentBottom="true"
        android:layout_centerHorizontal="true"
        android:layout_marginBottom="50dp"
        android:background="@drawable/guide_button"
        android:text="@string/welcome"
        android:textColor="@android:color/white"
        android:textSize="20sp"
        android:visibility="gone"
       />

    <RelativeLayout
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_alignParentBottom="true"
        android:layout_centerHorizontal="true"
        android:layout_marginBottom="20dp" >

        <LinearLayout
            android:id="@+id/ll_point_group"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:orientation="horizontal" >
        </LinearLayout>

        <View
            android:id="@+id/view_blue_point"
            android:layout_width="10dp"
            android:layout_height="10dp"
            android:background="@drawable/shape_point_blue" />
    </RelativeLayout>

</RelativeLayout>