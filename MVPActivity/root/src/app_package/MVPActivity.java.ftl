package ${packageName}.view.activity;

import android.os.Bundle;

import com.mistong.commom.base.BasePresenterActivity;

public class ${activityClass} extends BasePresenterActivity<${contractName}.Presenter> implements ${contractName}.View{

    @Override
    protected int getLayout() {
        return R.layout.${layoutName};
    }

    @Override
    protected void initPresenter() {
      mPresenter = new ${presenterName}();
    }

    @Override
    public void showLoading(String msg) {

    }

    @Override
    public void showError(int code, String msg) {

    }
}
