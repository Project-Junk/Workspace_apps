.class public Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;
.super Ljava/lang/Object;
.source "FingerStatistics.java"


# static fields
.field private static final ADD_FINGER:Ljava/lang/String; = "add_finger_v2"

.field private static final ADD_FINGER_TYPE:Ljava/lang/String; = "add_finger_type_v2"

.field private static final APP_ENCRYPT:Ljava/lang/String; = "app_encrypt_v2"

.field private static final BOOT_REGIST:Ljava/lang/String; = "boot_regist_v2"

.field private static final BUTTON_DELETE:Ljava/lang/String; = "button_delete_v2"

.field public static final CANCEL_OTHER:Ljava/lang/String; = "other_v2"

.field public static final CLICK_BACK:Ljava/lang/String; = "back_v2"

.field public static final CLICK_CANCEL:Ljava/lang/String; = "cancel_v2"

.field private static final CLICK_FINGER:Ljava/lang/String; = "click_finger_v2"

.field private static final CLICK_PASSWORD:Ljava/lang/String; = "click_password_v2"

.field private static final ENROLL_CANCEL:Ljava/lang/String; = "enroll_cancel_v2"

.field private static final ENROLL_CLICK_HOME:Ljava/lang/String; = "enroll_click_home_v2"

.field private static final ENROLL_COMPLETE:Ljava/lang/String; = "enroll_complete_v2"

.field private static final ENROLL_CONTINUE:Ljava/lang/String; = "enroll_continue_v2"

.field private static final ENROLL_DIRTY:Ljava/lang/String; = "enroll_dirty_v2"

.field private static final ENROLL_DONE:Ljava/lang/String; = "enroll_done_v2"

.field private static final ENROLL_DUMP:Ljava/lang/String; = "enroll_dump_v2"

.field private static final ENROLL_FAIL:Ljava/lang/String; = "enroll_fail_v2"

.field private static final ENROLL_FAST:Ljava/lang/String; = "enroll_fast_v2"

.field private static final ENROLL_OFFSET:Ljava/lang/String; = "enroll_offset_v2"

.field private static final ENROLL_TOUCH_SCREEN:Ljava/lang/String; = "enroll_touch_screen_v2"

.field private static final ENTER_FINGER_LOCK_ACTIVITY:Ljava/lang/String; = "finger_lock_activity_v2"

.field private static final ENTER_SECURE_LOCK_ACTIVITY:Ljava/lang/String; = "secure_lock_activity_v2"

.field private static final FILE_ENCRYPT:Ljava/lang/String; = "file_encrypt_v2"

.field private static final FINGER_COUNT:Ljava/lang/String; = "finger_count_v2"

.field private static final FINGER_COUNT_ID:Ljava/lang/String; = "finger_count_id_v2"

.field private static final FINGER_SOURCE_TYPE:[Ljava/lang/String;

.field private static final FINGER_SWITCH:[Ljava/lang/String;

.field private static final LEFT_SLIDE_DELETE:Ljava/lang/String; = "left_slide_delete_v2"

.field private static final MODIFY_PASSWORD:Ljava/lang/String; = "modify_psw_v2"

.field private static final OFF_ALL:Ljava/lang/String; = "off_all_v2"

.field private static final OFF_USER:Ljava/lang/String; = "off_user_v2"

.field private static final ON_ALL:Ljava/lang/String; = "on_all_v2"

.field private static final ON_USER:Ljava/lang/String; = "on_user_v2"

.field private static final OPEN_PSW_TYPE:Ljava/lang/String; = "open_password_type_v2"

.field private static final PASSWORD_CLOSE:Ljava/lang/String; = "close_v2"

.field private static final PASSWORD_OPEN:Ljava/lang/String; = "open_v2"

.field private static final PASSWORD_STATE:Ljava/lang/String; = "password_state_v2"

.field private static final PSW_SOURCE_TYPE:[Ljava/lang/String;

.field private static final RENAME_FINGER:Ljava/lang/String; = "rename_finger_v2"

.field private static final SCREEN_LOCK:Ljava/lang/String; = "screen_lock_v2"

.field private static final SECRITY_VERTIFY:Ljava/lang/String; = "security_verify_v2"

.field private static final SWITCH_STATE:Ljava/lang/String; = "switch_state_v2"

.field private static final TAG:Ljava/lang/String; = "FingerStatistics"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "screen_lock_v2"

    const-string v1, "app_encrypt_v2"

    const-string v2, "file_encrypt_v2"

    const-string v3, "security_verify_v2"

    .line 40
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->FINGER_SWITCH:[Ljava/lang/String;

    const-string v1, "screen_lock_v2"

    const-string v2, "app_encrypt_v2"

    const-string v3, "file_encrypt_v2"

    const-string v4, "security_verify_v2"

    const-string v5, "boot_regist_v2"

    const-string v6, "add_finger_v2"

    .line 59
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->FINGER_SOURCE_TYPE:[Ljava/lang/String;

    const-string v1, "screen_lock_v2"

    const-string v2, "app_encrypt_v2"

    const-string v3, "file_encrypt_v2"

    const-string v4, "security_verify_v2"

    const-string v5, "boot_regist_v2"

    const-string v6, "add_finger_v2"

    const-string v7, "click_password_v2"

    .line 61
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->PSW_SOURCE_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initStatisticsValues(Landroid/content/Context;)V
    .locals 10

    .line 219
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FingerStatistics"

    if-eqz v0, :cond_2

    const-string v2, "has_statistics_switches"

    const/4 v3, 0x0

    .line 221
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "initStatisticsValues hasInited = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 225
    :cond_0
    invoke-static {}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getKeyNameInPreferences()[Ljava/lang/String;

    move-result-object v4

    .line 226
    array-length v5, v4

    .line 227
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "initSettingsValues len = "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v5, :cond_1

    .line 229
    aget-object v8, v4, v6

    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 230
    invoke-static {p0, v6, v8, v7}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "i = "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", value = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "fingerprint_count"

    .line 234
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 235
    invoke-static {p0, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onCountEvent(Landroid/content/Context;I)V

    .line 236
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "count value = "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "initStatisticsValues end"

    .line 238
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "initStatisticsValues preferences is null"

    .line 241
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onAddFinger(Landroid/content/Context;I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 94
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->FINGER_SOURCE_TYPE:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 95
    aget-object p1, v0, p1

    const-string v0, "add_finger_v2"

    const-string v1, "add_finger_type_v2"

    invoke-static {p0, v0, v1, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onClickFinger(Landroid/content/Context;)V
    .locals 1

    const-string v0, "click_finger_v2"

    .line 153
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onClickPassword(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "open_v2"

    goto :goto_0

    :cond_0
    const-string p1, "close_v2"

    :goto_0
    const-string v0, "click_password_v2"

    const-string v1, "password_state_v2"

    .line 191
    invoke-static {p0, v0, v1, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onCountEvent(Landroid/content/Context;I)V
    .locals 2

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "finger_count_id_v2"

    const-string v1, "finger_count_v2"

    invoke-static {p0, v0, v1, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onDeleteFinger(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "left_slide_delete_v2"

    goto :goto_0

    :cond_0
    const-string p1, "button_delete_v2"

    .line 157
    :goto_0
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onDeleteFingerDone(Landroid/content/Context;ZI)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "left_slide_delete_v2"

    goto :goto_0

    :cond_0
    const-string p1, "button_delete_v2"

    .line 161
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "finger_count_id_v2"

    invoke-static {p0, v0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEnrollCancel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "enroll_cancel_v2"

    .line 113
    invoke-static {p0, v0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEnrollClickDone(Landroid/content/Context;)V
    .locals 1

    const-string v0, "enroll_done_v2"

    .line 121
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onEnrollClickHome(Landroid/content/Context;)V
    .locals 1

    const-string v0, "enroll_click_home_v2"

    .line 149
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onEnrollContinue(Landroid/content/Context;)V
    .locals 1

    const-string v0, "enroll_continue_v2"

    .line 117
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onEnrollDirty(Landroid/content/Context;)V
    .locals 1

    const-string v0, "enroll_dirty_v2"

    .line 125
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onEnrollDump(Landroid/content/Context;)V
    .locals 1

    const-string v0, "enroll_dump_v2"

    .line 141
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onEnrollOffset(Landroid/content/Context;)V
    .locals 1

    const-string v0, "enroll_offset_v2"

    .line 129
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onEnrollOtherFail(Landroid/content/Context;I)V
    .locals 2

    .line 137
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "enroll_fail_v2"

    const-string v1, "enroll_cancel_v2"

    invoke-static {p0, v0, v1, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEnrollTooFast(Landroid/content/Context;)V
    .locals 1

    const-string v0, "enroll_fast_v2"

    .line 133
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onEnrollTouchScreen(Landroid/content/Context;)V
    .locals 1

    const-string v0, "enroll_touch_screen_v2"

    .line 145
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onEnterFingerLock(Landroid/content/Context;)V
    .locals 1

    const-string v0, "finger_lock_activity_v2"

    .line 90
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onEnterSecureLock(Landroid/content/Context;)V
    .locals 1

    const-string v0, "secure_lock_activity_v2"

    .line 86
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onEvent eventID= "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerStatistics"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onFingerEnrollCompleted(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "enroll_complete_v2"

    .line 106
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "finger_count_id_v2"

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCountEvent count= "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerStatistics"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onEvent eventID= "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", key="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerStatistics"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onModifyPassword(Landroid/content/Context;)V
    .locals 1

    const-string v0, "modify_psw_v2"

    .line 195
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onOpenPassword(Landroid/content/Context;I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 100
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->PSW_SOURCE_TYPE:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 101
    aget-object p1, v0, p1

    const-string v0, "click_password_v2"

    const-string v1, "password_state_v2"

    invoke-static {p0, v0, v1, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onOperFingerSwitch(Landroid/content/Context;IZZ)V
    .locals 1

    if-ltz p1, :cond_3

    .line 169
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->FINGER_SWITCH:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_3

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const-string p2, "on_all_v2"

    goto :goto_0

    :cond_0
    const-string p2, "on_user_v2"

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "off_all_v2"

    goto :goto_0

    :cond_2
    const-string p2, "off_user_v2"

    .line 184
    :goto_0
    sget-object p3, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->FINGER_SWITCH:[Ljava/lang/String;

    aget-object p1, p3, p1

    const-string p3, "switch_state_v2"

    invoke-static {p0, p1, p3, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "switchID invalide "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerStatistics"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onRenameFinger(Landroid/content/Context;)V
    .locals 1

    const-string v0, "rename_finger_v2"

    .line 165
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
