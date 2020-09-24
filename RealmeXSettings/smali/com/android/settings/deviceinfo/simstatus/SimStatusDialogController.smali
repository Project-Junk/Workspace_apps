.class public Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
.super Ljava/lang/Object;
.source "SimStatusDialogController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field a:Landroid/telephony/SubscriptionInfo;

.field final b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

.field final c:Landroid/telephony/TelephonyManager;

.field final d:Landroid/telephony/CarrierConfigManager;

.field final e:Landroid/telephony/euicc/EuiccManager;

.field final f:Landroid/content/res/Resources;

.field final g:Landroid/content/Context;

.field h:Z

.field i:Landroid/telephony/PhoneStateListener;

.field private final j:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final k:Landroid/telephony/SubscriptionManager;

.field private final l:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1
    .param p1    # Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->j:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 124
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->l:Landroid/content/BroadcastReceiver;

    .line 147
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    .line 148
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->g:Landroid/content/Context;

    .line 1442
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->g:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 149
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    .line 150
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->g:Landroid/content/Context;

    const-class p3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c:Landroid/telephony/TelephonyManager;

    .line 151
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->g:Landroid/content/Context;

    const-class p3, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->d:Landroid/telephony/CarrierConfigManager;

    .line 152
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->g:Landroid/content/Context;

    const-class p3, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/euicc/EuiccManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->e:Landroid/telephony/euicc/EuiccManager;

    .line 153
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->g:Landroid/content/Context;

    const-class p3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->k:Landroid/telephony/SubscriptionManager;

    .line 155
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    if-eqz p2, :cond_0

    .line 158
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 3252
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12117f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3243
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12116c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3240
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    const v0, 0x7f121169

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3246
    :cond_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12116a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3249
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12116b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3256
    :goto_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v0, 0x7f0a01c9

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->k:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    return-object p0
.end method

.method static synthetic e(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v2, 0x7f0a048a

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method final a(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 272
    invoke-static {p1}, Lcom/android/settingslib/l;->b(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 273
    invoke-static {p1}, Lcom/android/settingslib/l;->a(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2340
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a0609

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(ILjava/lang/CharSequence;)V

    :cond_0
    if-eqz v0, :cond_3

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12117f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 290
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12117d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 287
    :cond_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12117e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 281
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12117c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a05ec

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method final a(Landroid/telephony/SignalStrength;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->d:Landroid/telephony/CarrierConfigManager;

    .line 306
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "show_signal_strength_in_sim_status_bool"

    .line 310
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const v2, 0x7f0a0609

    if-nez v0, :cond_2

    .line 314
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v0, 0x7f0a0608

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(I)V

    .line 315
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {p1, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(I)V

    return-void

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 320
    invoke-static {v0}, Lcom/android/settingslib/l;->a(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 2452
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    .line 2456
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result p1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_4

    move v0, v4

    :cond_4
    if-ne p1, v3, :cond_5

    move p1, v4

    .line 335
    :cond_5
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    const v6, 0x7f1214e3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 336
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v1

    .line 335
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(ILjava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method

.method final b()V
    .locals 6

    .line 347
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 348
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 349
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c()Landroid/telephony/ServiceState;

    move-result-object v3

    const/16 v4, 0xd

    const/16 v5, 0x13

    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_2

    :cond_0
    if-eqz v3, :cond_2

    .line 354
    :try_start_0
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v1

    :catch_0
    :goto_0
    const/4 v1, 0x0

    if-eqz v5, :cond_3

    .line 365
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 368
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const/4 v2, 0x0

    .line 372
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->d:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v4, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "show_4g_for_lte_data_icon_bool"

    .line 374
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_5
    const-string v0, "4G"

    if-eqz v2, :cond_7

    const-string v2, "LTE"

    .line 379
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v3, v0

    .line 382
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v1, v0

    .line 387
    :cond_7
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v2, 0x7f0a078f

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(ILjava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a01c6

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method final b(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 392
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    const v0, 0x7f0a0585

    if-eqz p1, :cond_0

    .line 393
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    const v2, 0x7f121179

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(ILjava/lang/CharSequence;)V

    return-void

    .line 395
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    const v2, 0x7f12117a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method final c()Landroid/telephony/ServiceState;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    .line 448
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 447
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->k:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->j:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->i:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 218
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->h:Z

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 185
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->i:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->k:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->j:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 196
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->h:Z

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->l:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.cellbroadcastreceiver"

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->g:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
