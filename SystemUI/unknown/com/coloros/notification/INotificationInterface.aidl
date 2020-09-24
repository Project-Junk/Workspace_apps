// INotificationInterface.aidl
package com.coloros.notification;
// Declare any non-default types here with import statements

interface INotificationInterface {

    /**
     * Demonstrates some basic types that you can use as parameters
     * and return values in AIDL.
     */
    /*void basicTypes(int anInt, long aLong, boolean aBoolean, float aFloat,
            double aDouble, String aString);*/

    boolean shouldShowOnKeyguard(String sbnKey);

    boolean shouldShowHeadsup(String pkg, int uid);

    boolean sbnIsFold(in StatusBarNotification sbn);
}
