.class public Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil;
.super Ljava/lang/Object;
.source "NavigationBarStatisticUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;
    }
.end annotation


# static fields
.field private static final EVENT_ID_SIDE_GESTURE_SETTINGS_STATUS:Ljava/lang/String; = "side_gesture_settings_status"

.field private static final EVENT_ID_SIDE_GESTURE_TRIGGER_BACK:Ljava/lang/String; = "side_gesture_trigger_back"

.field public static final EVENT_SIDE_GESTURE_BACK:Ljava/lang/String; = "side_gesture_back"

.field public static final EVENT_SIDE_GESTURE_SWITCH:Ljava/lang/String; = "side_gesture_switch"

.field public static final EVENT_SIDE_GESTURE_TRIGGER:Ljava/lang/String; = "side_gesture_trigger"

.field private static final LOG_TAG:Ljava/lang/String; = "20082002"

.field private static final MAX_BACK_Count:I = 0xa

.field private static final NAV_GESTURES_EVENT_ID:Ljava/lang/String; = "navigation_gestures"

.field private static final NAV_GESTURES_KEY:Ljava/lang/String; = "gestures_key"

.field private static final NAV_GESTURES_POINT:Ljava/lang/String; = "gestures_event"

.field public static final NAV_KEY_BACK:Ljava/lang/String; = "key_back"

.field public static final NAV_KEY_HOME:Ljava/lang/String; = "key_home"

.field public static final NAV_KEY_MENU:Ljava/lang/String; = "key_menu"

.field private static final SIDE_GESTURE_COUNT:Ljava/lang/String; = "count"

.field private static final SIDE_GESTURE_EVENT:Ljava/lang/String; = "side_gesture_event"

.field private static final SIDE_GESTURE_EVENT_ID:Ljava/lang/String; = "side_gesture"

.field private static final SIDE_GESTURE_OPTION:Ljava/lang/String; = "side_gesture_option"

.field private static final SIDE_GESTURE_OPTION_STATUS:Ljava/lang/String; = "option_status"

.field private static final SIDE_GESTURE_SIDE:Ljava/lang/String; = "side_gesture_side"

.field private static final SIDE_HIDE_GESTURE_OPTION:Ljava/lang/String; = "side_gesture_hide_option"

.field public static final SIDE_LEFT:Ljava/lang/String; = "left"

.field public static final SIDE_RIGHT:Ljava/lang/String; = "right"

.field private static final TAG:Ljava/lang/String; = "NavigationBarStatisticUtil"

.field private static mCurrentBackCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectNavGestureState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gestures_key"

    .line 90
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gestures_event"

    .line 91
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20082002"

    const-string p2, "navigation_gestures"

    const/4 v1, 0x0

    .line 92
    invoke-static {p0, p1, p2, v0, v1}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static collectSideGestureState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "side_gesture_event"

    .line 97
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "side_gesture_side"

    .line 98
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20082002"

    const-string p2, "side_gesture"

    const/4 v1, 0x0

    .line 99
    invoke-static {p0, p1, p2, v0, v1}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static collectSideGestureTriggerBack(Landroid/content/Context;)V
    .locals 3

    .line 75
    sget v0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil;->mCurrentBackCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil;->mCurrentBackCount:I

    .line 76
    sget v0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil;->mCurrentBackCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    sget v1, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil;->mCurrentBackCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-boolean v1, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v1, :cond_1

    .line 82
    sget-object v1, Lcom/coloros/systemui/navbar/-$$Lambda$NavigationBarStatisticUtil$1jPqmQiVUiL6-NFyPjpcDavngNk;->INSTANCE:Lcom/coloros/systemui/navbar/-$$Lambda$NavigationBarStatisticUtil$1jPqmQiVUiL6-NFyPjpcDavngNk;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_1
    const/4 v1, 0x0

    .line 84
    sput v1, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil;->mCurrentBackCount:I

    const-string v1, "20082002"

    const-string v2, "side_gesture_trigger_back"

    .line 85
    invoke-static {p0, v1, v2, v0}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static collectSideGestureUsage(Landroid/content/Context;I)V
    .locals 3

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "side_gesture_option"

    const-string v2, "side_gesture_hide_option"

    .line 65
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "option_status"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-boolean p1, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz p1, :cond_0

    .line 69
    sget-object p1, Lcom/coloros/systemui/navbar/-$$Lambda$NavigationBarStatisticUtil$YF9vMpJsMbzsQbRXGpeUzltt7Uc;->INSTANCE:Lcom/coloros/systemui/navbar/-$$Lambda$NavigationBarStatisticUtil$YF9vMpJsMbzsQbRXGpeUzltt7Uc;

    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    const-string p1, "20082002"

    const-string v1, "side_gesture_settings_status"

    .line 71
    invoke-static {p0, p1, v1, v0}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$collectSideGestureTriggerBack$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBar"

    const-string v0, "NavigationBarStatisticUtil"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$collectSideGestureUsage$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBar"

    const-string v0, "NavigationBarStatisticUtil"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
