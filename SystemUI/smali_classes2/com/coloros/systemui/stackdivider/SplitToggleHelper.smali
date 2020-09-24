.class public Lcom/coloros/systemui/stackdivider/SplitToggleHelper;
.super Ljava/lang/Object;
.source "SplitToggleHelper.java"


# static fields
.field private static final KEY_NOT_PASSED:Ljava/lang/String; = "oppo.key.notPassed"

.field private static final KEY_TASK_ID:Ljava/lang/String; = "oppo.key.taskid"

.field public static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.oppo.launcher"

.field private static final OPPO_SAFECENTER_PASSWORD_ACTIVITY:Ljava/lang/String; = "com.coloros.safecenter/.privacy.view.password.AppUnlockPasswordActivity"

.field public static final RECENTS_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "SplitToggleHelper"

.field private static volatile sInstance:Lcom/coloros/systemui/stackdivider/SplitToggleHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mExitType:I

.field private mSplitScreenListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mStartType:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mExitType:I

    .line 88
    new-instance v1, Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$owW-T3mJtPYplhdBGN5P5dx5aA0;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$owW-T3mJtPYplhdBGN5P5dx5aA0;-><init>(Lcom/coloros/systemui/stackdivider/SplitToggleHelper;)V

    iput-object v1, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mSplitScreenListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 95
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    .line 96
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/Divider;

    iput-object v1, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 98
    invoke-static {}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->getInstance()Lcom/coloros/systemui/common/observer/SplitScreenObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mSplitScreenListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 99
    invoke-static {}, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->getInstance()Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/stackdivider/SplitToggleHelper;
    .locals 2

    .line 103
    sget-object v0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->sInstance:Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    if-nez v0, :cond_1

    .line 104
    const-class v0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->sInstance:Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    invoke-direct {v1}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;-><init>()V

    sput-object v1, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->sInstance:Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    .line 108
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 110
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->sInstance:Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    return-object v0
.end method

.method private getTopPkgName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 399
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    .line 401
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private isSnapshotEditing()Z
    .locals 2

    const/4 v0, 0x0

    .line 376
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const-string v1, "color_screenshot"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/color/screenshot/ColorScreenshotManager;

    if-eqz p0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/color/screenshot/ColorScreenshotManager;->isScreenshotEdit()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    const-string p0, "SplitToggleHelper"

    const-string v1, "ColorScreenshotManager no method isScreenshotEdit!!"

    .line 379
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSplitScreenAvailable(ZLcom/android/systemui/shared/recents/model/Task;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;->isUserSetup(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 188
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->getInstance()Lcom/coloros/systemui/common/observer/SplitScreenObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->isSplitScreenEnabled()Z

    move-result v0

    const-string v2, "SplitToggleHelper"

    if-nez v0, :cond_1

    const-string p0, "split switch off Return"

    .line 189
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->isToggleFromServiceWhenSwitchOff()Z

    move-result v0

    const-string v3, "StackDivider"

    if-eqz v0, :cond_2

    const-string p0, "isToggleFromServiceWhenSwitchOff Return"

    .line 194
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 198
    :cond_2
    invoke-static {}, Lcom/color/zoomwindow/ColorZoomWindowManager;->getInstance()Lcom/color/zoomwindow/ColorZoomWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/zoomwindow/ColorZoomWindowManager;->getCurrentZoomWindowState()Lcom/color/zoomwindow/ColorZoomWindowInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 199
    iget-boolean v0, v0, Lcom/color/zoomwindow/ColorZoomWindowInfo;->windowShown:Z

    if-eqz v0, :cond_3

    .line 200
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const p1, 0x7f11062e

    invoke-static {p0, p1, v1}, Lcom/android/systemui/SysUIToast;->showToastInMainThread(Landroid/content/Context;II)V

    const-string p0, "Freeform mode Return"

    .line 202
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    if-eqz p3, :cond_4

    .line 206
    iget-object v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    iget-object v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 208
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.coloros.safecenter/.privacy.view.password.AppUnlockPasswordActivity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Privacy Password Activity Return"

    .line 209
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    const/4 v0, 0x1

    if-eqz p3, :cond_a

    .line 214
    iget-boolean v4, p3, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-nez v4, :cond_a

    .line 216
    iget-object p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p2

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    if-ne p2, p1, :cond_6

    .line 220
    iget p2, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mStartType:I

    if-ne p2, v0, :cond_5

    .line 221
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const p2, 0x7f110608

    invoke-static {p1, p2, v1}, Lcom/android/systemui/SysUIToast;->showToastInMainThread(Landroid/content/Context;II)V

    goto :goto_0

    :cond_5
    if-ne p2, p1, :cond_8

    .line 224
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const p2, 0x7f110609

    invoke-static {p1, p2, v1}, Lcom/android/systemui/SysUIToast;->showToastInMainThread(Landroid/content/Context;II)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x3

    if-ne p2, p1, :cond_7

    goto :goto_0

    .line 230
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->showDismissingDockedStackToast()V

    .line 234
    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;->getCurrentTopPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->onSplitScreenUndockInfo(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_9
    const-string p0, "runningtask is unDockable Return"

    .line 238
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_a
    if-eqz p2, :cond_c

    .line 242
    iget-boolean p2, p2, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez p2, :cond_c

    if-eqz p1, :cond_b

    .line 244
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const p1, 0x7f11071a

    invoke-static {p0, p1, v1}, Lcom/android/systemui/SysUIToast;->showToastInMainThread(Landroid/content/Context;II)V

    :cond_b
    const-string p0, "task is unDockable Return"

    .line 247
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 251
    :cond_c
    invoke-static {}, Lcom/coloros/systemui/stackdivider/SplitAppReader;->getInstance()Lcom/coloros/systemui/stackdivider/SplitAppReader;

    move-result-object p2

    iget-object p3, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;->getCurrentTopActivityNameInActivityStack(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/coloros/systemui/stackdivider/SplitAppReader;->isForceFullScreenActivity(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    if-eqz p1, :cond_d

    .line 253
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const p1, 0x7f11062b

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->showToastInMainThread(Landroid/content/Context;II)V

    :cond_d
    const-string p0, "isForceFullScreenActivity Return"

    .line 255
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 259
    :cond_e
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isChildrenModeSupport()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 260
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p0, "Child mode Return"

    .line 261
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 265
    :cond_f
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->isSnapshotEditing()Z

    move-result p2

    if-eqz p2, :cond_10

    const-string p0, "isSnapshotEditing Return"

    .line 266
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 270
    :cond_10
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 271
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const p3, 0x7f1202b1

    invoke-virtual {p2, p3}, Landroid/content/Context;->setTheme(I)V

    if-eqz p1, :cond_11

    .line 273
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const p1, 0x7f1105dd

    invoke-static {p0, p1, v1}, Lcom/android/systemui/SysUIToast;->showToastInMainThread(Landroid/content/Context;II)V

    :cond_11
    return v1

    :cond_12
    return v0
.end method

.method private isStartedFromLauncher(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 394
    invoke-direct {p0, p1}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->getTopPkgName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.oppo.launcher"

    .line 395
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isToggleFromServiceWhenSwitchOff()Z
    .locals 2

    .line 385
    iget p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mStartType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return v0

    .line 389
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->getInstance()Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->isSplitScreenFingersEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 390
    invoke-static {}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->getInstance()Lcom/coloros/systemui/common/observer/SplitScreenObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->isSplitScreenEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method static synthetic lambda$toggleSplitScreenMode$1()V
    .locals 2

    .line 123
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->notifyBarTransitionsSplitScreenChange(Z)V

    return-void
.end method

.method private showToastAndExitIfNeeded()Z
    .locals 4

    .line 409
    iget v0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mStartType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f110609

    invoke-static {v0, v3, v2}, Lcom/android/systemui/SysUIToast;->showToastInMainThread(Landroid/content/Context;II)V

    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f110608

    invoke-static {v0, v3, v2}, Lcom/android/systemui/SysUIToast;->showToastInMainThread(Landroid/content/Context;II)V

    :goto_0
    if-eqz v1, :cond_2

    .line 426
    iput v2, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mStartType:I

    :cond_2
    return v1
.end method

.method private splitPrimaryTask(IILandroid/graphics/Rect;II)Z
    .locals 5

    .line 286
    iget-object p4, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;->isUserSetup(Landroid/content/Context;)Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    .line 290
    :cond_0
    iput p5, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mStartType:I

    .line 292
    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4}, Landroid/graphics/Point;-><init>()V

    if-nez p3, :cond_3

    .line 294
    iget-object p3, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const-class p5, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p3, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/display/DisplayManager;

    if-eqz p3, :cond_2

    .line 295
    invoke-virtual {p3, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p5

    if-nez p5, :cond_1

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p3, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p3

    .line 299
    invoke-virtual {p3, p4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 300
    new-instance p3, Landroid/graphics/Rect;

    iget p5, p4, Landroid/graphics/Point;->x:I

    iget p4, p4, Landroid/graphics/Point;->y:I

    invoke-direct {p3, v0, v0, p5, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    return v0

    .line 304
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 305
    iget-object p5, p4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p5, p5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 306
    invoke-virtual {p5}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p5

    goto :goto_2

    :cond_4
    move p5, v0

    .line 308
    :goto_2
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p5, v2, :cond_6

    const/4 v4, 0x3

    if-ne p5, v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v0

    goto :goto_4

    :cond_6
    :goto_3
    move v4, v3

    :goto_4
    if-ne p5, v2, :cond_7

    move p5, v3

    goto :goto_5

    :cond_7
    move p5, v0

    :goto_5
    if-nez v1, :cond_8

    .line 321
    invoke-direct {p0, p4}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->isStartedFromLauncher(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p5, :cond_8

    .line 323
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->showToastAndExitIfNeeded()Z

    move-result p5

    if-eqz p5, :cond_8

    return v0

    :cond_8
    if-eqz p4, :cond_c

    if-nez v4, :cond_c

    if-nez v1, :cond_c

    .line 329
    iget-boolean p5, p4, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-eqz p5, :cond_b

    .line 330
    iget p5, p4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, p5, p1, p2, p3}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->splitPrimaryTaskImpl(IIILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 333
    iget-object p1, p4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    iget-object p1, p4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 334
    :goto_6
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object p1

    new-instance p2, Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$bJvDsDr4WyCJrwaIIDKac-ipxSA;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$bJvDsDr4WyCJrwaIIDKac-ipxSA;-><init>(Lcom/coloros/systemui/stackdivider/SplitToggleHelper;)V

    invoke-virtual {p1, p2}, Lcom/coloros/common/thread/ThreadManager;->postInMainThread(Ljava/lang/Runnable;)V

    :cond_a
    return v3

    .line 338
    :cond_b
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->showDismissingDockedStackToast()V

    :cond_c
    return v0
.end method

.method private splitPrimaryTaskImpl(IIILandroid/graphics/Rect;)Z
    .locals 4

    .line 350
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 351
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    .line 352
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getNavBarPosition(I)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 358
    :goto_0
    iget v2, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mStartType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 361
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p3

    .line 362
    invoke-static {p2}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;

    move-result-object p2

    .line 361
    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result p1

    goto :goto_1

    .line 364
    :cond_3
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->setTaskWindowingModeSplitScreenPrimary(IILandroid/graphics/Rect;)Z

    move-result p1

    .line 369
    :goto_1
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mStartType:I

    invoke-static {p2, p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->onSplitScreenLaunched(Landroid/content/Context;I)V

    return p1
.end method

.method private startType2ExitType(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method


# virtual methods
.method public exitSplitScreenMode(I)V
    .locals 2

    .line 152
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$gDrHgQQPszJ-vG6M3EhUqqJujbY;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$gDrHgQQPszJ-vG6M3EhUqqJujbY;-><init>(Lcom/coloros/systemui/stackdivider/SplitToggleHelper;I)V

    invoke-virtual {v0, v1}, Lcom/coloros/common/thread/ThreadManager;->postInTheadPool(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getExitType()I
    .locals 0

    .line 446
    iget p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mExitType:I

    return p0
.end method

.method public getStartType()I
    .locals 0

    .line 433
    iget p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mStartType:I

    return p0
.end method

.method public isSplittingScreen()Z
    .locals 1

    .line 437
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$exitSplitScreenMode$5$SplitToggleHelper(I)V
    .locals 4

    .line 153
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const-string v1, "SplitToggleHelper"

    const-string v2, "StackDivider"

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const-string p0, "Exit split-screen mode when not in multi-window!"

    .line 155
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit split-screen mode, state:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$mew0SpTMzv291fdupWxBZnsyDgU;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$mew0SpTMzv291fdupWxBZnsyDgU;-><init>(Lcom/coloros/systemui/stackdivider/SplitToggleHelper;I)V

    invoke-virtual {v0, v1}, Lcom/coloros/common/thread/ThreadManager;->postInMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$SplitToggleHelper(Z)V
    .locals 0

    .line 89
    invoke-static {}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->getInstance()Lcom/coloros/systemui/common/observer/SplitScreenObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->isSplitScreenEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x9

    .line 90
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->exitSplitScreenMode(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$null$2$SplitToggleHelper(I)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->onUndockingTask(I)V

    return-void
.end method

.method public synthetic lambda$null$4$SplitToggleHelper(I)V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->onUndockingTask(I)V

    return-void
.end method

.method public synthetic lambda$splitPrimaryTask$6$SplitToggleHelper()V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->onRecentsDrawn()V

    return-void
.end method

.method public synthetic lambda$toggleSplitScreenMode$3$SplitToggleHelper(I)V
    .locals 7

    .line 128
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 129
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleSplitScreenMode: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";isDocking="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SplitToggleHelper"

    const-string v5, "StackDivider"

    invoke-static {v5, v4, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 131
    iput p1, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mStartType:I

    .line 133
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, v2, v1, v0}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->isSplitScreenAvailable(ZLcom/android/systemui/shared/recents/model/Task;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move v6, p1

    .line 137
    invoke-direct/range {v1 .. v6}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->splitPrimaryTask(IILandroid/graphics/Rect;II)Z

    goto :goto_1

    .line 139
    :cond_2
    invoke-direct {p0, p1}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->startType2ExitType(I)I

    move-result v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleSplitScreenMode UndockingTaskEvent: exitType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v2, :cond_4

    .line 142
    invoke-static {}, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->getInstance()Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/observer/SplitScreenFingersObserver;->isSplitScreenFingersEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    invoke-static {}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->getInstance()Lcom/coloros/systemui/common/observer/SplitScreenObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->isSplitScreenEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return-void

    .line 146
    :cond_4
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$uw8ACps90gI0ZA7ZgVENq3Y5xG8;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$uw8ACps90gI0ZA7ZgVENq3Y5xG8;-><init>(Lcom/coloros/systemui/stackdivider/SplitToggleHelper;I)V

    invoke-virtual {v0, v1}, Lcom/coloros/common/thread/ThreadManager;->postInMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public notifyMultiWindowFocusChanged(I)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->onMultiWindowFocusChanged(I)V

    :cond_0
    return-void
.end method

.method public setExitType(I)V
    .locals 0

    .line 442
    iput p1, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mExitType:I

    return-void
.end method

.method public showDismissingDockedStackToast()V
    .locals 2

    .line 450
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f11071a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/SysUIToast;->showToastInMainThread(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public toggleSplitScreenMode(I)V
    .locals 2

    .line 121
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isSupportSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v0

    sget-object v1, Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$_geDrin6e9XZohwHNlRUilPLxUw;->INSTANCE:Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$_geDrin6e9XZohwHNlRUilPLxUw;

    invoke-virtual {v0, v1}, Lcom/coloros/common/thread/ThreadManager;->postInMainThread(Ljava/lang/Runnable;)V

    .line 127
    :cond_0
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$1i0kANpQo1RA2TU8OpE2AFsDjGg;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/stackdivider/-$$Lambda$SplitToggleHelper$1i0kANpQo1RA2TU8OpE2AFsDjGg;-><init>(Lcom/coloros/systemui/stackdivider/SplitToggleHelper;I)V

    invoke-virtual {v0, v1}, Lcom/coloros/common/thread/ThreadManager;->postInTheadPool(Ljava/lang/Runnable;)V

    return-void
.end method
