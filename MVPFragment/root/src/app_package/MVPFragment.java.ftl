package ${packageName}.view.fragment;
import com.mistong.commom.base.BasePresenterFragment;

public class ${fragmentClass} extends BasePresenterFragment<${presenterName}> implements ${contractName}.View{
    @Override
    public void showLoading(String msg) {

    }

    @Override
    public void showError(int code, String msg) {

    }

    @Override
    protected void initPresenter() {
        mPresenter = new ${presenterName}();
    }

    @Override
    protected int getLayoutId() {
        return R.layout.${layoutName};
    }
}
