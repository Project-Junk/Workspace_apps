/***********************************************************
 ** Copyright (C), 2008-2017, OPPO Mobile Comm Corp., Ltd.
 ** VENDOR_EDIT
 ** File:ICityActionListener.java
 ** Description:city operation listener
 ** Version:1.0
 ** Date :2018/1/8
 ** Author:Mashaolong
 **
 ** ---------------------Revision History: ---------------------
 **  <author>    <data>    <version >    <desc>
 ****************************************************************/
package com.coloros.aidl;

import com.coloros.aidl.CityInfo;

interface ICityActionListener {
void onHotCityUpdated(in List<CityInfo> cities);
void onSearchOnlineCompleted(in List<CityInfo> cities);
}
