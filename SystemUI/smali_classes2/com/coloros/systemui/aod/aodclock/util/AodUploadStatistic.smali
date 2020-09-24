.class public Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;
.super Ljava/lang/Object;
.source "AodUploadStatistic.java"


# static fields
.field private static final EVENT_AOD_CLOCK_MODE:Ljava/lang/String; = "aod_clock_mode"

.field private static final EVENT_AOD_CLOCK_ONLY_STATIC:Ljava/lang/String; = "aod_clock_only_static"

.field private static final EVENT_AOD_DATE_MODE_STATIC:Ljava/lang/String; = "aod_date_mode_static"

.field private static final EVENT_AOD_ENABLE:Ljava/lang/String; = "aod_enable"

.field private static final EVENT_AOD_ENABLE_BATTERY:Ljava/lang/String; = "aod_enable_battery"

.field private static final EVENT_AOD_ENABLE_CLOCK_ONLY:Ljava/lang/String; = "aod_enable_clock_only"

.field private static final EVENT_AOD_ENABLE_DATE_MODE:Ljava/lang/String; = "aod_enable_date_mode"

.field private static final EVENT_AOD_ENABLE_IMMEDIATE:Ljava/lang/String; = "aod_enable_immediate"

.field private static final EVENT_AOD_ENABLE_NOTIFICATION:Ljava/lang/String; = "aod_enable_notification"

.field private static final EVENT_AOD_FORCE_DISAPPEAR_COUNT_STATIC:Ljava/lang/String; = "aod_force_disappear_count_static"

.field private static final EVENT_AOD_FORCE_DISAPPEAR_TIME_STATIC:Ljava/lang/String; = "aod_force_disappear_time_static"

.field private static final EVENT_AOD_MOBILE_DISPLAY_COUNT_STATIC:Ljava/lang/String; = "aod_mobile_display_count_static"

.field private static final EVENT_AOD_SWITCH_STATIC:Ljava/lang/String; = "aod_switch_static"

.field private static final EVENT_AOD_TIME_SETTINGS:Ljava/lang/String; = "aod_time_settings"

.field private static final EVENT_AOD_TIME_SETTING_STATIC:Ljava/lang/String; = "aod_time_setting_static"

.field private static final EVENT_AOD_TODAY_TOTAL_DISPLAY_TIME_STATIC:Ljava/lang/String; = "aod_today_total_display_time_static"

.field private static final EVENT_AOD_TODAY_TOTAL_HIDE_TIME_STATIC:Ljava/lang/String; = "aod_today_total_hide_time_static"

.field private static final EVENT_AOD_USER_SET_TIME:Ljava/lang/String; = "aod_user_set_time"

.field private static final EVENT_AOD_USER_SET_TIME_STATIC:Ljava/lang/String; = "aod_user_set_time_static"

.field private static final EVENT_CURVED_DISPLAY_NOTIFICATION_SWITCH:Ljava/lang/String; = "curved_display_notification_switch"

.field public static final STATUS_OFF:Ljava/lang/String; = "OFF"

.field public static final STATUS_ON:Ljava/lang/String; = "ON"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uploadAodClockMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "aod_clock_mode"

    .line 189
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static uploadAodClockOnlyStatic(Landroid/content/Context;)V
    .locals 4

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const-string v2, "Setting_AodEnableClockOnly"

    .line 103
    invoke-static {p0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    if-eqz v1, :cond_1

    const-string v1, "ON"

    goto :goto_0

    :cond_1
    const-string v1, "OFF"

    :goto_0
    const-string v2, "aod_clock_only_static"

    .line 104
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p0, v2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static uploadAodDateModeStatic(Landroid/content/Context;)V
    .locals 3

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Setting_AodEnableDateMode"

    const/4 v2, 0x0

    .line 110
    invoke-static {p0, v1, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 111
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aod_date_mode_static"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p0, v2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uploadAodEnable(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "aod_enable"

    .line 147
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uploadAodEnableBattery(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "aod_enable_battery"

    .line 171
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uploadAodEnableClockOnly(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "aod_enable_clock_only"

    .line 183
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uploadAodEnableDateMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "aod_enable_date_mode"

    .line 165
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uploadAodEnableImmediate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "aod_enable_immediate"

    .line 159
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uploadAodEnableNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "aod_enable_notification"

    .line 177
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uploadAodStatic(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadAodSwitchStatic(Landroid/content/Context;)V

    .line 57
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadAodUserSetTimeStatic(Landroid/content/Context;)V

    .line 58
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadAodTimeSettingsStatic(Landroid/content/Context;)V

    .line 59
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadAodClockOnlyStatic(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadAodDateModeStatic(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isIsPreventedScreenBurn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodEnableImmediateOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->updateAodUploadPreventData()V

    .line 64
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadTodayTotalHideTimeStatic(Landroid/content/Context;)V

    .line 65
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadTodayTotalDisplayTimeStatic(Landroid/content/Context;)V

    .line 66
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadForceDisappearTimesStatic(Landroid/content/Context;)V

    .line 67
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadForceDisappearCountStatic(Landroid/content/Context;)V

    .line 68
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadMobileDisplayCountStatic(Landroid/content/Context;)V

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->resetUploadData()V

    :cond_1
    return-void
.end method

.method private static uploadAodSwitchStatic(Landroid/content/Context;)V
    .locals 4

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const-string v2, "Setting_AodEnableImmediate"

    .line 76
    invoke-static {p0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    if-eqz v1, :cond_1

    const-string v1, "ON"

    goto :goto_0

    :cond_1
    const-string v1, "OFF"

    :goto_0
    const-string v2, "aod_switch_static"

    .line 77
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {p0, v2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uploadAodTimeSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "aod_time_settings"

    .line 195
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static uploadAodTimeSettingsStatic(Landroid/content/Context;)V
    .locals 6

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const-string v2, "Setting_AodSetTimeBeginHour"

    .line 93
    invoke-static {p0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Setting_AodSetTimeBeginMin"

    .line 94
    invoke-static {p0, v3, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "Setting_AodSetTimeEndHour"

    .line 95
    invoke-static {p0, v4, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "Setting_AodSetTimeEndMin"

    .line 96
    invoke-static {p0, v5, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 97
    invoke-static {v2, v3, v4, v1}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->getUserSetTime(IIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aod_time_setting_static"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {p0, v2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uploadAodUserSetTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "aod_user_set_time"

    .line 153
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static uploadAodUserSetTimeStatic(Landroid/content/Context;)V
    .locals 4

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const-string v2, "Setting_AodUserSetTime"

    .line 83
    invoke-static {p0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "ON"

    goto :goto_0

    :cond_1
    const-string v2, "OFF"

    :goto_0
    const-string v3, "aod_user_set_time_static"

    .line 84
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 86
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadAodTimeSettingsStatic(Landroid/content/Context;)V

    .line 88
    :cond_2
    invoke-static {p0, v3, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uploadCurvedDisplayNotificationSwitch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "curved_display_notification_switch"

    .line 201
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static uploadForceDisappearCountStatic(Landroid/content/Context;)V
    .locals 3

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getForceDisappearCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aod_force_disappear_count_static"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {p0, v2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static uploadForceDisappearTimesStatic(Landroid/content/Context;)V
    .locals 3

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getForceDisappearTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aod_force_disappear_time_static"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p0, v2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static uploadMobileDisplayCountStatic(Landroid/content/Context;)V
    .locals 3

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getMobileDisplayCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aod_mobile_display_count_static"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p0, v2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static uploadTodayTotalDisplayTimeStatic(Landroid/content/Context;)V
    .locals 3

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getCurrentDayTotalDisplayTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aod_today_total_display_time_static"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p0, v2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static uploadTodayTotalHideTimeStatic(Landroid/content/Context;)V
    .locals 3

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getCurrentDayTotalHideTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aod_today_total_hide_time_static"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p0, v2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
