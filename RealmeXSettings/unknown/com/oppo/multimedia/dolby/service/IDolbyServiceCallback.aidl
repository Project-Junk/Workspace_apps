/************************************************************************************
** Copyright (C), 2000-2017, OPPO Mobile Comm Corp., Ltd
** All rights reserved.
**
** VENDOR_EDIT
**
** Description: -
**      IDiracServiceCallback.java
**
**
** --------------------------- Revision History: --------------------------------
** <author>              <data>     <version >  <desc>
** ------------------------------------------------------------------------------
** Fenggui.Yan         2019/01/24   1.0    create file
** ------------------------------------------------------------------------------
**
************************************************************************************/
package com.oppo.multimedia.dolby.service;

interface IDolbyServiceCallback {
    void DolbyServiceStatusChangeCallback();
    void DolbyServiceConnectStatusCallback(boolean status);
    //for debug
    void DolbyServiceDsCallback(boolean enable);
    void DolbyServiceProfileCallback(int profile);
    void DolbyServiceIsBtSupported(boolean support);
    void DolbyServiceConnectDeviceStatusChangeCallback(int status);
}