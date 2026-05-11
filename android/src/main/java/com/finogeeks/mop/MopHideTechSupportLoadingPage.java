package com.finogeeks.mop;

import android.content.Context;

import androidx.annotation.NonNull;

import com.finogeeks.lib.applet.modules.appletloadinglayout.FinAppletDefaultLoadingPage;

/**
 * 隐藏加载页技术支持标识的默认实现。
 */
public class MopHideTechSupportLoadingPage extends FinAppletDefaultLoadingPage {
    public MopHideTechSupportLoadingPage(@NonNull Context context) {
        super(context);
    }

    @Override
    public boolean hideTechSupport() {
        return true;
    }
}
