.class public Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;
.super Ljava/lang/Object;
.source "SimStatusInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field final a:Landroid/telephony/TelephonyManager;

.field private final b:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final c:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;

.field private final d:Landroid/telephony/SubscriptionManager;

.field private final e:Landroid/telephony/CarrierConfigManager;

.field private final f:Landroid/content/res/Resources;

.field private final g:Landroid/content/Context;

.field private h:Landroid/telephony/SubscriptionInfo;

.field private i:Landroid/telephony/SignalStrength;

.field private j:Z

.field private k:Landroid/telephony/ServiceState;

.field private l:Z

.field private m:I

.field private n:Lcom/coloros/settings/feature/deviceinfo/c;

.field private o:I

.field private p:I

.field private q:Lcom/android/internal/telephony/Phone;

.field private r:Ljava/lang/String;

.field private s:Lcom/android/ims/e;

.field private t:Lcom/android/ims/e$a;

.field private u:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private v:Ljava/lang/String;

.field private final w:Landroid/content/BroadcastReceiver;

.field private x:Landroid/telephony/PhoneStateListener;

.field private y:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 2
    .param p1    # Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;-><init>(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->l:Z

    .line 170
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$2;-><init>(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->w:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$3;-><init>(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->y:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 235
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$4;-><init>(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->z:Landroid/os/Handler;

    .line 210
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;

    .line 211
    invoke-virtual {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    .line 2799
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 212
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    .line 213
    iput p3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->p:I

    .line 215
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    const-class p3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object p3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    .line 217
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    const-class p3, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e:Landroid/telephony/CarrierConfigManager;

    .line 218
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    const-class p3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->d:Landroid/telephony/SubscriptionManager;

    .line 219
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->o:I

    .line 220
    iget p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->o:I

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->q:Lcom/android/internal/telephony/Phone;

    .line 221
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    iget p3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->o:I

    invoke-virtual {p1, p3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->r:Ljava/lang/String;

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "mPhoneId: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->o:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mOperatorNumeric: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->r:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SimStatusInfoPreferenceController"

    invoke-static {p3, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    new-instance p1, Lcom/android/ims/e$a;

    iget-object p3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    iget v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->o:I

    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$6;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$6;-><init>(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V

    invoke-direct {p1, p3, v0, v1}, Lcom/android/ims/e$a;-><init>(Landroid/content/Context;ILcom/android/ims/e$a$a;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->t:Lcom/android/ims/e$a;

    .line 225
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->q:Lcom/android/internal/telephony/Phone;

    if-eqz p1, :cond_1

    .line 231
    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->z:Landroid/os/Handler;

    const/16 p3, 0x3ed

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->o:I

    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->u:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Lcom/android/ims/e;)Lcom/android/ims/e;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->s:Lcom/android/ims/e;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->q:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->r:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 406
    invoke-static {p1}, Lcom/android/settingslib/l;->b(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 407
    invoke-static {p1}, Lcom/android/settingslib/l;->a(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->d()V

    :cond_0
    if-eqz v0, :cond_3

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    .line 427
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12117f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 424
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12117d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 421
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12117e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 415
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12117c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "service_state_value"

    .line 431
    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/telephony/SignalStrength;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    const-string v1, "SimStatusInfoPreferenceController"

    if-nez v0, :cond_1

    const-string p1, "updateSignalStrength getPhoneSubscriptionInfo is null !"

    .line 440
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 444
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 445
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e:Landroid/telephony/CarrierConfigManager;

    .line 446
    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v3, "show_signal_strength_in_sim_status_bool"

    .line 450
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const-string v3, "signal_strength_value"

    if-eqz v0, :cond_10

    .line 453
    invoke-static {}, Lcom/coloros/settings/utils/h;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    .line 458
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 459
    invoke-static {v0}, Lcom/android/settingslib/l;->a(Landroid/telephony/ServiceState;)Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    .line 462
    :cond_4
    iget-boolean v4, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->l:Z

    if-eqz v4, :cond_5

    .line 463
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->n:Lcom/coloros/settings/feature/deviceinfo/c;

    iget v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->m:I

    iget v4, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->o:I

    invoke-static {p1, v0, v1, v2, v4}, Lcom/coloros/settings/utils/bd;->a(Landroid/telephony/SignalStrength;Landroid/content/res/Resources;Lcom/coloros/settings/feature/deviceinfo/c;II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    .line 468
    :cond_5
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 469
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v4, v2, :cond_6

    if-ne v4, v6, :cond_7

    :cond_6
    if-nez v5, :cond_7

    move v4, v7

    :cond_7
    if-eq v2, v4, :cond_f

    const/4 v5, 0x3

    if-ne v5, v4, :cond_8

    goto :goto_1

    .line 9812
    :cond_8
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v4

    .line 9816
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result p1

    .line 486
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "updateSignalStrength signalDbm : "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", signalAsu : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq v4, v1, :cond_9

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_a

    :cond_9
    move v4, v7

    :cond_a
    if-eq p1, v1, :cond_b

    const/16 v1, 0x63

    if-ne p1, v1, :cond_c

    :cond_b
    move p1, v7

    .line 496
    :cond_c
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v6, :cond_d

    .line 497
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 498
    :cond_d
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    const v1, 0x7f1214e3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_e
    return-void

    .line 477
    :cond_f
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "updateSignalStrength return state : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "0"

    .line 478
    invoke-direct {p0, v3, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    .line 454
    :cond_10
    :goto_2
    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic a(Lcom/coloros/settings/feature/deviceinfo/c$a;)V
    .locals 0

    .line 910
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 17113
    invoke-virtual {v0, p0, p1, v1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setText key = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimStatusInfoPreferenceController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;

    if-eqz v0, :cond_0

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setText mFragment.isAdded() = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->isAdded()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;

    invoke-virtual {v0, p0, p1, p2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->k:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->d:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;I)V
    .locals 3

    .line 18365
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    const v1, 0x7f12117f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18366
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateDataState state "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimStatusInfoPreferenceController"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f121169

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    .line 18385
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18386
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 18372
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12116c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 18369
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 18375
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12116a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 18378
    :cond_4
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 18381
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    const v0, 0x7f12116b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 18379
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_1
    const-string p1, "data_state_value"

    .line 18391
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private b(Landroid/telephony/ServiceState;)Z
    .locals 13

    .line 504
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    .line 11030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 10034
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 510
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 511
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    const-string v2, "signal_strength_value"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v4, v0, :cond_0

    if-ne v3, v0, :cond_1

    :cond_0
    if-eq v4, v1, :cond_17

    if-ne v3, v1, :cond_1

    goto/16 :goto_8

    .line 518
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    .line 520
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    .line 522
    :cond_3
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result p1

    const/4 v1, 0x2

    const/4 v6, -0x1

    if-ne p1, v3, :cond_4

    .line 525
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .line 526
    iget-object v7, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v7

    .line 527
    iget-object v8, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v8

    .line 528
    iget-object v9, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v9

    goto/16 :goto_6

    :cond_4
    const/16 v7, 0x63

    if-ne p1, v1, :cond_c

    const/4 v8, 0x5

    if-eq v0, v8, :cond_b

    const/4 v8, 0x6

    if-eq v0, v8, :cond_b

    const/16 v8, 0xc

    if-eq v0, v8, :cond_b

    const/16 v8, 0xe

    if-ne v0, v8, :cond_5

    goto/16 :goto_2

    :cond_5
    if-eq v0, v3, :cond_8

    const/16 v8, 0x8

    if-eq v0, v8, :cond_8

    const/16 v8, 0x9

    if-eq v0, v8, :cond_8

    const/16 v8, 0xa

    if-eq v0, v8, :cond_8

    const/16 v8, 0xf

    if-ne v0, v8, :cond_6

    goto :goto_0

    :cond_6
    const/16 v7, 0x11

    if-ne v0, v7, :cond_7

    .line 555
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    .line 556
    iget-object v7, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v7

    goto/16 :goto_3

    .line 15030
    :cond_7
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 558
    iget-object v7, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v7

    invoke-static {v0, v7}, Lcom/coloros/settings/utils/al;->e(Landroid/content/Context;I)I

    move-result v0

    .line 559
    iget-object v7, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v7

    .line 16030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v8

    .line 560
    iget-object v9, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v9

    invoke-static {v8, v9}, Lcom/coloros/settings/utils/al;->e(Landroid/content/Context;I)I

    move-result v8

    .line 561
    iget-object v9, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v9

    goto/16 :goto_6

    .line 543
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    if-eq v0, v7, :cond_a

    .line 14030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v7

    .line 547
    invoke-static {v7}, Lcom/coloros/settings/utils/al;->o(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 548
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    goto :goto_1

    :cond_9
    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x71

    goto :goto_1

    :cond_a
    move v0, v5

    .line 553
    :goto_1
    iget-object v7, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v7

    goto :goto_3

    .line 12030
    :cond_b
    :goto_2
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 534
    iget-object v7, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v7

    invoke-static {v0, v7}, Lcom/coloros/settings/utils/al;->e(Landroid/content/Context;I)I

    move-result v0

    .line 535
    iget-object v7, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v7

    .line 13030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v8

    .line 536
    iget-object v9, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v9

    invoke-static {v8, v9}, Lcom/coloros/settings/utils/al;->e(Landroid/content/Context;I)I

    move-result v8

    .line 537
    iget-object v9, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v9

    goto :goto_6

    :cond_c
    if-ne p1, v4, :cond_10

    .line 564
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_d

    .line 565
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 566
    iget-object v7, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v7

    :goto_3
    move v8, v5

    goto :goto_5

    .line 568
    :cond_d
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    if-eq v0, v7, :cond_f

    .line 17030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v7

    .line 572
    invoke-static {v7}, Lcom/coloros/settings/utils/al;->o(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 573
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    goto :goto_4

    :cond_e
    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x71

    goto :goto_4

    :cond_f
    move v0, v5

    .line 578
    :goto_4
    iget-object v7, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v7

    goto :goto_3

    :cond_10
    move v0, v5

    move v7, v0

    move v8, v7

    :goto_5
    move v9, v6

    :goto_6
    if-ne v6, v0, :cond_11

    move v0, v5

    :cond_11
    if-ne v6, v7, :cond_12

    move v7, v5

    :cond_12
    if-ne v6, v8, :cond_13

    move v8, v5

    :cond_13
    if-ne v6, v9, :cond_14

    move v9, v5

    :cond_14
    if-eqz v8, :cond_16

    .line 599
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CDMA "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    new-array v12, v1, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v4

    const v8, 0x7f1214e3

    invoke-virtual {v11, v8, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v3, :cond_15

    const-string p1, "LTE "

    .line 602
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_15
    const-string p1, "Evdo "

    .line 604
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :goto_7
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p1, v8, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return v4

    :cond_16
    return v5

    :cond_17
    :goto_8
    const-string p1, "0"

    .line 514
    invoke-direct {p0, v2, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return v5
.end method

.method static synthetic c(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->o:I

    return p0
.end method

.method private c()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "operator_name_value"

    .line 348
    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 349
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "carrierName "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimStatusInfoPreferenceController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/telephony/ServiceState;)V
    .locals 11

    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 622
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    if-eqz p1, :cond_1

    .line 624
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v3

    :goto_1
    iput v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->m:I

    if-eqz p1, :cond_2

    .line 625
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v3

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    .line 630
    :goto_2
    iget-object v4, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v4, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    const-string v4, "show_4g_for_lte_data_icon_bool"

    .line 632
    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "show_carrier_data_icon_pattern_string"

    .line 634
    invoke-virtual {v2, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5g_icon_configuration_string"

    .line 635
    invoke-virtual {v2, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v6

    move v6, v4

    move-object v4, v10

    goto :goto_3

    :cond_3
    move-object v2, v4

    move v6, v5

    .line 637
    :goto_3
    iget v7, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->m:I

    invoke-static {v7, v4, v2, p1}, Lcom/coloros/settings/utils/bd;->a(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/ServiceState;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->l:Z

    .line 638
    invoke-static {v3, v4, v2, p1}, Lcom/coloros/settings/utils/bd;->a(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/ServiceState;)Z

    move-result v7

    .line 639
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updateNetworkType, actualDataNetworkType = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->m:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", actualVoiceNetworkType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", show4GForLTE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", patternOfCarrierSpecificDataIcon = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", nr5GIconConfiguration = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIs5GNrDataType = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->l:Z

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIs5GNrVoiceType = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSubscriptionInfo = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SimStatusInfoPreferenceController"

    invoke-static {v4, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->m:I

    iget-boolean v5, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->l:Z

    invoke-static {v2, v6, v5, p1}, Lcom/coloros/settings/utils/bd;->a(IZZLandroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object p1

    .line 646
    invoke-static {v3, v6, v7}, Lcom/coloros/settings/utils/bd;->a(IZZ)Ljava/lang/String;

    move-result-object v2

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "dataNetworkTypeName "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", voiceNetworkTypeName "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->m:I

    if-nez v3, :cond_5

    move-object p1, v2

    .line 653
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "isVoWifiRegistered() isVowifiEnabled() "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->m:I

    const/16 v5, 0x12

    if-ne v3, v5, :cond_6

    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f()Z

    move-result v3

    if-nez v3, :cond_6

    .line 656
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "mDataNetworkType "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->m:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dataNetworkTypeName "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 657
    :cond_6
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move-object v2, p1

    goto :goto_5

    :cond_8
    :goto_4
    const-string v2, "IWLAN"

    const-string p1, "stable network type dataNetworkTypeName "

    .line 659
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const-string p1, "network_type_value"

    .line 662
    invoke-direct {p0, p1, v2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 665
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "updateNetworkType use time, "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private d()V
    .locals 2

    const-string v0, "signal_strength_value"

    const-string v1, "0"

    .line 615
    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private d(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 719
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    const-string v0, "roaming_state_value"

    if-eqz p1, :cond_0

    .line 720
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    const v1, 0x7f121179

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    .line 722
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    const v1, 0x7f12117a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->d(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c()V

    return-void
.end method

.method private e()Z
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->q:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    .line 672
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isWifiCallingEnabled: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimStatusInfoPreferenceController"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;

    return-object p0
.end method

.method private f()Z
    .locals 5

    .line 679
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->s:Lcom/android/ims/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->u:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    if-nez v2, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/e;->q()I

    move-result v0

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "imsRadioTech : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isCapable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->u:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v4, 0x1

    .line 687
    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isWifiConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimStatusInfoPreferenceController"

    .line 686
    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v4, :cond_1

    .line 689
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->u:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic g(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->u:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-object p0
.end method

.method private g()Z
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "connectivity"

    .line 701
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 703
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 704
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 705
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private h()V
    .locals 3

    .line 756
    invoke-static {}, Lcom/coloros/settings/utils/h;->d()Z

    move-result v0

    const-string v1, "sms_number"

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    const v2, 0x7f120781

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->v:Ljava/lang/String;

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->v:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    .line 762
    :cond_1
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Z
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Z
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Z
    .locals 4

    .line 17713
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oppo_multi_sim_network_primary_slot"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 17714
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isPrimarySlot : "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimStatusInfoPreferenceController"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17715
    iget p0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->p:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method static synthetic k(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic l(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h()V

    return-void
.end method

.method public static synthetic lambda$IuI0jopjvLhKItAtUj00pRjQtaU(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Lcom/coloros/settings/feature/deviceinfo/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/c$a;)V

    return-void
.end method

.method static synthetic m(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/ServiceState;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->k:Landroid/telephony/ServiceState;

    return-object p0
.end method

.method static synthetic n(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/SignalStrength;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    return-object p0
.end method

.method static synthetic o(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V
    .locals 2

    .line 18933
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->s:Lcom/android/ims/e;

    if-eqz v0, :cond_0

    const-string v0, "SimStatusInfoPreferenceController"

    const-string v1, "addCapabilitiesCallback "

    .line 18936
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18938
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->s:Lcom/android/ims/e;

    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->y:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v1, p0}, Lcom/android/ims/e;->a(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v1, "mImsManager addCapabilitiesCallback failed!"

    .line 18940
    invoke-static {v0, v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V
    .locals 2

    .line 18945
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->s:Lcom/android/ims/e;

    if-eqz v0, :cond_1

    const-string v0, "SimStatusInfoPreferenceController"

    const-string v1, "removeCapabilitiesCallback "

    .line 18948
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18950
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->s:Lcom/android/ims/e;

    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->y:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    if-eqz p0, :cond_0

    .line 19873
    invoke-virtual {v1}, Lcom/android/ims/e;->t()V

    .line 19874
    iget-object v1, v1, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object p0

    .line 20731
    iget-object v1, v1, Lcom/android/ims/h;->e:Lcom/android/ims/h$b;

    invoke-virtual {v1, p0}, Lcom/android/ims/h$b;->b(Landroid/os/IInterface;)V

    return-void

    .line 19870
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "capabilities callback can\'t be null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "mImsManager removeCapabilitiesCallback failed!"

    .line 18952
    invoke-static {v0, v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 268
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->x:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_1

    .line 3821
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;-><init>(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V

    .line 273
    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->x:Landroid/telephony/PhoneStateListener;

    .line 275
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c()V

    const-string v0, "data_network_type_value"

    .line 276
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;)V

    const-string v0, "voice_network_type_value"

    .line 277
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 280
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c(Landroid/telephony/ServiceState;)V

    .line 4396
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com.android.internal.R.bool.config_showAreaUpdateInfoSettings"

    .line 4397
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4396
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    .line 4398
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->j:Z

    .line 4400
    iget-boolean v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->j:Z

    if-nez v1, :cond_3

    const-string v1, "latest_area_info_value"

    .line 4401
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;)V

    .line 282
    :cond_3
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Landroid/telephony/ServiceState;)V

    .line 4871
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 283
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Landroid/telephony/SignalStrength;)V

    .line 284
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->d(Landroid/telephony/ServiceState;)V

    .line 5782
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_7

    .line 5785
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 5786
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e:Landroid/telephony/CarrierConfigManager;

    .line 5787
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "show_ims_registration_status_bool"

    .line 5789
    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    const-string v1, "ims_reg_state_value"

    if-eqz v2, :cond_6

    .line 5791
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v0

    .line 5792
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f:Landroid/content/res/Resources;

    if-eqz v0, :cond_5

    const v0, 0x7f120b08

    goto :goto_2

    :cond_5
    const v0, 0x7f120b07

    :goto_2
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 5794
    :cond_6
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;)V

    :cond_7
    :goto_3
    const-string v0, "imei"

    .line 6768
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;)V

    const-string v0, "imei_sv"

    .line 6778
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/coloros/settings/utils/bh;->x()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6904
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_4

    :cond_8
    const/4 v0, -0x1

    .line 6906
    :goto_4
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->o:I

    .line 6907
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/c;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/deviceinfo/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->n:Lcom/coloros/settings/feature/deviceinfo/c;

    .line 6908
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->n:Lcom/coloros/settings/feature/deviceinfo/c;

    iget v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->o:I

    new-instance v2, Lcom/coloros/settings/feature/deviceinfo/-$$Lambda$SimStatusInfoPreferenceController$IuI0jopjvLhKItAtUj00pRjQtaU;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/deviceinfo/-$$Lambda$SimStatusInfoPreferenceController$IuI0jopjvLhKItAtUj00pRjQtaU;-><init>(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V

    const-string v3, "FiveGServiceClient"

    const-string v4, "registerListener "

    .line 7153
    invoke-static {v3, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7155
    iget-object v3, v0, Lcom/coloros/settings/feature/deviceinfo/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7196
    iget-boolean v2, v0, Lcom/coloros/settings/feature/deviceinfo/c;->b:Z

    if-nez v2, :cond_9

    .line 7157
    invoke-virtual {v0}, Lcom/coloros/settings/feature/deviceinfo/c;->a()V

    return-void

    .line 7159
    :cond_9
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/deviceinfo/c;->c(I)V

    :cond_a
    return-void
.end method

.method final b()Landroid/telephony/ServiceState;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 807
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    .line 808
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 807
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "SimStatusInfoPreferenceController"

    const-string v1, "SimStatusInfoPreferenceControll destroy. "

    .line 959
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-static {}, Lcom/coloros/settings/utils/bh;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->n:Lcom/coloros/settings/feature/deviceinfo/c;

    if-eqz v0, :cond_1

    .line 961
    iget v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->o:I

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/deviceinfo/c;->a(I)V

    .line 962
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->n:Lcom/coloros/settings/feature/deviceinfo/c;

    .line 17196
    iget-boolean v1, v0, Lcom/coloros/settings/feature/deviceinfo/c;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "FiveGServiceClient"

    const-string v2, "Unbind service, true"

    .line 17190
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 17192
    iput v1, v0, Lcom/coloros/settings/feature/deviceinfo/c;->f:I

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->t:Lcom/android/ims/e$a;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/android/ims/e$a;->b()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_1

    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->d:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 337
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->x:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    .line 338
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 340
    iget-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->j:Z

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    return-void

    .line 7866
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settingslib/b;->a(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    .line 7354
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "number_value"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    iget v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->p:I

    invoke-static {v1, v3}, Lcom/coloros/settings/utils/bd;->b(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7355
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7886
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 8117
    invoke-virtual {v1, p0, v2, v3}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;Z)V

    .line 7358
    :cond_2
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v0, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->x:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    .line 300
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 304
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->d:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 306
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    .line 307
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Landroid/telephony/SignalStrength;)V

    .line 309
    iget-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->j:Z

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->w:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.cellbroadcastreceiver"

    .line 315
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->t:Lcom/android/ims/e$a;

    if-eqz v0, :cond_4

    .line 320
    invoke-virtual {v0}, Lcom/android/ims/e$a;->a()V

    .line 8727
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_7

    .line 8730
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 8731
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e:Landroid/telephony/CarrierConfigManager;

    .line 8732
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string v2, "show_iccid_in_sim_status_bool"

    .line 8736
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_5
    const-string v1, "icc_id_value"

    if-nez v2, :cond_6

    .line 8740
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 8876
    :cond_6
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 8742
    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9747
    :cond_7
    :goto_1
    invoke-static {}, Lcom/coloros/settings/utils/h;->c()Z

    move-result v0

    const-string v1, "imsi"

    if-eqz v0, :cond_8

    .line 9748
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 9749
    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 9751
    :cond_8
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Ljava/lang/String;)V

    .line 324
    :goto_2
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h()V

    return-void
.end method
