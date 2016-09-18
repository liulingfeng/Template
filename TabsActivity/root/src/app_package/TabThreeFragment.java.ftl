package ${packageName}.fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.llf.moban.R;

/**
 * Created by Administrator on 2016/9/11.
 */
public class TabThreeFragment extends Fragment{
    private TextView textView;
    private boolean isFirst = true;

    public static TabThreeFragment newInstance(int index){
        Bundle bundle = new Bundle();
        bundle.putInt("index", 'A' + index);
        TabThreeFragment fragment = new TabThreeFragment();
        fragment.setArguments(bundle);
        return fragment;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.tab_fragment, container,false);
        textView = (TextView) view.findViewById(R.id.text);
        textView.setText(String.valueOf((char) getArguments().getInt("index")));
        return view;
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
    }

    @Override
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);

        if(isVisibleToUser&&isFirst){
            Toast.makeText(getActivity(), "3启动了", Toast.LENGTH_SHORT).show();
            isFirst = false;
        }else{

        }
    }
}
