.class public Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;
.super Ljava/lang/Object;
.source "OnScreenFpStatistic.java"


# static fields
.field private static final CODE_KEYGUARD_FINGERPRINT_AUTHEN_ATTEMPTS_OF_FAILED:Ljava/lang/String; = "fingerprint_unlock_failed_attempts"

.field private static final CODE_KEYGUARD_FINGERPRINT_AUTHEN_FAILED_REASON:Ljava/lang/String; = "fingerprint_unlock_failed_reason"

.field private static final CODE_KEYGUARD_FINGERPRINT_UNLOCK_RESULT:Ljava/lang/String; = "fingerprint_unlock_result"

.field private static final CODE_KEYGUARD_FINGERPRINT_UNLOCK_WITH_SCREEN_STATE:Ljava/lang/String; = "screen_state_while_fingerprint_unlock"

.field private static final COMMIT_THRESHOLD:J = 0x2bf20L

.field private static final DATA_COLLECT_FINGERPRINT_FAILED:I = 0x2

.field private static final DATA_COLLECT_FINGERPRINT_SCREEN_OFF:I = 0x1

.field private static final DATA_COLLECT_FINGERPRINT_SCREEN_ON:I = 0x2

.field private static final DATA_COLLECT_FINGERPRINT_SUCCESS:I = 0x1

.field private static final FP_LAST_SEND_COUNT_TIMESTAMP:Ljava/lang/String; = "last_send_fp_count_timestamp"

.field private static final FP_SCREEN_OFF_SHOW_TOTAL_TIME:Ljava/lang/String; = "fp_screen_off_show_total_time"

.field private static final USER_DATA_FP_COLLECTION_INFO:Ljava/lang/String; = "user_data_fp_collection_info"

.field private static sFpShowTotalTime:J = -0x1L

.field private static sFpShowTotalTimeCommitTimestamp:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectDataOfFingerprintUnlockFailed(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->collectDataOfFingerprintUnlockFailed(Landroid/content/Context;IZLjava/lang/CharSequence;)V

    return-void
.end method

.method public static collectDataOfFingerprintUnlockFailed(Landroid/content/Context;IZLjava/lang/CharSequence;)V
    .locals 4

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x2

    .line 79
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fingerprint_unlock_result"

    .line 78
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screen_state_while_fingerprint_unlock"

    if-eqz p2, :cond_0

    .line 82
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 85
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 84
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez p3, :cond_1

    const-string p2, "unknown"

    goto :goto_1

    .line 87
    :cond_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    const-string p3, "fingerprint_unlock_failed_reason"

    .line 88
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fingerprint_unlock_failed_attempts"

    .line 89
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "fingerprint_unlock"

    .line 91
    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static collectDataOfFingerprintUnlockSucceed(ZLandroid/content/Context;)V
    .locals 3

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x1

    const-string v2, "screen_state_while_fingerprint_unlock"

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    .line 98
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 100
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "fingerprint_unlock_result"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fingerprint_unlock"

    .line 104
    invoke-static {p1, p0, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$onTimeChanged$0(Landroid/content/Context;)V
    .locals 8

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 40
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v2

    .line 41
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 42
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->readFpTotalScreenOffShowTimeStamp(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 44
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->writeFpTotalScreenOffShowTimeStamp(Landroid/content/Context;)V

    return-void

    :cond_0
    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 50
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->readFpScreenOffShowTotalTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 51
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->resetFpScreenOffShowTotalTime(Landroid/content/Context;)V

    .line 52
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->writeFpTotalScreenOffShowTimeStamp(Landroid/content/Context;)V

    .line 53
    new-instance v2, Landroid/util/ArrayMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 54
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fingerprint_total_screen_off_show_time"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p0, v1, v2}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 58
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    move-result-object v1

    iget v1, v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mThemeStyle:I

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anim_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fingerprint_theme_style"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p0, v2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    sub-long/2addr v2, v0

    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    .line 64
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->writeFpTotalScreenOffShowTimeStamp(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static onTimeChanged(Landroid/content/Context;)V
    .locals 1

    .line 37
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFpStatistic$gtU_u249n-9liodzib5dPfieZ60;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFpStatistic$gtU_u249n-9liodzib5dPfieZ60;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static readFpScreenOffShowTotalTime(Landroid/content/Context;)J
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "user_data_fp_collection_info"

    .line 155
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-string v2, "fp_screen_off_show_total_time"

    .line 156
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private static readFpTotalScreenOffShowTimeStamp(Landroid/content/Context;)J
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "user_data_fp_collection_info"

    .line 120
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-string v2, "last_send_fp_count_timestamp"

    .line 121
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private static resetFpScreenOffShowTotalTime(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "user_data_fp_collection_info"

    .line 128
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 129
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-string v2, "fp_screen_off_show_total_time"

    .line 130
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static writeFpScreenOffShowTotalTime(Landroid/content/Context;J)V
    .locals 6

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const-string v1, "user_data_fp_collection_info"

    .line 137
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 138
    sget-wide v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->sFpShowTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "fp_screen_off_show_total_time"

    if-gez v0, :cond_0

    .line 139
    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->sFpShowTotalTime:J

    .line 140
    sget-wide v2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->sFpShowTotalTime:J

    sput-wide v2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->sFpShowTotalTimeCommitTimestamp:J

    .line 142
    :cond_0
    sget-wide v2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->sFpShowTotalTime:J

    add-long/2addr v2, p1

    sput-wide v2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->sFpShowTotalTime:J

    .line 143
    sget-wide p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->sFpShowTotalTime:J

    sget-wide v2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->sFpShowTotalTimeCommitTimestamp:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0x2bf20

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 144
    sput-wide p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->sFpShowTotalTimeCommitTimestamp:J

    .line 145
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 146
    sget-wide p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->sFpShowTotalTime:J

    invoke-interface {p0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private static writeFpTotalScreenOffShowTimeStamp(Landroid/content/Context;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const-string v3, "user_data_fp_collection_info"

    .line 110
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 111
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "last_send_fp_count_timestamp"

    .line 112
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
