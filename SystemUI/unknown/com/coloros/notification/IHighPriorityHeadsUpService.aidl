package com.coloros.notification;

import android.os.IBinder;

interface IHighPriorityHeadsUpService {
    void showHeadsUp(IBinder binder);
    void dismissHeadsUp();
}