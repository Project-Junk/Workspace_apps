package com.coloros.clear.aidl.service;

import com.coloros.clear.aidl.service.ICleardroidScan;
import java.lang.Object;

interface ISafeCleaner{
    void scan(in ICleardroidScan cleardroidScan, in int scanType, in String packageName);

    void stopScan();
}