package com.oppo.servicesdk;

import com.oppo.servicesdk.WeatherRequest;
import com.oppo.servicesdk.ICommonCallBack;


interface ICommonService {

    String execute(in WeatherRequest request);

    void register(String tableName, ICommonCallBack callBackAidl);

    void unregister(ICommonCallBack callBackAidl);
}
