package com.coloros.clear.aidl.service;

import java.lang.Object;

interface ICleardroidScan{

    void onScanStart();

    void onScanFinish(long size, in List<String> paths, in List<String> packages);

    void onScanPathUpdate(String path);

    void onScanSizeUpdate(long size);
}