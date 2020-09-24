/***********************************************************
** Copyright (C), 2008-2017, OPPO Mobile Comm Corp., Ltd.
** VENDOR_EDIT
** File:IOppoDiracService.aidl
** Description:Dirac Service
** Version:1.0
** Date :
** Author:
**
** ---------------------Revision History: ---------------------
**  <author>    <data>    <version >    <desc>
****************************************************************/

package com.oppo.multimedia.dirac.service;

import com.oppo.multimedia.dirac.service.IDiracServiceCallback;

interface IOppoDiracService {
    void setEnabled(boolean enabled);

    boolean getEnabled();

    void setParameter(String key, String value);

    String getParameters(String keyValuePairs);

    void registerCallback(IDiracServiceCallback callback);

    void unRegisterCallback(IDiracServiceCallback callback);
}