.class public Lcom/android/internal/telephony/MultiSimSettingController;
.super Ljava/lang/Object;
.source "MultiSimSettingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MultiSimSettingController"

.field protected static sInstance:Lcom/android/internal/telephony/MultiSimSettingController;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mIsAllSubscriptionsLoaded:Z

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field private mPrimarySubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSubController:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 81
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/MultiSimSettingController;
    .locals 2

    .line 69
    const-class v0, Lcom/android/internal/telephony/SubscriptionController;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/android/internal/telephony/MultiSimSettingController;

    invoke-direct {v1}, Lcom/android/internal/telephony/MultiSimSettingController;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    .line 73
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$updateDefaults$0(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 206
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized setRoamingDataEnabledForGroup(IZ)V
    .locals 3

    monitor-enter p0

    .line 343
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 345
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getGroupUuid(I)Landroid/os/ParcelUuid;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 347
    monitor-exit p0

    return-void

    .line 349
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 351
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v2, "data_roaming"

    .line 352
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 351
    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 354
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private showSimSelectDialogIfNeeded(Ljava/util/List;ZZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;ZZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    .line 254
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 255
    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    .line 256
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le v3, p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 262
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, -0x1

    if-ne v3, v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    if-nez p3, :cond_3

    .line 265
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    move v0, v4

    goto :goto_2

    .line 266
    :cond_3
    iget-object p3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v1, :cond_5

    if-eqz p2, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    if-eqz v0, :cond_7

    .line 271
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.telephony.action.PRIMARY_SUBSCRIPTION_LIST_CHANGED"

    .line 272
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.android.settings"

    const-string p3, "com.android.settings.sim.SimSelectNotification"

    .line 273
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 275
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "android.telephony.extra.DEFAULT_SUBSCRIPTION_SELECT_TYPE"

    .line 276
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne v0, v4, :cond_6

    const-string p2, "android.telephony.extra.SUBSCRIPTION_ID"

    .line 278
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    :cond_6
    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method private updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I",
            "Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;",
            ")Z"
        }
    .end annotation

    .line 365
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/SubscriptionController;->getGroupUuid(I)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 369
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 370
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 371
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[updateDefaultValue] Record.id: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    if-eq v2, p2, :cond_1

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    .line 374
    invoke-virtual {v0, v1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[updateDefaultValue] updates to subId="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    if-eq p2, v2, :cond_3

    .line 384
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[updateDefaultValue: subId] from "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 385
    invoke-interface {p3, v2}, Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;->update(I)V

    .line 388
    :cond_3
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected disableDataForNonDefaultNonOpportunisticSubscriptions()V
    .locals 8

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 288
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    if-eq v6, v0, :cond_0

    .line 289
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 290
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->isOpportunistic(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 291
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->isUserDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setting data to false on "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setUserDataEnabled(Z)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$updateDefaults$1$MultiSimSettingController(I)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    return-void
.end method

.method public synthetic lambda$updateDefaults$2$MultiSimSettingController(I)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    return-void
.end method

.method public synthetic lambda$updateDefaults$3$MultiSimSettingController(I)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MultiSimSettingController"

    .line 392
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MultiSimSettingController"

    .line 396
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized onAllSubscriptionsLoaded()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "onAllSubscriptionsLoaded"

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mIsAllSubscriptionsLoaded:Z

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaults()V

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->disableDataForNonDefaultNonOpportunisticSubscriptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDefaultDataSettingChanged()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "onDefaultDataSettingChanged"

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->disableDataForNonDefaultNonOpportunisticSubscriptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRoamingDataEnabled(IZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "onRoamingDataEnabled"

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->setRoamingDataEnabledForGroup(IZ)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDataRoaming(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSubscriptionGroupCreated([I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "onSubscriptionGroupCreated"

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 149
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 153
    aget v1, p1, v0

    .line 154
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_2

    aget v3, p1, v0

    .line 155
    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SubscriptionController;->isOpportunistic(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "refSubId is "

    .line 160
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v0, "mobile_data"

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    .line 165
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onUserDataEnabled(IZ)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v0, "data_roaming"

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    .line 173
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onRoamingDataEnabled(IZ)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 177
    :catch_1
    monitor-exit p0

    return-void

    .line 149
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSubscriptionsChanged()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "onSubscriptionsChanged"

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mIsAllSubscriptionsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaults()V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->disableDataForNonDefaultNonOpportunisticSubscriptions()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onUserDataEnabled(IZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "onUserDataEnabled"

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->setUserDataEnabledForGroup(IZ)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->isOpportunistic(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 98
    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setUserDataEnabledForGroup(IZ)V
    .locals 4

    monitor-enter p0

    .line 303
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUserDataEnabledForGroup subId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 305
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getGroupUuid(I)Landroid/os/ParcelUuid;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 307
    monitor-exit p0

    return-void

    .line 309
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 310
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 313
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    .line 318
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->isOpportunistic(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 319
    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v2

    if-eq v1, v2, :cond_2

    const-string v1, "Can not enable two active primary subscriptions."

    .line 320
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setUserDataEnabled(Z)V

    goto :goto_0

    .line 332
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v3, "mobile_data"

    invoke-static {v2, v3, v1, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateDefaults()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "updateDefaults"

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 196
    iget-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mIsAllSubscriptionsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 198
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 201
    monitor-exit p0

    return-void

    .line 203
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    .line 206
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/-$$Lambda$MultiSimSettingController$o5faRHxto_4PRqL7yYyTpAmBXy4;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$MultiSimSettingController$o5faRHxto_4PRqL7yYyTpAmBXy4;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 207
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    .line 214
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_2

    if-eqz v1, :cond_3

    .line 215
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const-string v1, "[updateDefaultValues] to only primary sub "

    .line 217
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 224
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[updateDefaultValues] records: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const-string v0, "[updateDefaultValues] Update default data subscription"

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 230
    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    new-instance v3, Lcom/android/internal/telephony/-$$Lambda$MultiSimSettingController$WtGtOenjqxSBoW5BUjT-VlNoSTM;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/-$$Lambda$MultiSimSettingController$WtGtOenjqxSBoW5BUjT-VlNoSTM;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    .line 229
    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v0

    const-string v2, "[updateDefaultValues] Update default voice subscription"

    .line 234
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 236
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v3

    new-instance v4, Lcom/android/internal/telephony/-$$Lambda$MultiSimSettingController$DcLtrTEtdlCd4WOev4Zk79vrSko;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/-$$Lambda$MultiSimSettingController$DcLtrTEtdlCd4WOev4Zk79vrSko;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    .line 235
    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v2

    const-string v3, "[updateDefaultValues] Update default sms subscription"

    .line 240
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 242
    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v4

    new-instance v5, Lcom/android/internal/telephony/-$$Lambda$MultiSimSettingController$GxCl_qV1anWayDxo4dQIuZZ5PC0;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/-$$Lambda$MultiSimSettingController$GxCl_qV1anWayDxo4dQIuZZ5PC0;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    .line 241
    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v3

    .line 245
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->showSimSelectDialogIfNeeded(Ljava/util/List;ZZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
