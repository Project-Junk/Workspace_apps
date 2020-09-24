.class public Lcom/android/internal/telephony/CarrierServiceBindHelper;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    }
.end annotation


# static fields
.field private static final EVENT_PERFORM_IMMEDIATE_UNBIND:I = 0x1

.field private static final EVENT_REBIND:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierSvcBindHelper"

.field private static final UNBIND_DELAY_MILLIS:I = 0x7530


# instance fields
.field private mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mLastSimState:[Ljava/lang/String;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$2;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 110
    new-array v1, v0, [Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    .line 111
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    new-instance v4, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    invoke-direct {v4, p0, v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    .line 118
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 117
    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 119
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v7, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v7, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CarrierServiceBindHelper;)[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CarrierSvcBindHelper"

    .line 389
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "CarrierServiceBindHelper:"

    .line 393
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 395
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateForPhoneId(ILjava/lang/String;)V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update binding for phoneId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " simState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V

    .line 126
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 136
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void
.end method
