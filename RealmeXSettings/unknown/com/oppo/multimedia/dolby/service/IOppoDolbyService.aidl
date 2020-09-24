/************************************************************************************
** Copyright (C), 2000-2017, OPPO Mobile Comm Corp., Ltd
** All rights reserved.
**
** VENDOR_EDIT
**
** Description: -
**      IOppoDiracService.java
**
**
** --------------------------- Revision History: --------------------------------
** <author>           <data>     <version >   <desc>
** ------------------------------------------------------------------------------
** Fenggui.Yan       2019/01/24    1.0      create file
** ------------------------------------------------------------------------------
**
************************************************************************************/
package com.oppo.multimedia.dolby.service;

import com.oppo.multimedia.dolby.service.IDolbyServiceCallback;

interface IOppoDolbyService {
    void setEnabled(boolean enabled);

    boolean getEnabled();

    void setMusicIeqPreset(int preset);

    int getMusicIeqPreset();

    void setEffectCategory(int category);

    int getEffectCategory();

    void setMusicGeqBandGains(in int[] gains);

    int[] getMusicGeqBandGains();

    boolean isBtDeviceSupported(String str);

    void setParameter(String key, String value);

    String getParameters(String keyValuePairs);

    void registerCallback(IDolbyServiceCallback callback);

    void unRegisterCallback(IDolbyServiceCallback callback);
}