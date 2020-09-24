.class public Lcom/coloros/systemui/qs/ColorDataUsageController;
.super Ljava/lang/Object;
.source "ColorDataUsageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;
    }
.end annotation


# static fields
.field private static final GB:D = 1.073741824E9

.field private static final KB:D = 1024.0

.field private static final KEY_DAILY_ALERT:Ljava/lang/String; = "oppo_comm_simsettings_daily_alert_"

.field private static final LAST_FOUR_WEEKS:I = 0x4

.field private static final MB:D = 1048576.0

.field private static final NOT_DAILY_ALERT:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "ColorDataUsageController"

.field private static final TB:D = 1.099511627776E12


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const-string v0, "telephony_subscription_service"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 69
    const-class v0, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 70
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 71
    iput-object p2, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 72
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 5

    .line 153
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 160
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 162
    aget-object v3, p0, v2

    if-eqz v3, :cond_2

    .line 163
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v4}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private formatBytes(J)Ljava/lang/String;
    .locals 1

    .line 282
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mContext:Landroid/content/Context;

    const/16 v0, 0x8

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getActiveDataSubscriptionId()I
    .locals 3

    .line 222
    invoke-static {}, Lcom/color/compat/telephony/SubscriptionManagerNative;->getActiveDataSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 224
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveDataSubscriptionId return -1, getDefaultSubscriptionId: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Statusbar"

    const-string v2, "ColorDataUsageController"

    invoke-static {v1, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private getActiveSubscriberId()Ljava/lang/String;
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 232
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getActiveDataSubscriptionId()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 234
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    .line 236
    :cond_0
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCarrierDisplayName()Ljava/lang/String;
    .locals 4

    .line 187
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getActiveDataSubscriptionId()I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 190
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/coloros/systemui/qs/-$$Lambda$ColorDataUsageController$S5fVXA3S7FAfhJstndy9VDyqVEs;

    invoke-direct {v1, v0}, Lcom/coloros/systemui/qs/-$$Lambda$ColorDataUsageController$S5fVXA3S7FAfhJstndy9VDyqVEs;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 191
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    :cond_0
    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " subscriptionId: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "ColorDataUsageController"

    .line 195
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\""

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method private static getDefaultSubscriptionId(Landroid/content/Context;)I
    .locals 2

    .line 205
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 211
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 212
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 213
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    goto :goto_0

    :cond_1
    return v0

    .line 218
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    return p0
.end method

.method public static getIccIdFromSubscriptionInfo(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 270
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 274
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 277
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getIccIdFromSubscriptionInfo:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Statusbar"

    const-string v1, "ColorDataUsageController"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getNetworkType(Landroid/net/NetworkTemplate;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 244
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_3

    const/4 v1, 0x7

    if-eq p0, v1, :cond_2

    return p1

    :cond_1
    const/16 p0, 0x9

    return p0

    :cond_2
    return v0

    :cond_3
    return p1
.end method

.method private getStartTimeOfDay()J
    .locals 2

    .line 260
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 262
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 263
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 264
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 265
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 266
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getUsageLevel(Landroid/net/NetworkTemplate;JJ)J
    .locals 9

    const-string v0, "ColorDataUsageController"

    const-string v1, "Statusbar"

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 173
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getNetworkType(Landroid/net/NetworkTemplate;)I

    move-result v3

    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getActiveSubscriberId()Ljava/lang/String;

    move-result-object v4

    move-wide v5, p2

    move-wide v7, p4

    .line 172
    invoke-virtual/range {v2 .. v8}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p1

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide p3

    add-long/2addr p1, p3

    return-wide p1

    :cond_0
    const-string p0, "Failed to get data usage, no entry data"

    .line 178
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed to get data usage, remote call failed"

    .line 180
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method static synthetic lambda$getCarrierDisplayName$0(ILandroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 191
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;
    .locals 12

    .line 115
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/ColorDataUsageController;->findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    .line 120
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 122
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 123
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide v4, 0x90321000L

    sub-long v4, v1, v4

    :goto_1
    move-object v6, p0

    move-object v7, p1

    move-wide v8, v4

    move-wide v10, v1

    .line 129
    invoke-direct/range {v6 .. v11}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getUsageLevel(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-gez p1, :cond_2

    const-string p0, "Statusbar"

    const-string p1, "ColorDataUsageController"

    const-string v0, "no entry data"

    .line 131
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 134
    :cond_2
    new-instance p1, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;

    invoke-direct {p1}, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;-><init>()V

    .line 135
    iput-wide v4, p1, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->startDate:J

    .line 136
    iput-wide v6, p1, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->usageLevel:J

    .line 137
    iput-wide v4, p1, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->cycleStart:J

    .line 138
    iput-wide v1, p1, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->cycleEnd:J

    if-eqz v0, :cond_5

    .line 141
    iget-wide v1, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v8

    if-lez v1, :cond_3

    iget-wide v1, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_2

    :cond_3
    move-wide v1, v8

    :goto_2
    iput-wide v1, p1, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->limitLevel:J

    .line 142
    iget-wide v1, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v8

    if-lez v1, :cond_4

    iget-wide v8, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    :cond_4
    iput-wide v8, p1, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->warningLevel:J

    goto :goto_3

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->getDefaultWarningLevel()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->warningLevel:J

    .line 146
    :goto_3
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorDataUsageController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz p0, :cond_6

    .line 147
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataNetworkName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;

    :cond_6
    return-object p1
.end method

.method public getDataUsageInfo([I)Ljava/lang/String;
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 76
    iget-object v0, v6, Lcom/coloros/systemui/qs/ColorDataUsageController;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getActiveDataSubscriptionId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/net/DataUsageUtils;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getCarrierDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 79
    iget-object v0, v6, Lcom/coloros/systemui/qs/ColorDataUsageController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 80
    invoke-virtual {v6, v1}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;

    move-result-object v10

    if-nez v10, :cond_0

    const-string v0, ""

    return-object v0

    .line 84
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 85
    iget-object v2, v6, Lcom/coloros/systemui/qs/ColorDataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getIccIdFromSubscriptionInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v2, v6, Lcom/coloros/systemui/qs/ColorDataUsageController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oppo_comm_simsettings_daily_alert_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, -0x1

    invoke-static {v2, v0, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v4, 0x1

    if-gtz v0, :cond_2

    .line 89
    iget-wide v0, v10, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v0, v0, v13

    if-gtz v0, :cond_1

    const v0, 0x7f1106e0

    .line 90
    new-array v1, v4, [Ljava/lang/Object;

    iget-wide v2, v10, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->usageLevel:J

    .line 91
    invoke-direct {v6, v2, v3}, Lcom/coloros/systemui/qs/ColorDataUsageController;->formatBytes(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    .line 90
    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f1106e3

    .line 93
    new-array v1, v15, [Ljava/lang/Object;

    iget-wide v2, v10, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->usageLevel:J

    .line 94
    invoke-direct {v6, v2, v3}, Lcom/coloros/systemui/qs/ColorDataUsageController;->formatBytes(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    iget-wide v2, v10, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->limitLevel:J

    invoke-direct {v6, v2, v3}, Lcom/coloros/systemui/qs/ColorDataUsageController;->formatBytes(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 93
    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getStartTimeOfDay()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/coloros/systemui/qs/ColorDataUsageController;->getUsageLevel(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    .line 98
    iget-wide v2, v10, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v2, v2, v13

    if-gtz v2, :cond_3

    const v2, 0x7f1106e2

    .line 99
    new-array v3, v15, [Ljava/lang/Object;

    .line 100
    invoke-direct {v6, v0, v1}, Lcom/coloros/systemui/qs/ColorDataUsageController;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v16

    invoke-direct {v6, v11, v12}, Lcom/coloros/systemui/qs/ColorDataUsageController;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 99
    invoke-virtual {v9, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    const v2, 0x7f1106e1

    .line 102
    new-array v3, v15, [Ljava/lang/Object;

    .line 103
    invoke-direct {v6, v0, v1}, Lcom/coloros/systemui/qs/ColorDataUsageController;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v16

    iget-wide v0, v10, Lcom/coloros/systemui/qs/ColorDataUsageController$DataUsageInfo;->usageLevel:J

    invoke-direct {v6, v0, v1}, Lcom/coloros/systemui/qs/ColorDataUsageController;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 102
    invoke-virtual {v9, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v7, :cond_4

    .line 107
    array-length v1, v7

    if-le v1, v4, :cond_4

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method
