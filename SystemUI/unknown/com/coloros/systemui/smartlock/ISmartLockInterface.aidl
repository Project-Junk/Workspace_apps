// ISmartLockInterface.aidl
package com.coloros.systemui.smartlock;
import com.coloros.systemui.smartlock.ISmartLockCallback;
// Declare any non-default types here with import statements

interface ISmartLockInterface {

    /**
     * Demonstrates some basic types that you can use as parameters
     * and return values in AIDL.
     */
    /*void basicTypes(int anInt, long aLong, boolean aBoolean, float aFloat,
            double aDouble, String aString);*/

    boolean isSmartLockActiveMode();

    int getSmartLockMode();

    void notifySmartLock(int mode);

    void register(ISmartLockCallback callback);

    void unregister(ISmartLockCallback callback);
}
