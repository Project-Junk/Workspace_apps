/***********************************************************
 ** Copyright(C),2008-2016,OPPOMobileCommCorp.,Ltd.
 ** COLOROS_EDIT
 ** File:INotificationCenter.java
 ** Description:Service for connect with notification center
 ** Version:1.0
 ** Date:2017/7/12
 ** Author:chenjun-os@ROM.SysApp.SystemUI
 **
 **---------------------RevisionHistory:---------------------
 ** <author>        <data>      <version>       <desc>
 ** chenjun-os     2018/10/22   1.0             add
 ****************************************************************/
package com.coloros.notification;

interface INotificationCenter{
        void setFold(String pkg, int uid, String channelId, boolean fold);

        boolean isFold(String pkg, int uid, String channelId);

        String getChannelName(String pkg, int uid, String channelId);

        boolean canShowBanner(String pkg, int uid, String channeId);

        int getLockscreenVisibility(String pkg, int uid, String channelId);

        boolean isChangeableFold(String pkg, int uid, String channelId);

        List<String> getSupportNumberBadgePackages();

        boolean areNotificationsEnabledForPackage(String pkg, int uid);

        int getBadgeOption(String pkg, int uid);

        boolean updateChannelSound(String pkg, int uid, String channelId, String Uri);

        void updateChannelVibration(String pkg, int uid, String channelId, boolean enabled);

        void setStowOption(String pkg, int uid, int option);

        int getStowOption(String pkg, int uid);
}