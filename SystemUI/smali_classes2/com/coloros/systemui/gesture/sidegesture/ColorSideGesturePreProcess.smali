.class public Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;
.super Ljava/lang/Object;
.source "ColorSideGesturePreProcess.java"


# static fields
.field private static final CONST_ACTIVITY_BREENO_GUIDE:Ljava/lang/String; = "com.heytap.speechassist.guide.guidepage.GuideActivity"

.field private static final CONST_ACTIVITY_LAUNCHER:Ljava/lang/String; = "com.oppo.launcher.Launcher"

.field private static final CONST_PACKAGE_LAUNCHER:Ljava/lang/String; = "com.oppo.launcher"

.field private static final CONST_PACKAGE_RECENT_TASK:Ljava/lang/String; = "com.coloros.recents"

.field private static final CONST_WINDOW_BREENO_GUIDE:Ljava/lang/String; = "com.heytap.speechassist"

.field private static final CONST_WINDOW_CLOSE_PHONE:Ljava/lang/String; = "android"

.field private static final CONST_WINDOW_LAUNCHER:Ljava/lang/String; = "com.oppo.launcher"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentActivityName:Ljava/lang/String;

.field private mCurrentPkgName:Ljava/lang/String;

.field private final mExcludeRegion:Landroid/graphics/Region;

.field private mFocusWindowName:Ljava/lang/String;

.field private mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private mIgnoreHomeMenuKeyState:I

.field private mIsEncryptionActivity:Z

.field private mIsFreeFormMode:Z

.field private mIsScreenShotWindow:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentPkgName:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentActivityName:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mFocusWindowName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIsScreenShotWindow:Z

    .line 60
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIsFreeFormMode:Z

    .line 61
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIsEncryptionActivity:Z

    .line 62
    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIgnoreHomeMenuKeyState:I

    .line 63
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mExcludeRegion:Landroid/graphics/Region;

    .line 65
    new-instance v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess$1;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 79
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;)Landroid/graphics/Region;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method private disableByWindowFlags()Z
    .locals 1

    .line 252
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->updateHomeMenuKeyState()I

    .line 253
    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIgnoreHomeMenuKeyState:I

    sget v0, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private disableGestureInLauncher()Z
    .locals 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorSideGesturePreProcess : LauncherLauncherSlidSlipEnableState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mContext:Landroid/content/Context;

    .line 221
    invoke-static {v1}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->getLauncherSlidSlipEnable(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "ColorSideGesture"

    .line 220
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mFocusWindowName:Ljava/lang/String;

    const-string v1, "com.oppo.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mContext:Landroid/content/Context;

    .line 223
    invoke-static {v0}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->getLauncherFolderState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mContext:Landroid/content/Context;

    .line 224
    invoke-static {v0}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->getLauncherAllAppViewState(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mContext:Landroid/content/Context;

    .line 225
    invoke-static {p0}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->getLauncherSlidSlipEnable(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private disableInMultiWindow(I)Z
    .locals 2

    .line 199
    invoke-static {}, Lcom/coloros/common/util/Util;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->getDockSide()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getDockSide()I
    .locals 2

    .line 212
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorSideGesturePreProcess : Failed to get dock side: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavBar"

    const-string v1, "ColorSideGesture"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private hasStartedDragInLauncher()Z
    .locals 1

    .line 269
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->getLauncherState(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private updateHomeMenuKeyState()I
    .locals 4

    const-string v0, "ColorSideGesture"

    const-string v1, "NavBar"

    .line 257
    new-instance v2, Landroid/view/OppoWindowManager;

    invoke-direct {v2}, Landroid/view/OppoWindowManager;-><init>()V

    .line 259
    :try_start_0
    invoke-virtual {v2}, Landroid/view/OppoWindowManager;->getFocusedWindowIgnoreHomeMenuKey()I

    move-result v2

    iput v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIgnoreHomeMenuKeyState:I

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorSideGesturePreProcess : updateHomeMenuKeyState  mIgnoreHomeMenuKeyState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIgnoreHomeMenuKeyState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 262
    sget v3, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->UNSET_ANY_KEY:I

    iput v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIgnoreHomeMenuKeyState:I

    const-string v3, "updateHomeMenuKeyState  Exception "

    .line 263
    invoke-static {v1, v0, v3, v2}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :goto_0
    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIgnoreHomeMenuKeyState:I

    return p0
.end method


# virtual methods
.method public checkSideGesture(IIIZZ)Z
    .locals 4

    const/4 v0, 0x0

    .line 101
    sput-boolean v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sDetectToView:Z

    .line 102
    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    const/4 v1, 0x1

    const-string v2, "ColorSideGesture"

    const-string v3, "NavBar"

    if-eqz p1, :cond_0

    const-string p0, "ColorSideGesturePreProcess : disable side gesture because point is in the gesture exclusion range"

    .line 103
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sput-boolean v1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sDetectToView:Z

    return v0

    .line 108
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isGestureUpMode()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    if-eqz p3, :cond_3

    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    goto :goto_0

    :cond_2
    const p1, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_3
    :goto_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_1
    int-to-float p2, p2

    .line 114
    invoke-static {p3}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getScreenHeight(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    cmpg-float p1, p2, p3

    if-gez p1, :cond_4

    .line 115
    sput-boolean v1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sDetectToView:Z

    const-string p0, "ColorSideGesturePreProcess : disable side gesture because point is not side gesture range"

    .line 116
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    if-nez p4, :cond_5

    const-string p0, "ColorSideGesturePreProcess : disable side gesture because the mode is not side gesture"

    .line 120
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    if-nez p5, :cond_6

    const-string p0, "ColorSideGesturePreProcess : disable side gesture because the anim is not finished"

    .line 124
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 127
    :cond_6
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->shouldDisableGesture()Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getTopAppAndWindowInfo()V
    .locals 2

    .line 84
    invoke-static {}, Lcom/coloros/common/util/Util;->getCurrentTopAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentPkgName:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/common/util/Util;->getCurrentTopActivityNameInActivityStack(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentActivityName:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/common/util/Util;->getFocusWindow(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mFocusWindowName:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/common/util/Util;->isScreenShotEditWindow(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIsScreenShotWindow:Z

    .line 88
    invoke-static {}, Lcom/coloros/common/util/Util;->isInFreeformMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIsFreeFormMode:Z

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentActivityName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "com.coloros.safecenter.privacy.view.password"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIsEncryptionActivity:Z

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorSideGesturePreProcess : getTopAppAndWindowInfo mCurrentPkgName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentActivityName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mFocusWindowName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mFocusWindowName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsScreenShotWindow : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIsScreenShotWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsFreeFormMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIsFreeFormMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsEncryptionActivity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIsEncryptionActivity:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavBar"

    const-string v1, "ColorSideGesture"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerGestureExclusionListener()V
    .locals 2

    .line 233
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mContext:Landroid/content/Context;

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    .line 234
    invoke-interface {v0, v1, p0}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 237
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public shouldDisableGesture()Z
    .locals 5

    .line 182
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->getTopAppAndWindowInfo()V

    .line 183
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isKeyguardLocked()Z

    move-result v0

    const-string v1, "ColorSideGesture"

    const-string v2, "NavBar"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIsScreenShotWindow:Z

    if-nez v0, :cond_0

    const-string p0, "ColorSideGesturePreProcess : disable side gesture because in keyguard"

    .line 184
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sput-boolean v3, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sDetectToView:Z

    return v3

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->disableGestureInLauncher()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentPkgName:Ljava/lang/String;

    const-string v4, "com.oppo.launcher"

    .line 189
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentActivityName:Ljava/lang/String;

    const-string v4, "com.oppo.launcher.Launcher"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColorSideGesturePreProcess : disable side gesture because in launcher mCurrentPkgName : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mCurrentActivityName : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentActivityName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sput-boolean v3, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sDetectToView:Z

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public shouldDisableSwitch(I)Z
    .locals 5

    .line 134
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isKeyguardLocked()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ColorSideGesture"

    const-string v3, "NavBar"

    if-eqz v0, :cond_0

    const-string p0, "ColorSideGesturePreProcess : disable switch in keyguard"

    .line 135
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 138
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ColorSideGesturePreProcess : disable switch in children mode"

    .line 139
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentPkgName:Ljava/lang/String;

    const-string v4, "com.coloros.recents"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "ColorSideGesturePreProcess : disable switch in recents task"

    .line 142
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 144
    :cond_2
    invoke-direct {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->disableInMultiWindow(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "ColorSideGesturePreProcess : disable switch in MultiWindow"

    .line 145
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 147
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanel()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "ColorSideGesturePreProcess : disable switch in status bar is fully expanded"

    .line 148
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 150
    :cond_4
    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIsEncryptionActivity:Z

    if-eqz p1, :cond_5

    const-string p0, "ColorSideGesturePreProcess : disable switch in EncryptionActivity"

    .line 151
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 153
    :cond_5
    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIsFreeFormMode:Z

    if-eqz p1, :cond_6

    const-string p0, "ColorSideGesturePreProcess : disable switch in FreeFormMode"

    .line 154
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 156
    :cond_6
    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mIsScreenShotWindow:Z

    if-eqz p1, :cond_7

    const-string p0, "ColorSideGesturePreProcess : disable switch in ScreenShotWindow"

    .line 157
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 159
    :cond_7
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentPkgName:Ljava/lang/String;

    const-string v0, "com.oppo.launcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentActivityName:Ljava/lang/String;

    const-string v0, "com.oppo.launcher.Launcher"

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "ColorSideGesturePreProcess : disable switch in launcher"

    .line 161
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 163
    :cond_8
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mFocusWindowName:Ljava/lang/String;

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p0, "ColorSideGesturePreProcess : disable switch because focus window is close phone window"

    .line 164
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 166
    :cond_9
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mCurrentActivityName:Ljava/lang/String;

    const-string v0, "com.heytap.speechassist.guide.guidepage.GuideActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mFocusWindowName:Ljava/lang/String;

    const-string v0, "com.heytap.speechassist"

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p0, "ColorSideGesturePreProcess : disable switch because focus window is breeno guide window"

    .line 168
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 170
    :cond_a
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->hasStartedDragInLauncher()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p0, "ColorSideGesturePreProcess : disable switch because launcher start drag"

    .line 171
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 173
    :cond_b
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->disableByWindowFlags()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ColorSideGesturePreProcess : disable switch because window disable it focusWin:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mContext:Landroid/content/Context;

    .line 175
    invoke-static {p0}, Lcom/coloros/common/util/Util;->getFocusWindow(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",topApp:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/coloros/common/util/Util;->getCurrentTopAppPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public unRegisterGestureExclusionListener()V
    .locals 2

    .line 243
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->mContext:Landroid/content/Context;

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    .line 244
    invoke-interface {v0, v1, p0}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 247
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
