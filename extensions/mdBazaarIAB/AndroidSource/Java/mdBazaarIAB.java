package ${YYAndroidPackageName};
import android.app.Activity;
import ${YYAndroidPackageName}.RunnerActivity;
import android.util.Log;
import android.app.Activity;
import com.yoyogames.runner.RunnerJNILib;

public class mdBazaarIAB {
	static Activity mActivity = null;
    public double mdBazaarIAB_init(final String _IABRSA, final String _IABConsumables, final String _IABNonConsumables) {
        mActivity = RunnerActivity.CurrentActivity;
        RunnerActivity.ViewHandler.post(new Runnable() {
            @Override
            public void run() {
                ir.miladesign.bazaar.MDBazaar.init(mActivity, _IABRSA, _IABConsumables, _IABNonConsumables, new ir.miladesign.bazaar.MABazaarListener() {
                    @Override
                    public void onConsumablePurchased(String element) {
                        int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
                        RunnerJNILib.DsMapAddString(dsMapIndex, "type", "onConsumablePurchased");
                        RunnerJNILib.DsMapAddString(dsMapIndex, "element", element);
                        RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
                    }

                    @Override
                    public void onNonConsumablePurchased(String element) {
                        int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
                        RunnerJNILib.DsMapAddString(dsMapIndex, "type", "onNonConsumablePurchased");
                        RunnerJNILib.DsMapAddString(dsMapIndex, "element", element);
                        RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
                    }

                    @Override
                    public void onPurchaseFail() {
                        int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
                        RunnerJNILib.DsMapAddString(dsMapIndex, "type", "onPurchaseFail");
                        RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
                    }
                });
            }
        });
        return 1 ;
    }
    public double mdBazaarIAB_startIAB(final String element, final String payLoad) {
        mActivity = RunnerActivity.CurrentActivity;
        RunnerActivity.ViewHandler.post(new Runnable() {
            @Override
            public void run() {
                ir.miladesign.bazaar.MDBazaar.startIAB(mActivity, element, payLoad);
            }
        });
        return 1;
    }
    private static final int EVENT_OTHER_SOCIAL = 70;
}
