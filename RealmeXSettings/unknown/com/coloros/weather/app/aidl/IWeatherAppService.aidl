/***********************************************************
 ** Copyright (C), 2008-2017, OPPO Mobile Comm Corp., Ltd.
 ** VENDOR_EDIT
 ** File:IWeatherAppService.aidl
 ** Description:UpdateWeather for weather app
 ** Version:1.0
 ** Date :2018/1/8
 ** Author:Mazhifeng
 **
 ** ---------------------Revision History: ---------------------
 **  <author>    <data>    <version >    <desc>
 ****************************************************************/
package com.coloros.weather.app.aidl;
import com.coloros.weather.app.aidl.IUpdateWeatherListener;
import com.coloros.aidl.ICityActionListener;
import android.location.Address;

interface IWeatherAppService {
    oneway void registListener(IUpdateWeatherListener listener);
    oneway void unregistListener();

    void updateCityWeatherById(long cityId, boolean forceRefresh);
    void updateAllCitiesWeather(boolean forceRefresh);
    int[] updateLocation(in Address address);
    void updateIfShowLocaleCity(boolean show);
    void updateHotCity(String countryCode, String locale, ICityActionListener callback);
    void searchCityOnline(String key, String locale, ICityActionListener callback);
}