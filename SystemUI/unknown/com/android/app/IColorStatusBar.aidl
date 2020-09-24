package android.app;

oneway interface IColorStatusBar {

    void topIsFullscreen(boolean fullscreen);
    void notifyMultiWindowFocusChanged(int state);
    void toggleSplitScreen(int mode);
    void setStatusBarFunction(int functionCode, String pkgName);
    void updateNavBarVisibility(int navBarVis);
    void updateNavBarVisibilityWithPkg(int navBarVis, String pkgName);
}
