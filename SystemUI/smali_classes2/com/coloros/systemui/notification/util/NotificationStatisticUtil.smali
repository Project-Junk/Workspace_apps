.class public Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;
.super Ljava/lang/Object;
.source "NotificationStatisticUtil.java"


# static fields
.field private static final ADD_MCS_NOTIFICATION_EVENT_ID:Ljava/lang/String; = "notice_add_mcs_notification"

.field private static final AUTO_OPEN_STATUS:Ljava/lang/String; = "auto_open_status"

.field private static final CLICK_BY_HEAD_UP:Ljava/lang/String; = "click_by_head_up"

.field private static final CLICK_BY_NOTIFICATION_BAR:Ljava/lang/String; = "click_by_notification_bar"

.field private static final CLICK_BY_OTHER_WAY:Ljava/lang/String; = "click_by_other_way"

.field private static final CLICK_EVENT_ID:Ljava/lang/String; = "notice_switch"

.field private static final CLICK_EVENT_NO_STASTUS_ID:Ljava/lang/String; = "notice_no_status_switch"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final ENABLE_STATISTIC:Z = true

.field private static final ENVELOPE_OPTION:Ljava/lang/String; = "envelope_option"

.field private static final EVENT_APP_STOPPED:Ljava/lang/String; = "app_stopped"

.field private static final EVENT_BANNER_CLICKED:Ljava/lang/String; = "banner_clicked"

.field private static final EVENT_CANCELED_BY_APP:Ljava/lang/String; = "canceled_by_app"

.field private static final EVENT_CLEAR_ALL:Ljava/lang/String; = "clear_all"

.field private static final EVENT_CLICK:Ljava/lang/String; = "click"

.field private static final EVENT_DELETE_GROUP:Ljava/lang/String; = "delete_group"

.field private static final EVENT_DELETE_SINGLE:Ljava/lang/String; = "delete_single"

.field private static final EVENT_ID_CLEAR_ALL_NOTIFICATIONS:Ljava/lang/String; = "clear_all_notifications"

.field public static final EVENT_ID_DROP_PUSH_HIGH_NOTIFICATION:Ljava/lang/String; = "drop_push_high_notification"

.field private static final EVENT_ID_ENTER_FOLD_BOX:Ljava/lang/String; = "fold_box_enter"

.field private static final EVENT_ID_ENVELOPE_SETTINGS_STATUS:Ljava/lang/String; = "envelope_settings_status"

.field private static final EVENT_ID_LAUNCH_FREEFORM_APP:Ljava/lang/String; = "launch_freeform_app"

.field private static final EVENT_ID_NOTIFICATION_FLOW:Ljava/lang/String; = "notification_flow"

.field private static final EVENT_ID_RECEIVE_ENVELOPE_WITHOUT_AUTO_OPEN:Ljava/lang/String; = "receive_envelope_without_auto_open"

.field private static final EVENT_ID_RECEIVE_ENVELOPE_WITH_AUTO_OPEN:Ljava/lang/String; = "receive_envelope_with_auto_open"

.field private static final EVENT_ID_SA_FUNC_USAGE:Ljava/lang/String; = "sa_function_usage"

.field private static final EVENT_ID_SA_SLIDE_OUT:Ljava/lang/String; = "sa_slide_out"

.field private static final EVENT_ID_SA_STATIC_DATA:Ljava/lang/String; = "sa_static_data"

.field private static final EVENT_ID_SA_TOGGLE_CHANGE:Ljava/lang/String; = "sa_toggle_change"

.field private static final EVENT_OTHERS:Ljava/lang/String; = "others"

.field private static final EVENT_SNOOZED:Ljava/lang/String; = "snoozed"

.field private static final EXTRA_KEY_PUSH:Ljava/lang/String; = "PushGlobalId"

.field private static final FAILED_REASON:Ljava/lang/String; = "failed_reason"

.field private static final HANDLE_INTERRUPTION_EVENT_CLOSE_ID:Ljava/lang/String; = "notice_handle_interruption_close"

.field private static final HANDLE_INTERRUPTION_EVENT_OPEN_ID:Ljava/lang/String; = "notice_handle_interruption_open"

.field private static final HANDLE_INTERRUPTION_TOGGLE_FROM_ID:Ljava/lang/String; = "notice_handle_interruption_toggle_from"

.field private static final HANDLE_NOTIFICATION_EVENT_ID:Ljava/lang/String; = "notice_handle_notification"

.field private static final KEY_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field private static final KEY_CHANNEL_NAME:Ljava/lang/String; = "channel_name"

.field private static final KEY_DISPLAY_LOCATION:Ljava/lang/String; = "display_location"

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final KEY_ENVELOPE_CLICK_FROM:Ljava/lang/String; = "envelope_click_from"

.field private static final KEY_ENVELOPE_SOUND_ENABLE:Ljava/lang/String; = "envelope_sound_enable"

.field private static final KEY_EVENT:Ljava/lang/String; = "event"

.field private static final KEY_EVENT_LOCATION:Ljava/lang/String; = "event_location"

.field private static final KEY_EVENT_SCREEN_ORIENTATION:Ljava/lang/String; = "event_screen_orientation"

.field private static final KEY_EVENT_TIME:Ljava/lang/String; = "event_time"

.field private static final KEY_FREEFORM_ENTRANCE:Ljava/lang/String; = "entrance"

.field private static final KEY_FUNCTION_NAME:Ljava/lang/String; = "function_name"

.field private static final KEY_GROUPED:Ljava/lang/String; = "grouped"

.field private static final KEY_IS_CLONE_APP:Ljava/lang/String; = "clone_app"

.field private static final KEY_IS_SUPPORT_FREEFORM:Ljava/lang/String; = "support_freeform"

.field private static final KEY_LAUNCH_RESULT:Ljava/lang/String; = "launch_result"

.field private static final KEY_LOCATION_CLEAR_ALL:Ljava/lang/String; = "location_clear_all"

.field private static final KEY_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field private static final KEY_NOTI_COUNT:Ljava/lang/String; = "notifications_count"

.field private static final KEY_NOTI_UNIMPORTANT_COUNT:Ljava/lang/String; = "noti_unimportant_count"

.field private static final KEY_OPPO_PUSH_ID:Ljava/lang/String; = "push_id"

.field private static final KEY_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final KEY_POST_SCREEN_ORIENTATION:Ljava/lang/String; = "post_screen_orientation"

.field private static final KEY_POST_TIME:Ljava/lang/String; = "post_time"

.field public static final KEY_PUSH_MESSAGE_ID:Ljava/lang/String; = "push_msg_id"

.field public static final KEY_PUSH_PRIORITY:Ljava/lang/String; = "push_priority"

.field public static final KEY_PUSH_REG_ID:Ljava/lang/String; = "push_reg_id"

.field private static final KEY_RESIDENT_NOTIFICATION:Ljava/lang/String; = "resident_notification"

.field private static final KEY_ROOT_APP_NAME:Ljava/lang/String; = "root_app_name"

.field private static final KEY_ROOT_APP_PKG:Ljava/lang/String; = "root_app_pkg"

.field private static final KEY_SA_TOGGLE_STATE:Ljava/lang/String; = "sa_toggle_state"

.field private static final KEY_SEQUENCE:Ljava/lang/String; = "sequence"

.field private static final KEY_UPDATE_TIMES:Ljava/lang/String; = "update_times"

.field private static final LOCATION_BANNER:Ljava/lang/String; = "banner"

.field private static final LOCATION_CLEAR_ALL_FOLD_BOX:Ljava/lang/String; = "fold_box"

.field private static final LOCATION_CLEAR_ALL_NOTIFICATION_CENTER:Ljava/lang/String; = "notification_center"

.field private static final LOCATION_KEYGUARD:Ljava/lang/String; = "keyguard"

.field private static final LOCATION_NOTIFICATION_BAR:Ljava/lang/String; = "notification_bar"

.field private static final LOG_TAG:Ljava/lang/String; = "20082"

.field private static final LONG_CLICK_EVENT_ID:Ljava/lang/String; = "notice_long"

.field private static final MS_A_SECOND:I = 0x3e8

.field private static final NAVIATION_BAR_COLOR_TIME_ID:Ljava/lang/String; = "navigation_bar_color_time"

.field public static final NOTIFICATION_BANNER:Ljava/lang/String; = "banner"

.field public static final NOTIFICATION_CLEAR:Ljava/lang/String; = "clear"

.field public static final NOTIFICATION_CLICK:Ljava/lang/String; = "click"

.field public static final NOTIFICATION_POSITION_ABNORMAL:Ljava/lang/String; = "abnormal"

.field public static final NOTIFICATION_POSITION_DRAWER:Ljava/lang/String; = "drawer"

.field public static final NOTIFICATION_POSITION_NORMAL:Ljava/lang/String; = "normal"

.field public static final NOTIFICATION_POSITION_OTHER:Ljava/lang/String; = "other"

.field public static final NOTIFICATION_REMOVE:Ljava/lang/String; = "remove"

.field public static final NOTI_EXT_MSG_ID:Ljava/lang/String; = "msgId"

.field public static final NOTI_EXT_REG_ID:Ljava/lang/String; = "regId"

.field private static final OPTION_STATUS:Ljava/lang/String; = "option_status"

.field private static final PKG_MCS:Ljava/lang/String; = "com.coloros.mcs"

.field private static final REMOVE_MCS_NOTIFICATION_EVENT_ID:Ljava/lang/String; = "notice_remove_mcs_notification"

.field private static final REMOVE_NOTIFICATION_EVENT_ID:Ljava/lang/String; = "notice_remove_notification"

.field private static final SCREEN_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field private static final SCREEN_ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final SIMPLE_BANNER_EVENT_ID:Ljava/lang/String; = "simple_full_banner_statistics"

.field public static final SIMPLE_BANNER_OPERATOR_EVENT:Ljava/lang/String; = "operator_type"

.field public static final SIMPLE_BANNER_PACKAGE_NAME:Ljava/lang/String; = "banner_package_name"

.field public static final SIMPLE_BANNER_TOP_PACKAGE_NAME:Ljava/lang/String; = "top_package_name"

.field private static final SWITCH_EVENT_ID:Ljava/lang/String; = "notification_switch"

.field private static final SWITCH_EVENT_STATUS:Ljava/lang/String; = "0"

.field private static final SWITCH_EVENT_TYPE:Ljava/lang/String; = "notification_user"

.field private static final TAG:Ljava/lang/String; = "NotificationStatisticUtil"

.field private static final VALUE_PUSH_NO_ID:Ljava/lang/String; = "PushGlobalId"

.field private static mThread:Landroid/os/HandlerThread;

.field private static sNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->sNotifications:Ljava/util/Map;

    .line 248
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "notification-statistics-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->mThread:Landroid/os/HandlerThread;

    .line 251
    sget-object v0, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addEventParam(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "event"

    .line 395
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addParamsAfterEvent(Landroid/content/Context;Ljava/util/Map;JZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 399
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    const-string v0, "grouped"

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "event_location"

    .line 400
    invoke-interface {p1, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    invoke-static {p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getScreenOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p4, "event_screen_orientation"

    invoke-interface {p1, p4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-static {}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getEventTime()Ljava/lang/String;

    move-result-object p0

    const-string p4, "event_time"

    invoke-interface {p1, p4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-static {p2, p3}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->evaluateDuration(J)Ljava/lang/String;

    move-result-object p0

    const-string p2, "duration"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addPushSortParams(Landroid/service/notification/StatusBarNotification;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 798
    invoke-static {p0}, Lcom/coloros/systemui/notification/util/MCSUtil;->getSortPriority(Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 800
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, ""

    const-string v3, "msgId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "regId"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "push_msg_id"

    .line 802
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "push_reg_id"

    .line 803
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "push_priority"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static collectAddMcsNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 534
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "appPackage"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 539
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 540
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "PushGlobalId"

    const-string v3, " no_id"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v3

    const/16 p1, 0x3e8

    .line 543
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 544
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "collectAddMcsNotification -- >\n packageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n PushGlobalId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Notification"

    const-string v8, "NotificationStatisticUtil"

    invoke-static {v7, v8, v6}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "eventTag"

    .line 547
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v6, p1

    .line 548
    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "postTime"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "20082"

    const-string v1, "notice_add_mcs_notification"

    .line 550
    invoke-static {p0, v0, v1, v5, p1}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static collectClickEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectClickEvent -- > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification"

    const-string v3, "NotificationStatisticUtil"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v1, "eventTag"

    .line 515
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msp"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "notice_switch"

    .line 517
    invoke-static {p0, p1, v0}, Lcom/oppo/statistics/NearMeStatistics;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static collectEnvelopeStatusChanged(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 703
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "envelope_option"

    .line 704
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "option_status"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-boolean p1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p1, :cond_0

    .line 707
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 708
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 709
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Notification"

    const-string v2, "NotificationStatisticUtil"

    invoke-static {v1, v2, p2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "20082"

    const-string p2, "envelope_settings_status"

    .line 713
    invoke-static {p0, p1, p2, v0}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static collectFreeformLaunchEvent(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 785
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 786
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "clone_app"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sequence"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "launch_result"

    .line 789
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    invoke-static {p0}, Lcom/coloros/common/util/AppInfoUtil;->getTopFullScreenApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "root_app_pkg"

    .line 791
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    invoke-static {p0, p1}, Lcom/coloros/common/util/AppInfoUtil;->getAppNameByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "root_app_name"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "entrance"

    .line 793
    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20082"

    const-string p2, "launch_freeform_app"

    .line 794
    invoke-static {p0, p1, p2, v0}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static collectHandleNotificationEvent(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;I)V
    .locals 12

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 627
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    .line 628
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 629
    :goto_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "PushGlobalId"

    const-string v5, " no_id"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v6, v0

    .line 632
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v0, :cond_2

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collectHandleNotificationEvent -- > \n packageName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n wayOfHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n duration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n isCancel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n PushGlobalId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationStatisticUtil"

    .line 633
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventTag"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wayOfHandle"

    .line 642
    invoke-interface {v5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isClearable"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    invoke-static {p3}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "state"

    invoke-interface {v5, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "notice_handle_notification"

    .line 648
    invoke-static {p0, p3, v5}, Lcom/oppo/statistics/NearMeStatistics;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 653
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string p3, "action"

    .line 654
    invoke-virtual {v9, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "reason"

    invoke-virtual {v9, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "currentMs"

    invoke-virtual {v9, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "elapsedTime"

    invoke-virtual {v9, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "upTime"

    invoke-virtual {v9, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x2

    const-string v7, "20120"

    const-string v8, "notification_AI"

    move-object v6, p0

    .line 659
    invoke-static/range {v6 .. v11}, Loppo/util/OppoStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZI)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static collectNotificationDisable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 676
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collectNotificationDisable pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationStatisticUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pkg"

    .line 680
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    const-string v1, "notification_user"

    .line 681
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "status"

    const-string v1, "0"

    .line 682
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "PushGlobalId"

    .line 683
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "20082"

    const-string v1, "notification_switch"

    .line 684
    invoke-static {p0, p2, v1, v0, p1}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static collectRemoveMcsNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 567
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "appPackage"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 572
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "PushGlobalId"

    const-string v3, " no_id"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v3

    .line 575
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v5, v3

    .line 577
    sget-boolean v3, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v3, :cond_2

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collectRemoveMcsNotification -- >\n packageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n PushGlobalId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotificationStatisticUtil"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v3, "eventTag"

    .line 582
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "duration"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "20082"

    const-string v2, "notice_remove_mcs_notification"

    .line 585
    invoke-static {p0, v1, v2, p1, v0}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static collectRemoveNotification(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 600
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr v1, p2

    .line 602
    sget-boolean p2, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p2, :cond_0

    .line 603
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "collectRemoveNotification -- >\n packageName : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n PushGlobalId : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NotificationStatisticUtil"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p2, "eventTag"

    .line 607
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "PushGlobalId"

    .line 609
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "20082"

    const-string p3, "notice_remove_notification"

    .line 610
    invoke-static {p0, p2, p3, v0, p1}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static collectSimpleBannerUseStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 775
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "banner_package_name"

    .line 776
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "top_package_name"

    .line 777
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "operator_type"

    .line 778
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20082"

    const-string p2, "simple_full_banner_statistics"

    const/4 p3, 0x0

    .line 779
    invoke-static {p0, p1, p2, v0, p3}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private static convertSbState2Location(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "keyguard"

    return-object p0

    :cond_0
    const-string p0, "notification_bar"

    return-object p0
.end method

.method private static createParams(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 419
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-static {p1}, Lcom/coloros/systemui/notification/util/NotificationUtil;->getChannelName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-static {p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getScreenOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "post_screen_orientation"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "notification_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-static {p1}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getPushId(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "push_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "resident_notification"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->formatDate(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "post_time"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "update_times"

    const-string p1, "0"

    .line 427
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "display_location"

    .line 428
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static decideEventParams(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/16 v0, 0xc

    if-eq p0, v0, :cond_2

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const-string p0, "others"

    goto :goto_0

    :cond_0
    const-string p0, "canceled_by_app"

    goto :goto_0

    :cond_1
    const-string p0, "snoozed"

    goto :goto_0

    :cond_2
    const-string p0, "delete_group"

    goto :goto_0

    :cond_3
    const-string p0, "app_stopped"

    goto :goto_0

    :cond_4
    const-string p0, "clear_all"

    goto :goto_0

    :cond_5
    const-string p0, "delete_single"

    goto :goto_0

    :cond_6
    const-string p0, "click"

    :goto_0
    return-object p0
.end method

.method public static dropPushHighNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 809
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 810
    invoke-static {p1, v0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->addPushSortParams(Landroid/service/notification/StatusBarNotification;Ljava/util/Map;)V

    .line 811
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--statistics--"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "drop push high notification->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Notification"

    const-string v2, "NotificationStatisticUtil"

    invoke-static {v1, v2, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "20082"

    const-string v1, "drop_push_high_notification"

    .line 813
    invoke-static {p0, p1, v1, v0}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static evaluateDuration(J)Ljava/lang/String;
    .locals 2

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    .line 413
    div-long/2addr v0, p0

    .line 414
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatDate(J)Ljava/lang/String;
    .locals 2

    .line 493
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 494
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getEventTime()Ljava/lang/String;
    .locals 2

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNotificationData(Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->sNotifications:Ljava/util/Map;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static getNotificationKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPushId(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 2

    .line 434
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.coloros.mcs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "PushGlobalId"

    invoke-virtual {p0, v0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getScreenOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const-string v1, "portrait"

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "landscape"

    :cond_1
    :goto_0
    return-object v1
.end method

.method static synthetic lambda$onNotificationRemoved$0(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Landroid/content/Context;II)V
    .locals 2

    .line 298
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--statistics--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "notification removed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationStatisticUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 306
    :cond_1
    invoke-static {p2, p0, p3, p4, v0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->removeNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;IIZ)V

    :cond_2
    return-void
.end method

.method public static onBannerClicked(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 6

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 267
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p2

    const-class v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {p2, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    .line 268
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->isHeadsUp(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "banner"

    .line 269
    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->createParams(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "banner_clicked"

    .line 270
    invoke-static {p2, v0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->addEventParam(Ljava/util/Map;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    .line 272
    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    const-string v5, "banner"

    move-object v0, p0

    move-object v1, p2

    .line 271
    invoke-static/range {v0 .. v5}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->addParamsAfterEvent(Landroid/content/Context;Ljava/util/Map;JZLjava/lang/String;)V

    .line 273
    sget-boolean p1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p1, :cond_0

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Notification--statistics--"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "report:banner click->"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "NotificationStatisticUtil"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "20082"

    const-string p3, "notification_flow"

    .line 276
    invoke-static {p0, p1, p3, p2}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static onNotificationPosted(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 256
    invoke-static {p1}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationData(Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->postNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;I)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {p1}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->updateNotification(Landroid/service/notification/StatusBarNotification;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onNotificationRemoved(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;IILcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 8

    .line 297
    sget-object v0, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/coloros/systemui/notification/util/-$$Lambda$NotificationStatisticUtil$NqW1ZnWLy6pi3b4Ek0AjaStFDWg;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p4

    move-object v4, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/coloros/systemui/notification/util/-$$Lambda$NotificationStatisticUtil$NqW1ZnWLy6pi3b4Ek0AjaStFDWg;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Landroid/content/Context;II)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static postNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;I)V
    .locals 6

    .line 320
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--statistics--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "notification post:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationStatisticUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    invoke-static {p2}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->convertSbState2Location(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->createParams(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 324
    invoke-static {p1, p2}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->putNotificationData(Landroid/service/notification/StatusBarNotification;Ljava/util/Map;)V

    .line 326
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 332
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string p2, "action"

    const-string v0, "post"

    .line 333
    invoke-virtual {v3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "reason"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "currentMs"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "elapsedTime"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "upTime"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v1, "20120"

    const-string v2, "notification_AI"

    move-object v0, p0

    .line 338
    invoke-static/range {v0 .. v5}, Loppo/util/OppoStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZI)V

    return-void
.end method

.method private static putNotificationData(Landroid/service/notification/StatusBarNotification;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 347
    sget-object v0, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->sNotifications:Ljava/util/Map;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static removeNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;IIZ)V
    .locals 10

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--statistics--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "remove::reason "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-static {p1}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NotificationStatisticUtil"

    const-string v3, "Notification"

    .line 379
    invoke-static {v3, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {p1}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationData(Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    invoke-static {p2}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->decideEventParams(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->addEventParam(Ljava/util/Map;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v6

    invoke-static {p3}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->convertSbState2Location(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, v0

    move v8, p4

    invoke-static/range {v4 .. v9}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->addParamsAfterEvent(Landroid/content/Context;Ljava/util/Map;JZLjava/lang/String;)V

    .line 385
    invoke-static {p1, v0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->addPushSortParams(Landroid/service/notification/StatusBarNotification;Ljava/util/Map;)V

    .line 386
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "report:notification flow->"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v2, p2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "20082"

    const-string p3, "notification_flow"

    .line 387
    invoke-static {p0, p2, p3, v0}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 388
    invoke-static {p1}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->removeNotificationData(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    :cond_0
    const-string p0, "Notification--statistics--notification to be removed does not exist"

    .line 390
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static removeNotificationData(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 351
    sget-object v0, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->sNotifications:Ljava/util/Map;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static updateHeadsUs(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 286
    invoke-static {p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationData(Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    .line 288
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationData(Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "display_location"

    const-string v1, "banner"

    .line 290
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static updateNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--statistics--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "notification update:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NotificationStatisticUtil"

    const-string v3, "Notification"

    invoke-static {v3, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationData(Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "update_times"

    .line 366
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 368
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "update notification failed:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "notification has not posted,or removed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->getNotificationKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
