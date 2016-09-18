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
 * Created by llf on 2016/9/11.
 * 执行顺序图
 * one_setUserVisibleHint-->two_setUserVisibleHint-->one_onAttach-->one_onCreate-->
 * one_setUserVisibleHint=true-->two_onAttach-->two_onCreate-->two_onCreateView-->
 * two_onActivityCreate-->one_onCreateView-->one_onActivityCreate-->one_onStart-->one_onResume-->two_onStart-->two_onResume
 *
 */
public class TabOneFragment extends Fragment {
    private TextView textView;

    public static TabOneFragment newInstance(int index) {
        Bundle bundle = new Bundle();
        bundle.putInt("index", 'A' + index);
        TabOneFragment fragment = new TabOneFragment();
        fragment.setArguments(bundle);
        return fragment;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.tab_fragment, container, false);
        textView = (TextView) view.findViewById(R.id.text);
        textView.setText(String.valueOf((char) getArguments().getInt("index")));
        return view;
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);

        Toast.makeText(getActivity(), "1启动了", Toast.LENGTH_SHORT).show();
    }
}
