.class public Lcom/android/internal/telephony/euicc/EuiccCardController;
.super Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final KEY_LAST_BOOT_COUNT:Ljava/lang/String; = "last_boot_count"

.field private static final TAG:Ljava/lang/String; = "EuiccCardController"

.field private static sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mBestComponent:Landroid/content/pm/ComponentInfo;

.field private mCallingPackage:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

.field private mEuiccMainThreadHandler:Landroid/os/Handler;

.field private mSimSlotStatusChangeReceiver:Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccCardController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/telephony/euicc/EuiccController;Lcom/android/internal/telephony/uicc/UiccController;)V

    const-string p1, "euicc_card_controller"

    .line 106
    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/telephony/euicc/EuiccController;Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mAppOps:Landroid/app/AppOpsManager;

    .line 118
    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    .line 119
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 120
    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    .line 122
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->isBootUp(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    new-instance p1, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/EuiccCardController$1;)V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mSimSlotStatusChangeReceiver:Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    .line 124
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mSimSlotStatusChangeReceiver:Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/euicc/EuiccController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mSimSlotStatusChangeReceiver:Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/euicc/EuiccCardController;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getResultCode(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/euicc/EuiccCardController;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-object p0
.end method

.method private checkCallingPackage(Ljava/lang/String;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mCallingPackage:Ljava/lang/String;

    .line 167
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mBestComponent:Landroid/content/pm/ComponentInfo;

    .line 168
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mBestComponent:Landroid/content/pm/ComponentInfo;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mCallingPackage:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 169
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "The calling package can only be LPA."

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static get()Lcom/android/internal/telephony/euicc/EuiccCardController;
    .locals 3

    .line 94
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    if-nez v0, :cond_1

    .line 95
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccCardController;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    if-eqz v1, :cond_0

    .line 99
    monitor-exit v0

    goto :goto_0

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "get() called before init()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 101
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    return-object v0
.end method

.method private getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    .locals 3

    .line 175
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForCardId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 178
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForSlot(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    return-object p1

    .line 183
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EuiccCard is null. CardId : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getResultCode(Ljava/lang/Throwable;)I
    .locals 1

    .line 188
    instance-of v0, p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    if-eqz v0, :cond_0

    .line 189
    check-cast p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->getErrorCode()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public static init(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccCardController;
    .locals 3

    .line 82
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccCardController;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    goto :goto_0

    :cond_0
    const-string p0, "EuiccCardController"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init() called multiple times! sInstance = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    sget-object p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    return-object p0

    :catchall_0
    move-exception p0

    .line 88
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static isBootUp(Landroid/content/Context;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "boot_count"

    .line 136
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 138
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "last_boot_count"

    .line 139
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v1, :cond_1

    if-eq v3, v1, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 141
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EuiccCardController"

    .line 1304
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "EuiccCardController"

    .line 1308
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public authenticateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V
    .locals 11

    move-object v1, p0

    move-object/from16 v0, p8

    const/4 v2, 0x0

    .line 899
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, p2

    .line 909
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, -0x2

    .line 912
    :try_start_1
    invoke-interface {v0, v3, v2}, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;->onComplete(I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v0, "authenticateServer callback failure."

    .line 914
    invoke-static {v0, v2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 919
    :cond_0
    new-instance v9, Lcom/android/internal/telephony/euicc/EuiccCardController$15;

    invoke-direct {v9, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController$15;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V

    .line 940
    iget-object v10, v1, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->authenticateServer(Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 v3, -0x3

    .line 902
    :try_start_2
    invoke-interface {v0, v3, v2}, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;->onComplete(I[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    move-object v2, v0

    const-string v0, "callback onComplete failure after checkCallingPackage."

    .line 904
    invoke-static {v0, v2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1050
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1060
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 1063
    :try_start_1
    invoke-interface {p5, p1, v0}, Lcom/android/internal/telephony/euicc/ICancelSessionCallback;->onComplete(I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "cancelSession callback failure."

    .line 1065
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1070
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$18;

    invoke-direct {p2, p0, p5}, Lcom/android/internal/telephony/euicc/EuiccCardController$18;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ICancelSessionCallback;)V

    .line 1091
    iget-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p4, p2, p5}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->cancelSession([BILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 1053
    :try_start_2
    invoke-interface {p5, p1, v0}, Lcom/android/internal/telephony/euicc/ICancelSessionCallback;->onComplete(I[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 1055
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V
    .locals 1

    .line 457
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 467
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 470
    :try_start_1
    invoke-interface {p4, p1}, Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;->onComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "deleteProfile callback failure."

    .line 472
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 477
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccCardController$6;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$6;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V

    .line 502
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, v0, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->deleteProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 460
    :try_start_2
    invoke-interface {p4, p1}, Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;->onComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 462
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V
    .locals 0

    .line 295
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 308
    :try_start_1
    invoke-interface {p5, p1}, Lcom/android/internal/telephony/euicc/IDisableProfileCallback;->onComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "disableProfile callback failure."

    .line 310
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 315
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$3;

    invoke-direct {p2, p0, p5}, Lcom/android/internal/telephony/euicc/EuiccCardController$3;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IDisableProfileCallback;)V

    .line 336
    iget-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p4, p2, p5}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->disableProfile(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 298
    :try_start_2
    invoke-interface {p5, p1}, Lcom/android/internal/telephony/euicc/IDisableProfileCallback;->onComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 300
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "Requires DUMP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1295
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1297
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "mCallingPackage="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "mBestComponent="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mBestComponent:Landroid/content/pm/ComponentInfo;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public getAllProfiles(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 211
    :try_start_1
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;->onComplete(I[Landroid/service/euicc/EuiccProfileInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "getAllProfiles callback failure."

    .line 213
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 218
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$1;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V

    .line 240
    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getAllProfiles(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 201
    :try_start_2
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;->onComplete(I[Landroid/service/euicc/EuiccProfileInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 203
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 561
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 571
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 574
    :try_start_1
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;->onComplete(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "getDefaultSmdpAddress callback failure."

    .line 576
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 581
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$8;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$8;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V

    .line 602
    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getDefaultSmdpAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 564
    :try_start_2
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;->onComplete(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 566
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getEuiccChallenge(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 754
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 764
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 767
    :try_start_1
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;->onComplete(I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "getEuiccChallenge callback failure."

    .line 769
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 774
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$12;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$12;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V

    .line 795
    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEuiccChallenge(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 757
    :try_start_2
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;->onComplete(I[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 759
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 802
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 812
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 815
    :try_start_1
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;->onComplete(I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "getEuiccInfo1 callback failure."

    .line 817
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 822
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$13;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$13;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V

    .line 843
    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEuiccInfo1(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 805
    :try_start_2
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;->onComplete(I[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 807
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 850
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 860
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 863
    :try_start_1
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;->onComplete(I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "getEuiccInfo2 callback failure."

    .line 865
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 870
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$14;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$14;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V

    .line 891
    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEuiccInfo2(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 853
    :try_start_2
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;->onComplete(I[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 855
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 247
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 260
    :try_start_1
    invoke-interface {p4, p1, v0}, Lcom/android/internal/telephony/euicc/IGetProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "getProfile callback failure."

    .line 262
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 267
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$2;

    invoke-direct {p2, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$2;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V

    .line 288
    iget-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 250
    :try_start_2
    invoke-interface {p4, p1, v0}, Lcom/android/internal/telephony/euicc/IGetProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 252
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 705
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 715
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 718
    :try_start_1
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;->onComplete(ILandroid/telephony/euicc/EuiccRulesAuthTable;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "getRulesAuthTable callback failure."

    .line 720
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 725
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$11;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$11;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V

    .line 747
    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getRulesAuthTable(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 708
    :try_start_2
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;->onComplete(ILandroid/telephony/euicc/EuiccRulesAuthTable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 710
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getSmdsAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 609
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 619
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 622
    :try_start_1
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;->onComplete(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "getSmdsAddress callback failure."

    .line 624
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 629
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$9;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$9;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V

    .line 650
    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getSmdsAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 612
    :try_start_2
    invoke-interface {p3, p1, v0}, Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;->onComplete(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 614
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isEmbeddedSlotActivated()Z
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    .line 154
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 155
    aget-object v3, v0, v2

    .line 156
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1098
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1108
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 1111
    :try_start_1
    invoke-interface {p4, p1, v0}, Lcom/android/internal/telephony/euicc/IListNotificationsCallback;->onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "listNotifications callback failure."

    .line 1113
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1118
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$19;

    invoke-direct {p2, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$19;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IListNotificationsCallback;)V

    .line 1140
    iget-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->listNotifications(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 1101
    :try_start_2
    invoke-interface {p4, p1, v0}, Lcom/android/internal/telephony/euicc/IListNotificationsCallback;->onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 1103
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 998
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1008
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 1011
    :try_start_1
    invoke-interface {p4, p1, v0}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;->onComplete(I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "loadBoundProfilePackage callback failure."

    .line 1013
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1018
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccCardController$17;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$17;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V

    .line 1043
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, v0, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loadBoundProfilePackage([BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 1001
    :try_start_2
    invoke-interface {p4, p1, v0}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;->onComplete(I[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 1003
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public prepareDownload(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V
    .locals 8

    const/4 v0, 0x0

    .line 949
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 959
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, -0x2

    .line 962
    :try_start_1
    invoke-interface {p7, p1, v0}, Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;->onComplete(I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "prepareDownload callback failure."

    .line 964
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 969
    :cond_0
    new-instance v6, Lcom/android/internal/telephony/euicc/EuiccCardController$16;

    invoke-direct {v6, p0, p7}, Lcom/android/internal/telephony/euicc/EuiccCardController$16;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V

    .line 990
    iget-object v7, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->prepareDownload([B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 952
    :try_start_2
    invoke-interface {p7, p1, v0}, Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;->onComplete(I[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 954
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public removeNotificationFromList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V
    .locals 0

    .line 1245
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1255
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 1258
    :try_start_1
    invoke-interface {p4, p1}, Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;->onComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "removeNotificationFromList callback failure."

    .line 1260
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1265
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$22;

    invoke-direct {p2, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$22;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V

    .line 1287
    iget-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->removeNotificationFromList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 1248
    :try_start_2
    invoke-interface {p4, p1}, Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;->onComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 1250
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V
    .locals 1

    .line 509
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 519
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 522
    :try_start_1
    invoke-interface {p4, p1}, Lcom/android/internal/telephony/euicc/IResetMemoryCallback;->onComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "resetMemory callback failure."

    .line 524
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 529
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$7;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IResetMemoryCallback;)V

    .line 554
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, v0, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->resetMemory(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 512
    :try_start_2
    invoke-interface {p4, p1}, Lcom/android/internal/telephony/euicc/IResetMemoryCallback;->onComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 514
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1196
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1206
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 1209
    :try_start_1
    invoke-interface {p4, p1, v0}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;->onComplete(ILandroid/telephony/euicc/EuiccNotification;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "retrieveNotification callback failure."

    .line 1211
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1216
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$21;

    invoke-direct {p2, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$21;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V

    .line 1238
    iget-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->retrieveNotification(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 1199
    :try_start_2
    invoke-interface {p4, p1, v0}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;->onComplete(ILandroid/telephony/euicc/EuiccNotification;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 1201
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public retrieveNotificationList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1147
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1157
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 1160
    :try_start_1
    invoke-interface {p4, p1, v0}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;->onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "retrieveNotificationList callback failure."

    .line 1162
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1167
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$20;

    invoke-direct {p2, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$20;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V

    .line 1189
    iget-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->retrieveNotificationList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 1150
    :try_start_2
    invoke-interface {p4, p1, v0}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;->onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 1152
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V
    .locals 0

    .line 657
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 667
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 670
    :try_start_1
    invoke-interface {p4, p1}, Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;->onComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "setDefaultSmdpAddress callback failure."

    .line 672
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 677
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$10;

    invoke-direct {p2, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$10;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V

    .line 698
    iget-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->setDefaultSmdpAddress(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 660
    :try_start_2
    invoke-interface {p4, p1}, Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;->onComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 662
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V
    .locals 0

    .line 409
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 419
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 422
    :try_start_1
    invoke-interface {p5, p1}, Lcom/android/internal/telephony/euicc/ISetNicknameCallback;->onComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "setNickname callback failure."

    .line 424
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 429
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$5;

    invoke-direct {p2, p0, p5}, Lcom/android/internal/telephony/euicc/EuiccCardController$5;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V

    .line 450
    iget-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p4, p2, p5}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->setNickname(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 412
    :try_start_2
    invoke-interface {p5, p1}, Lcom/android/internal/telephony/euicc/ISetNicknameCallback;->onComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 414
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V
    .locals 7

    const/4 v0, 0x0

    .line 343
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 353
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 356
    :try_start_1
    invoke-interface {p5, p1, v0}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string/jumbo p2, "switchToProfile callback failure."

    .line 358
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 363
    :cond_0
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$4;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/EuiccCardController$4;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;Z)V

    .line 402
    iget-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_1
    const/4 p1, -0x3

    .line 346
    :try_start_2
    invoke-interface {p5, p1, v0}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "callback onComplete failure after checkCallingPackage."

    .line 348
    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
