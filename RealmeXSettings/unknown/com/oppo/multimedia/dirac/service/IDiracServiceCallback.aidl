/***********************************************************
** Copyright (C), 2008-2017, OPPO Mobile Comm Corp., Ltd.
** VENDOR_EDIT
** File:IDiracServiceCallback.aidl
** Description:Dirac Service Callbalk
** Version:1.0
** Date :
** Author:
**
** ---------------------Revision History: ---------------------
**  <author>    <data>    <version >    <desc>
****************************************************************/
package com.oppo.multimedia.dirac.service;

interface IDiracServiceCallback {
    void DiracServiceStatusChangeCallback();
    void DiracServiceConnectStatusCallback(boolean status);
}