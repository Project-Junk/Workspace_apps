// ISmartLockCallback.aidl
package com.coloros.systemui.smartlock;

// Declare any non-default types here with import statements

interface ISmartLockCallback {
    /**
     * Demonstrates some basic types that you can use as parameters
     * and return values in AIDL.
     */
    /*void basicTypes(int anInt, long aLong, boolean aBoolean, float aFloat,
            double aDouble, String aString);*/

    void process(int mode, String extras);
}
