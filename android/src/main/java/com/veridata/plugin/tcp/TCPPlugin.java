package com.veridata.plugin.tcp;

import android.util.Log;

public class TCPPlugin {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }
}
