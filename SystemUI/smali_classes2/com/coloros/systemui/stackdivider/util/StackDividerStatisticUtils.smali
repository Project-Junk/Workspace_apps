.class public Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;
.super Ljava/lang/Object;
.source "StackDividerStatisticUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;,
        Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;
    }
.end annotation


# static fields
.field private static final APPID_SPLIT_SCREEN_TAG:Ljava/lang/String; = "20232"

.field private static final APPLICATION_SPLIT_SCREEN_TAG:Ljava/lang/String; = "20232001"

.field private static final APP_USAGE_INFO_LIMIT:I = 0xbb8

.field private static final EVENT_ID_LAUNCH_MULTI_WINDOW:Ljava/lang/String; = "launch_multi_window"

.field private static final EVENT_ID_MULTI_WINDOW_STATIC_EVENT:Ljava/lang/String; = "multi_window_static_event"

.field public static final EVENT_ID_SPLIT_CHOOSER_ACTIVITY:Ljava/lang/String; = "split_chooser_activity"

.field private static final EVENT_ID_SPLIT_SCREEN_EXIT:Ljava/lang/String; = "split_screen_exit"

.field private static final EVENT_ID_SPLIT_SCREEN_LAUNCH:Ljava/lang/String; = "split_screen_launch"

.field private static final EVENT_ID_SPLIT_SCREEN_MENU_OPERATION:Ljava/lang/String; = "split_screen_menu_operation"

.field private static final EVENT_ID_SPLIT_SCREEN_SETTING:Ljava/lang/String; = "split_screen_setting"

.field private static final EVENT_ID_SPLIT_SCREEN_UNDOCK_INFO:Ljava/lang/String; = "split_screen_undock_info"

.field private static final EVENT_ID_SPLIT_SCREEN_USAGES_INFO:Ljava/lang/String; = "split_screen_usages_info"

.field public static final EVENT_ID_SPLIT_SETTING_ACTIVITY:Ljava/lang/String; = "split_setting_activity"

.field public static final EVENT_ID_SPLIT_SETTING_JUMP_ACTIVITY:Ljava/lang/String; = "split_setting_jump_activity"

.field private static final EVENT_ID_UNDOCKABLE_PKG:Ljava/lang/String; = "undockable_pkg"

.field private static final EXIT_WITH_DRAGGING_SPLIT_LINE:I = 0x3

.field private static final EXIT_WITH_ENTER_UNDOCK_APP:I = 0x4

.field private static final EXIT_WITH_LONG_PRESS_TASK_BUTTON:I = 0x1

.field private static final EXIT_WITH_OTHER_TYPES:I = 0x5

.field private static final EXIT_WITH_SPLIT_SCREEN_MENU_CLOSE:I = 0x2

.field private static final EXIT_WITH_THREE_FINGERS:I = 0x0

.field public static final FULL_SCREEN_LAUNCH:I = 0x1

.field private static final KEY_APP_SPLIT_SCREEN_SWITCHER:Ljava/lang/String; = "application_split_screen_switcher"

.field private static final KEY_APP_USAGES:Ljava/lang/String; = "app_usages"

.field private static final KEY_BOTTOM_WINDOW_USAGE:Ljava/lang/String; = "bottom_window_usage"

.field private static final KEY_CLOSE_SPLIT_MENU:Ljava/lang/String; = "close_split_menu"

.field private static final KEY_DOCKED_DURATION:Ljava/lang/String; = "docked_duration"

.field private static final KEY_DOCKED_PKG:Ljava/lang/String; = "docked_pkg"

.field private static final KEY_DRAG_SPLIT_LINE:Ljava/lang/String; = "drag_split_line"

.field private static final KEY_EXIT_MODE:Ljava/lang/String; = "exit_mode"

.field private static final KEY_EXIT_STYLE:Ljava/lang/String; = "exit_style"

.field public static final KEY_ID_ACTIVITY_NAME:Ljava/lang/String; = "activityName"

.field private static final KEY_LAUNCHED_MULTI_WINDOW:Ljava/lang/String; = "launched_multi_window"

.field private static final KEY_LAUNCH_STYLE:Ljava/lang/String; = "start_style"

.field private static final KEY_MULTI_WINDOW_GESTURE_TOGGLE:Ljava/lang/String; = "multi_window_gesture_toggle"

.field private static final KEY_MULTI_WINDOW_TOGGLE:Ljava/lang/String; = "multi_window_toggle"

.field private static final KEY_OPEN_SPLIT_MENU:Ljava/lang/String; = "open_split_menu"

.field private static final KEY_PKG_NAME:Ljava/lang/String; = "pkg_name"

.field private static final KEY_SPLIT_ENTRANCE:Ljava/lang/String; = "entrance"

.field private static final KEY_SPLIT_WINDOW_TOTAL_DURATION:Ljava/lang/String; = "split_window_total_duration"

.field private static final KEY_START_STYLE:Ljava/lang/String; = "start_style"

.field private static final KEY_SWITCH_SPLIT_SCREEN:Ljava/lang/String; = "switch_split_screen"

.field private static final KEY_THREE_FINGERS_SWITCHER:Ljava/lang/String; = "three_fingers_switcher"

.field private static final KEY_UNDOCKABLE_PKG:Ljava/lang/String; = "key_undockable_pkg"

.field private static final KEY_UNDOCKABLE_START_TYPE:Ljava/lang/String; = "key_undockable_start_type"

.field private static final KEY_UP_WINDOW_USAGE:Ljava/lang/String; = "up_window_usage"

.field private static final LAUNCH_ILLEGAL:I = -0x1

.field private static final LAUNCH_WITH_LONG_PRESS_TASK_BUTTON:I = 0x2

.field private static final LAUNCH_WITH_MULTI_TASK_CARD_CLICK:I = 0x3

.field private static final LAUNCH_WITH_SIDEBAR_DRAGGING:I = 0x4

.field private static final LAUNCH_WITH_THREE_FINGERS:I = 0x1

.field private static final LOCK_INTERVAL_TIME:J = 0x5265c00L

.field private static final MULTI_WINDOW_STATIC_EVENT_UPLOAD_TIME:Ljava/lang/String; = "multi_window_static_event_upload_time"

.field public static final NO_LAUNCH:I = 0x0

.field private static final OPERATION_NO_TRIGGERED:I = 0x0

.field private static final OPERATION_TRIGGERED:I = 0x1

.field private static final RECENTS_LOG_TAG:Ljava/lang/String; = "20110"

.field private static final SEPARATOR_ELEMENT:Ljava/lang/String; = "&&"

.field private static final SEPARATOR_KV:Ljava/lang/String; = "##"

.field private static final SPLIT_SCREEN_SEPERATE_ELE:Ljava/lang/String; = "##"

.field private static final SPLIT_SCREEN_SEPERATE_KV:Ljava/lang/String; = "&&"

.field public static final SPLIT_SCREEN_STATICS_TAG:Ljava/lang/String; = "SplitScreeenStaticsUtils"

.field private static final SWITCHER_FROM_OFF_TO_ON:I = 0x1

.field private static final SWITCHER_FROM_ON_TO_OFF:I = 0x0

.field public static final TAG:Ljava/lang/String; = "StackDividerStatisticUtils"

.field private static mSplitScreenMenuOperationInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo; = null

.field private static mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo; = null

.field private static sAppLaunchTimeLower:J = -0x1L

.field private static sAppLaunchTimeUpper:J = -0x1L

.field private static sAppUsagesLower:Ljava/lang/StringBuilder; = null

.field private static sAppUsagesUpper:Ljava/lang/StringBuilder; = null

.field private static sDockedPkgLower:Ljava/lang/String; = ""

.field private static sDockedPkgUpper:Ljava/lang/String; = ""

.field private static sDockedStartTime:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-direct {v0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;-><init>()V

    sput-object v0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenMenuOperationInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    .line 170
    new-instance v0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-direct {v0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;-><init>()V

    sput-object v0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityDismissingDockedStack(Landroid/content/Context;)V
    .locals 2

    .line 517
    invoke-static {}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->getInstance()Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->setExitType(I)V

    .line 520
    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;->getCurrentTopPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 519
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->onSplitScreenUndockInfo(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static getSplitScreenUsagesInfo()Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;
    .locals 1

    .line 172
    sget-object v0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    return-object v0
.end method

.method public static getmSplitScreenMenuOperationInfo()Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;
    .locals 1

    .line 122
    sget-object v0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenMenuOperationInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    return-object v0
.end method

.method public static onDockedStackExistsChanged(Landroid/content/Context;ZLandroid/os/Handler;I)V
    .locals 4

    const-wide/16 v0, 0x3e8

    if-nez p1, :cond_1

    .line 444
    invoke-virtual {p2, p3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 445
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    int-to-long v2, p3

    .line 447
    invoke-virtual {p2, p3, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    div-long/2addr p1, v0

    .line 450
    sget-object p3, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p3, p1, p2}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setUpAppUsagesInfo(J)V

    .line 451
    sget-object p3, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p3, p1, p2}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setBottomAppUsagesInfo(J)V

    .line 452
    sget-object p3, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p3, p1, p2}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setSplitWindowTotalDuration(J)V

    .line 453
    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->onSplitScreenUsagesInfo(Landroid/content/Context;)V

    goto :goto_1

    .line 455
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    div-long/2addr p0, v0

    .line 456
    sget-object p2, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p2, p0, p1}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setSplitWindowStartTime(J)V

    .line 457
    invoke-static {}, Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;->getAllTopAppInfo()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 461
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/color/app/ColorAppInfo;

    .line 462
    iget v0, p3, Lcom/color/app/ColorAppInfo;->windowingMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 463
    iget-object v0, p3, Lcom/color/app/ColorAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcom/color/app/ColorAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 464
    sget-object v0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    iget-object p3, p3, Lcom/color/app/ColorAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3, p0, p1}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setUpAppUsageStartTimeAndPkgName(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static onDockedStackMinimizedChanged(Landroid/content/Context;Z)V
    .locals 5

    const-wide/16 v0, 0x3e8

    if-nez p1, :cond_2

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    div-long/2addr p0, v0

    .line 475
    invoke-static {}, Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;->getAllTopAppInfo()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/app/ColorAppInfo;

    .line 480
    iget v2, v1, Lcom/color/app/ColorAppInfo;->windowingMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 481
    iget-object v2, v1, Lcom/color/app/ColorAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/color/app/ColorAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 482
    sget-object v2, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    iget-object v1, v1, Lcom/color/app/ColorAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, p0, p1}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setBottomAppUsagesStartTimeAndPkgName(Ljava/lang/String;J)V

    goto :goto_0

    .line 487
    :cond_2
    invoke-static {}, Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;->getAllTopAppInfo()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_3

    return-void

    .line 491
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/app/ColorAppInfo;

    .line 492
    iget v2, p1, Lcom/color/app/ColorAppInfo;->windowingMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 493
    iget-object v2, p1, Lcom/color/app/ColorAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/color/app/ColorAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    .line 494
    invoke-static {v2}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->access$700(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p1, Lcom/color/app/ColorAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 495
    sget-object v2, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    iget-object p1, p1, Lcom/color/app/ColorAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    .line 496
    invoke-static {v3}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->access$800(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)J

    move-result-wide v3

    .line 495
    invoke-virtual {v2, p1, v3, v4}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setUpAppUsageStartTimeAndPkgName(Ljava/lang/String;J)V

    goto :goto_1

    .line 500
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    div-long/2addr p0, v0

    .line 501
    sget-object v0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setBottomAppUsagesInfo(J)V

    :cond_6
    return-void
.end method

.method public static onFingersSwitcherSetting(Landroid/content/Context;Z)V
    .locals 6

    .line 359
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "three_fingers_switcher"

    if-nez p1, :cond_0

    const-string p1, "0"

    .line 361
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "1"

    .line 363
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFingersSwitcherSetting(), eventID:split_screen_setting,logMap"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StackDivider"

    const-string v1, "SplitScreeenStaticsUtils"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "20232"

    const-string v2, "20232001"

    const-string v3, "split_screen_setting"

    const/4 v5, 0x0

    move-object v0, p0

    .line 368
    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "StackDividerStatisticUtils"

    const-string p1, "NearMeStatistics no method onCommon!!"

    .line 371
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static onSplitScreenExited(Landroid/content/Context;)V
    .locals 6

    .line 303
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 304
    invoke-static {}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->getInstance()Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->getExitType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const-string v0, "5"

    goto :goto_0

    :cond_0
    const-string v0, "4"

    goto :goto_0

    :cond_1
    const-string v0, "3"

    goto :goto_0

    :cond_2
    const-string v0, "2"

    goto :goto_0

    :cond_3
    const-string v0, "1"

    goto :goto_0

    :cond_4
    const-string v0, "0"

    :goto_0
    const-string v1, "exit_style"

    .line 325
    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSplitScreenExited(), eventID:split_screen_exit,logMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackDivider"

    const-string v2, "SplitScreeenStaticsUtils"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "20232"

    const-string v2, "20232001"

    const-string v3, "split_screen_exit"

    const/4 v5, 0x0

    move-object v0, p0

    .line 329
    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "StackDividerStatisticUtils"

    const-string v0, "NearMeStatistics no method onCommon!!"

    .line 332
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_1
    invoke-static {}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->getInstance()Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->setExitType(I)V

    return-void
.end method

.method public static onSplitScreenLaunched(Landroid/content/Context;I)V
    .locals 6

    .line 278
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "-1"

    goto :goto_0

    :cond_0
    const-string p1, "2"

    goto :goto_0

    :cond_1
    const-string p1, "1"

    :goto_0
    const-string v0, "start_style"

    .line 290
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSplitScreenLaunched(), eventID:split_screen_launch,logMap:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StackDivider"

    const-string v1, "SplitScreeenStaticsUtils"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "20232"

    const-string v2, "20232001"

    const-string v3, "split_screen_launch"

    const/4 v5, 0x0

    move-object v0, p0

    .line 294
    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "StackDividerStatisticUtils"

    const-string p1, "NearMeStatistics no method onCommon!!"

    .line 297
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static onSplitScreenMenuOperation(Landroid/content/Context;)V
    .locals 10

    .line 377
    sget-object v0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenMenuOperationInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-static {v0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->access$000(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I

    move-result v0

    .line 378
    sget-object v1, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenMenuOperationInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-static {v1}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->access$100(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I

    move-result v1

    .line 379
    sget-object v2, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenMenuOperationInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-static {v2}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->access$200(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I

    move-result v2

    .line 380
    sget-object v3, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenMenuOperationInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-static {v3}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->access$300(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I

    move-result v3

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    return-void

    .line 387
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "open_split_menu"

    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "close_split_menu"

    invoke-virtual {v8, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "switch_split_screen"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drag_split_line"

    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSplitScreenMenuOperation(), eventID:split_screen_menu_operation,logMap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackDivider"

    const-string v2, "SplitScreeenStaticsUtils"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v5, "20232"

    const-string v6, "20232001"

    const-string v7, "split_screen_menu_operation"

    const/4 v9, 0x0

    move-object v4, p0

    .line 395
    invoke-static/range {v4 .. v9}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "StackDividerStatisticUtils"

    const-string v0, "NearMeStatistics no method onCommon!!"

    .line 398
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_0
    sget-object p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenMenuOperationInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->access$400(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)V

    return-void
.end method

.method public static onSplitScreenSwitcherSetting(Landroid/content/Context;Z)V
    .locals 6

    .line 340
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "application_split_screen_switcher"

    if-nez p1, :cond_0

    const-string p1, "0"

    .line 342
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "1"

    .line 344
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSplitScreenSwitcherSetting(), eventID:split_screen_setting,logMap"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StackDivider"

    const-string v1, "SplitScreeenStaticsUtils"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "20232"

    const-string v2, "20232001"

    const-string v3, "split_screen_setting"

    const/4 v5, 0x0

    move-object v0, p0

    .line 349
    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "StackDividerStatisticUtils"

    const-string p1, "NearMeStatistics no method onCommon!!"

    .line 352
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static onSplitScreenUndockInfo(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    .line 405
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "pkg_name"

    .line 407
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "start_style"

    .line 408
    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSplitScreenUndockInfo(), eventID:split_screen_undock_info,logMap"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StackDivider"

    const-string v0, "SplitScreeenStaticsUtils"

    invoke-static {p2, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "20232"

    const-string v2, "20232001"

    const-string v3, "split_screen_undock_info"

    const/4 v5, 0x0

    move-object v0, p0

    .line 412
    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "StackDividerStatisticUtils"

    const-string p1, "NearMeStatistics no method onCommon!!"

    .line 415
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static onSplitScreenUsagesInfo(Landroid/content/Context;)V
    .locals 7

    .line 421
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 422
    sget-object v0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->getUpAppUsagesInfo()Ljava/lang/String;

    move-result-object v0

    .line 423
    sget-object v1, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {v1}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->getBottomAppUsagesInfo()Ljava/lang/String;

    move-result-object v1

    .line 424
    sget-object v2, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-static {v2}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->access$500(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    const-string v6, ""

    if-nez v5, :cond_0

    .line 425
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    const-string v5, "up_window_usage"

    .line 428
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bottom_window_usage"

    .line 429
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "split_window_total_duration"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSplitScreenUsagesInfo(), eventID:split_screen_usages_info,logMap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackDivider"

    const-string v2, "SplitScreeenStaticsUtils"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "20232"

    const-string v2, "20232001"

    const-string v3, "split_screen_usages_info"

    const/4 v5, 0x0

    move-object v0, p0

    .line 434
    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "StackDividerStatisticUtils"

    const-string v0, "NearMeStatistics no method onCommon!!"

    .line 437
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_0
    sget-object p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->access$600(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)V

    return-void
.end method

.method public static swapDockedStack(Landroid/content/Context;)V
    .locals 4

    .line 506
    sget-object p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenMenuOperationInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->setSwitchSplitScreenTriggered()V

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 509
    sget-object p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setUpAppUsagesInfo(J)V

    .line 510
    sget-object p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setBottomAppUsagesInfo(J)V

    .line 511
    sget-object p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->access$900(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)Ljava/lang/String;

    move-result-object p0

    .line 512
    sget-object v2, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-static {v2}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->access$1000(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setUpAppUsageStartTimeAndPkgName(Ljava/lang/String;J)V

    .line 513
    sget-object v2, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->mSplitScreenUsagesInfo:Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {v2, p0, v0, v1}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setBottomAppUsagesStartTimeAndPkgName(Ljava/lang/String;J)V

    return-void
.end method
