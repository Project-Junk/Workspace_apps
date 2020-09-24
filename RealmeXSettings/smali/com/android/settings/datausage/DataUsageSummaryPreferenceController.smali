.class public Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;
.super Lcom/android/settings/core/a;
.source "DataUsageSummaryPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;


# static fields
.field private static final KEY:Ljava/lang/String; = "status_header"

.field private static final PETA:J = 0x38d7ea4c68000L

.field private static final RELATIVE_SIZE_LARGE:F = 1.5625f

.field private static final RELATIVE_SIZE_SMALL:F = 0.64f

.field private static final TAG:Ljava/lang/String; = "DataUsageController"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCarrierName:Ljava/lang/CharSequence;

.field private mCycleEnd:J

.field private mCycleStart:J

.field private mDataBarSize:J

.field protected final mDataInfoController:Lcom/android/settings/datausage/e;

.field protected final mDataUsageController:Lcom/android/settingslib/net/a;

.field private final mDataUsageTemplate:I

.field private mDataplanCount:I

.field private mDataplanSize:J

.field private mDataplanUse:J

.field private final mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private final mEntityHeaderController:Lcom/android/settings/widget/b;

.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private final mHasMobileData:Z

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mManageSubscriptionIntent:Landroid/content/Intent;

.field protected final mPolicyEditor:Lcom/android/settingslib/d;

.field private mSnapshotTime:J

.field private mSubscriptionId:I

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V
    .locals 1

    const-string v0, "status_header"

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 107
    invoke-static {p1, p3, v0}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/b;

    .line 109
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 110
    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 111
    iput p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionId:I

    .line 113
    iget p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionId:I

    invoke-static {p1, p2}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 114
    const-class p2, Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkPolicyManager;

    .line 115
    new-instance p3, Lcom/android/settingslib/d;

    invoke-direct {p3, p2}, Lcom/android/settingslib/d;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/d;

    .line 117
    invoke-static {p1}, Lcom/android/settings/datausage/f;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionId:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    .line 120
    new-instance p2, Lcom/android/settingslib/net/a;

    invoke-direct {p2, p1}, Lcom/android/settingslib/net/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/a;

    .line 121
    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/a;

    iget p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionId:I

    .line 1093
    iput p3, p2, Lcom/android/settingslib/net/a;->a:I

    .line 122
    new-instance p2, Lcom/android/settings/datausage/e;

    invoke-direct {p2}, Lcom/android/settings/datausage/e;-><init>()V

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/e;

    .line 124
    iget-boolean p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    if-eqz p2, :cond_1

    const p1, 0x7f1204c7

    .line 125
    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    goto :goto_1

    .line 126
    :cond_1
    invoke-static {p1}, Lcom/android/settings/datausage/f;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f121959    # 1.941989E38f

    .line 127
    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    goto :goto_1

    :cond_2
    const p1, 0x7f120935

    .line 129
    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    .line 132
    :goto_1
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "telephony_subscription_service"

    .line 133
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/net/a;Lcom/android/settings/datausage/e;Landroid/net/NetworkTemplate;Lcom/android/settingslib/d;IZLandroid/telephony/SubscriptionManager;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/widget/b;Landroidx/preference/PreferenceFragmentCompat;I)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "status_header"

    .line 150
    invoke-direct {p0, p8, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/a;

    .line 152
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/e;

    .line 153
    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 154
    iput-object p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/d;

    .line 155
    iput p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    .line 156
    iput-boolean p6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    .line 157
    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 158
    iput-object p8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    .line 159
    iput-object p9, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 160
    iput-object p10, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/b;

    .line 161
    iput-object p11, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 162
    iput p12, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionId:I

    return-void
.end method

.method public static getPrimaryPlan(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionPlan;
    .locals 5

    .line 306
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object p0

    .line 307
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 311
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionPlan;

    .line 312
    invoke-virtual {p0}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    .line 313
    invoke-virtual {p0}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->saneSize(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 314
    invoke-virtual {p0}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method private refreshDataplanInfo(Lcom/android/settingslib/net/a$a;)V
    .locals 7

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 262
    iput v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    const-wide/16 v1, -0x1

    .line 263
    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 2046
    iget-wide v3, p1, Lcom/android/settingslib/net/a$a;->d:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    .line 2048
    iget-wide v3, p1, Lcom/android/settingslib/net/a$a;->e:J

    .line 2050
    :cond_0
    iget-wide v5, p1, Lcom/android/settingslib/net/a$a;->f:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_1

    .line 2051
    iget-wide v3, p1, Lcom/android/settingslib/net/a$a;->f:J

    .line 264
    :cond_1
    iput-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 265
    iget-wide v3, p1, Lcom/android/settingslib/net/a$a;->f:J

    iput-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    .line 266
    iget-wide v3, p1, Lcom/android/settingslib/net/a$a;->g:J

    iput-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleStart:J

    .line 267
    iget-wide v3, p1, Lcom/android/settingslib/net/a$a;->h:J

    iput-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    .line 268
    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    .line 270
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionId:I

    invoke-virtual {p1, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_2

    .line 272
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreferenceController$cD5DaKoMa418EjpmdORN_opJY38;

    invoke-direct {v3, p0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreferenceController$cD5DaKoMa418EjpmdORN_opJY38;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 273
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    :cond_2
    if-eqz p1, :cond_5

    .line 275
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    if-eqz v0, :cond_5

    .line 276
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    .line 277
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionId:I

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object p1

    .line 279
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionId:I

    invoke-static {v0, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getPrimaryPlan(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 283
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    .line 284
    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 285
    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    invoke-static {v3, v4}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->unlimited(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 286
    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 288
    :cond_3
    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 289
    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    .line 291
    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 292
    iget-object v1, p1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_4

    .line 293
    iget-object v1, p1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleStart:J

    .line 294
    iget-object p1, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    .line 296
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    .line 299
    :cond_5
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionId:I

    .line 300
    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->createManageSubscriptionIntent(I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Have "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " plans, dflt sub-id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", intent "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataUsageController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static saneSize(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x38d7ea4c68000L

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static unlimited(J)Z
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/datausage/f;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    .line 191
    invoke-static {v0}, Lcom/android/settings/datausage/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$refreshDataplanInfo$0$DataUsageSummaryPreferenceController(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    .line 273
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    iget v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionId:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStart()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/b;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/widget/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/b;

    .line 169
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/b;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;)Lcom/android/settings/widget/b;

    return-void
.end method

.method setCarrierValues(Ljava/lang/String;JJLandroid/content/Intent;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    .line 183
    iput-wide p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    .line 184
    iput-wide p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    .line 185
    iput-object p6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    return-void
.end method

.method setPlanValues(IJJ)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 174
    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    .line 175
    iput-wide p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 176
    iput-wide p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 177
    iput-wide p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 10

    .line 196
    check-cast p1, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    .line 199
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/datausage/f;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/a;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/net/a;->a(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/a$a;

    move-result-object v0

    .line 201
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/d;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/d;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/datausage/e;->a(Lcom/android/settingslib/net/a$a;Landroid/net/NetworkPolicy;)V

    .line 202
    invoke-virtual {p1, v7, v1, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(ZLjava/lang/String;Z)V

    .line 222
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v2, :cond_0

    .line 223
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->refreshDataplanInfo(Lcom/android/settingslib/net/a$a;)V

    .line 226
    :cond_0
    iget-wide v2, v0, Lcom/android/settingslib/net/a$a;->e:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    iget-wide v2, v0, Lcom/android/settingslib/net/a$a;->d:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    .line 227
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1204c9

    .line 228
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v4, v0, Lcom/android/settingslib/net/a$a;->e:J

    .line 229
    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v4, v0, Lcom/android/settingslib/net/a$a;->d:J

    .line 230
    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v6

    .line 227
    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-wide v2, v0, Lcom/android/settingslib/net/a$a;->e:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_2

    .line 232
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1204c8

    .line 233
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v4, v0, Lcom/android/settingslib/net/a$a;->e:J

    .line 234
    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v7

    .line 232
    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :cond_2
    iget-wide v2, v0, Lcom/android/settingslib/net/a$a;->d:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_3

    .line 236
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1204c6

    .line 237
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v4, v0, Lcom/android/settingslib/net/a$a;->d:J

    .line 238
    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v7

    .line 236
    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 240
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Ljava/lang/CharSequence;)V

    .line 243
    :goto_0
    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(JJZ)V

    .line 245
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_4

    .line 246
    invoke-virtual {p1, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Z)V

    goto :goto_1

    .line 248
    :cond_4
    invoke-virtual {p1, v6}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v9}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 250
    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 249
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 251
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(F)V

    .line 253
    :goto_1
    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    iget-object v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(JJLjava/lang/CharSequence;ILandroid/content/Intent;)V

    return-void

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/a;

    .line 206
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 205
    invoke-virtual {v0, v2}, Lcom/android/settingslib/net/a;->a(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/a$a;

    move-result-object v8

    .line 207
    iget-object v0, v8, Lcom/android/settingslib/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v6, v0, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(ZLjava/lang/String;Z)V

    .line 209
    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Ljava/lang/CharSequence;)V

    .line 210
    iget-wide v1, v8, Lcom/android/settingslib/net/a$a;->f:J

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(JJZ)V

    .line 213
    invoke-virtual {p1, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Z)V

    .line 214
    iget-wide v1, v8, Lcom/android/settingslib/net/a$a;->h:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(JJLjava/lang/CharSequence;ILandroid/content/Intent;)V

    return-void
.end method
