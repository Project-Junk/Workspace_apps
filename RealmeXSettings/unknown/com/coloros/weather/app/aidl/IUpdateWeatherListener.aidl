/***********************************************************
 ** Copyright (C), 2008-2017, OPPO Mobile Comm Corp., Ltd.
 ** VENDOR_EDIT
 ** File:IUpdateWeatherListener.aidl
 ** Description:UpdateWeather listener for weather app
 ** Version:1.0
 ** Date :2018/1/8
 ** Author:Mashaolong
 **
 ** ---------------------Revision History: ---------------------
 **  <author>    <data>    <version >    <desc>
 ****************************************************************/
package com.coloros.weather.app.aidl;

interface IUpdateWeatherListener {
    void notifyUpdateWeatherDataObserver(long cityid, boolean isAllCity, int isSuc);
    void notifyWarnWeather(boolean isAccu, String cityName, String message, long attendId, long cityId);
}
