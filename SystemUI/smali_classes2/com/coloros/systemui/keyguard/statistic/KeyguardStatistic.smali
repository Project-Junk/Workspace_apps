.class public Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;
.super Ljava/lang/Object;
.source "KeyguardStatistic.java"


# static fields
.field public static final CODE_FINGERPRINT_WAKEUP_ONSCREEN_FP:Ljava/lang/String; = "2"

.field public static final CODE_FINGERPRINT_WAKEUP_TOUCH_FP:Ljava/lang/String; = "1"

.field public static final CODE_KEYGUARD_FINGERPRINT_WAKEUP:Ljava/lang/String; = "fingerprint_unlock_wakeup"

.field public static final CODE_KEYGUARD_LOCK_WALLPAPER_STATE:Ljava/lang/String; = "lock_wallpaper"

.field public static final CODE_KEYGUARD_LOCK_WALLPAPER_STATE_SET:Ljava/lang/String; = "0"

.field public static final CODE_KEYGUARD_LOCK_WALLPAPER_STATE_UN_SET:Ljava/lang/String; = "1"

.field public static final CODE_KEYGUARD_PIC_TYPE:Ljava/lang/String; = "pictype"

.field public static final CODE_KEYGUARD_SCREEN_STATE_COLOR_KEYGUARD:Ljava/lang/String; = "2"

.field public static final CODE_KEYGUARD_SCREEN_STATE_OTHER:Ljava/lang/String; = "3"

.field public static final CODE_KEYGUARD_SCREEN_STATE_PICTORIAL:Ljava/lang/String; = "0"

.field public static final CODE_KEYGUARD_SCREEN_STATE_TYPE:Ljava/lang/String; = "type"

.field public static final CODE_KEYGUARD_SCREEN_STATE_WALLPAPER:Ljava/lang/String; = "1"

.field public static final CODE_KEYGUARD_SWITCH_MAGAZINE:Ljava/lang/String; = "switch_magazine"

.field public static final CODE_KEYGUARD_SWITCH_MAGAZINE_CLOSE:Ljava/lang/String; = "0"

.field public static final CODE_KEYGUARD_SWITCH_MAGAZINE_OPEN:Ljava/lang/String; = "1"

.field public static final CODE_PICTORIAL_IMAGE_GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final CODE_PICTORIAL_IMAGE_ID:Ljava/lang/String; = "id"

.field public static final CODE_PICTORIAL_SEND_TIME:Ljava/lang/String; = "time"

.field private static final DEBUG_DATA_COLLECTION:Z = false

.field public static final EVENT_CHECK_FP_ATTEMPT_LOCKOUT:Ljava/lang/String; = "check_fp_attempt_lockout"

.field public static final EVENT_CHECK_FP_IN_SECURITY_VIEW:Ljava/lang/String; = "check_fp_in_security_view"

.field public static final EVENT_CHECK_INPUTED_PWD_IN_SECURITY_VIEW:Ljava/lang/String; = "check_inputed_pwd_in_security_view"

.field public static final EVENT_COMBINE_UNLOCK:Ljava/lang/String; = "combine_unlock"

.field public static final EVENT_COUNTS_CAMERA_UNLOCK:Ljava/lang/String; = "counts_camera_unlock"

.field public static final EVENT_COUNTS_CLICK_ENTER_SLIDE_PAGE:Ljava/lang/String; = "counts_click_enter_slide_page"

.field public static final EVENT_COUNTS_CLICK_LOCK:Ljava/lang/String; = "counts_click_lock"

.field public static final EVENT_COUNTS_PULL_DOWN_LOCK:Ljava/lang/String; = "counts_pull_down_lock"

.field public static final EVENT_COUNTS_SLIDE_ENTER_SLIDE_PAGE:Ljava/lang/String; = "counts_slide_enter_slide_page"

.field public static final EVENT_EMERGENCY_BUTTON_IN_SECURITY_VIEW:Ljava/lang/String; = "emergency_button_in_security_view"

.field public static final EVENT_FACEVERIFY_UNLOCK:Ljava/lang/String; = "faceverify_unlock"

.field public static final EVENT_FACE_FILLLIGHT:Ljava/lang/String; = "face_filllight"

.field public static final EVENT_FINGERPRINT_THEME_STYLE:Ljava/lang/String; = "fingerprint_theme_style"

.field public static final EVENT_FINGERPRINT_UNLOCK:Ljava/lang/String; = "fingerprint_unlock"

.field public static final EVENT_FP_TOTAL_SCREEN_OFF_SHOW_COUNTS:Ljava/lang/String; = "fingerprint_total_screen_off_show_counts"

.field public static final EVENT_FP_TOTAL_SCREEN_OFF_SHOW_TIME:Ljava/lang/String; = "fingerprint_total_screen_off_show_time"

.field public static final EVENT_KEYBOARD_BACK_BUTTON_IN_SECURITY_VIEW:Ljava/lang/String; = "keyboard_back_button_in_security_view"

.field public static final EVENT_KEYGUARD_REBOOT_STATE:Ljava/lang/String; = "keyguard_reboot_state"

.field public static final EVENT_MOVE_TO_NORMAL_VIEW_IN_SECURITY_VIEW:Ljava/lang/String; = "move_to_normal_view_in_security_view"

.field public static final EVENT_NEEDS_VERIFY_PWD_BEYOND_72_HOURS:Ljava/lang/String; = "needs_verify_pwd_beyond_72_hours"

.field public static final EVENT_NEEDS_VERIFY_PWD_WHEN_REBOOTED:Ljava/lang/String; = "needs_verify_pwd_when_rebooted"

.field public static final EVENT_PHYSICAL_BACK_BUTTON_IN_SECURITY_VIEW:Ljava/lang/String; = "physical_back_button_in_security_view"

.field public static final EVENT_PICTORIAL_STATIC_SWITCH_OS:Ljava/lang/String; = "static_switch_os"

.field public static final EVENT_SCREEN_SHOW:Ljava/lang/String; = "screen_show"

.field public static final EVENT_SMARTLOCK_STATUS:Ljava/lang/String; = "smartlock_status"

.field public static final EVENT_SMARTLOCK_UNLOCK:Ljava/lang/String; = "smartlock_unlock"

.field public static final EVENT_UNLOCK_WITH_DEFAULT:Ljava/lang/String; = "unlock_with_default_keyguard"

.field public static final EVENT_UNLOCK_WITH_NOT_DEFAULT:Ljava/lang/String; = "unlock_with_not_default_keyguard"

.field public static final EVENT_VERIFY_PWD_ATTEMPT_LOCKOUT:Ljava/lang/String; = "verify_pwd_attempt_lockout"

.field public static final EVENT_VIRTUAL_BACK_BUTTON_IN_SECURITY_VIEW:Ljava/lang/String; = "virtual_back_button_in_security_view"

.field public static final FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

.field public static final KEY_KEYGUARD_SMARTLOCK_MODE:Ljava/lang/String; = "smartlock_mode"

.field private static final LAST_SEND_DURABLE_COUNT_TIME:Ljava/lang/String; = "last_send_durable_count_time"

.field private static final LOG_TAG:Ljava/lang/String; = "20082003"

.field public static final NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEND_DURABLE_INTERVAL:I = 0xa4cb80

.field public static final SEND_DURABLE_INTERVAL_ONE_DAY:I = 0x5265c00

.field private static final TAG:Ljava/lang/String; = "KeyguardStatistic"

.field private static final USER_DATA_COLLECTION_INFO:Ljava/lang/String; = "user_data_collection_info"

.field public static sDurableCounter:Lcom/coloros/systemui/keyguard/statistic/DurableCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 111
    sput-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sDurableCounter:Lcom/coloros/systemui/keyguard/statistic/DurableCounter;

    .line 116
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "unlock_with_default_keyguard"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "unlock_with_not_default_keyguard"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "fingerprint_total_screen_off_show_counts"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "counts_camera_unlock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "verify_pwd_attempt_lockout"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "check_fp_attempt_lockout"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "physical_back_button_in_security_view"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "move_to_normal_view_in_security_view"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "virtual_back_button_in_security_view"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "keyboard_back_button_in_security_view"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "emergency_button_in_security_view"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "check_fp_in_security_view"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "counts_pull_down_lock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "counts_click_lock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "counts_click_enter_slide_page"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "counts_slide_enter_slide_page"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "needs_verify_pwd_when_rebooted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    sget-object v1, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->FLAG_USE_DURABLE_COUNT:Ljava/lang/Integer;

    const-string v2, "needs_verify_pwd_beyond_72_hours"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onTimeChanged$0(Landroid/content/Context;)V
    .locals 8

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->readLastSendingDurableCountTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/32 v6, 0xa4cb80

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 233
    invoke-static {}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->saveDurableCount()V

    .line 235
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendDurableCountEvent(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sub-long/2addr v2, v0

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    .line 239
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->writeLastSendingDurableCountTime(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static nearMeStatisticsCollect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->nearMeStatisticsCollect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private static nearMeStatisticsCollect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "20082003"

    .line 141
    invoke-static {p0, v0, p1, p2, p3}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static onTimeChanged(Landroid/content/Context;)V
    .locals 1

    .line 227
    new-instance v0, Lcom/coloros/systemui/keyguard/statistic/-$$Lambda$KeyguardStatistic$62L8gZ9jYSt_adKT1JhT-0yprRc;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/statistic/-$$Lambda$KeyguardStatistic$62L8gZ9jYSt_adKT1JhT-0yprRc;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static readLastSendingDurableCountTime(Landroid/content/Context;)J
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "user_data_collection_info"

    .line 220
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-string v2, "last_send_durable_count_time"

    .line 221
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static saveDurableCount()V
    .locals 1

    .line 178
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sDurableCounter:Lcom/coloros/systemui/keyguard/statistic/DurableCounter;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->save()V

    :cond_0
    return-void
.end method

.method public static sendDurableCountEvent(Landroid/content/Context;)V
    .locals 6

    .line 184
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sDurableCounter:Lcom/coloros/systemui/keyguard/statistic/DurableCounter;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 185
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->getRecordsList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 186
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 188
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 189
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 194
    invoke-static {v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "event_count"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 197
    invoke-static {p0, v3, v4, v2}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->nearMeStatisticsCollect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 201
    :cond_1
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sDurableCounter:Lcom/coloros/systemui/keyguard/statistic/DurableCounter;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->clear()V

    .line 202
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->writeLastSendingDurableCountTime(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static sendEventData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendEventData(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->NEED_DURABLE_COUNT_EVENTS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "KeyguardStatistic"

    if-eqz v0, :cond_1

    .line 161
    sget-object p3, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sDurableCounter:Lcom/coloros/systemui/keyguard/statistic/DurableCounter;

    if-nez p3, :cond_0

    .line 162
    new-instance p3, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;

    invoke-direct {p3, p0, v1}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object p3, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sDurableCounter:Lcom/coloros/systemui/keyguard/statistic/DurableCounter;

    .line 164
    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sDurableCounter:Lcom/coloros/systemui/keyguard/statistic/DurableCounter;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->count(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 170
    invoke-static {p0, p1, p3}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->nearMeStatisticsCollect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string p0, "sendDynamicEventData error, context is null"

    .line 172
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 149
    invoke-static {p0, p1, v0, p2}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public static writeLastSendingDurableCountTime(Landroid/content/Context;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const-string v3, "user_data_collection_info"

    .line 209
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 210
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "last_send_durable_count_time"

    .line 211
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeLastSendingDurableCountTime, write time "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardStatistic"

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
