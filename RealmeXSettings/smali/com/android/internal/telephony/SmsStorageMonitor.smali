.class public Lcom/android/internal/telephony/SmsStorageMonitor;
.super Landroid/os/Handler;
.source "SmsStorageMonitor.java"


# static fields
.field private static final EVENT_ICC_FULL:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x3

.field private static final EVENT_REPORT_MEMORY_STATUS_DONE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SmsStorageMonitor"

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388


# instance fields
.field final mCi:Lcom/android/internal/telephony/CommandsInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mReportMemoryStatusPending:Z

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field mStorageAvailable:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 159
    new-instance v1, Lcom/android/internal/telephony/SmsStorageMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsStorageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 78
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    .line 79
    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->createWakelock()V

    .line 83
    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x3

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.DEVICE_STORAGE_FULL"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private createWakelock()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SmsStorageMonitor"

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private handleIccFull()V
    .locals 4

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSimFullApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsFull(Landroid/os/Handler;)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const-string v2, "SmsStorageMonitor"

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-boolean p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReportMemoryStatusPending:Z

    if-eqz p1, :cond_1

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Sending pending memory status report : mStorageAvailable = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 128
    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 115
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 116
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReportMemoryStatusPending:Z

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Memory status report to modem pending : mStorageAvailable = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReportMemoryStatusPending:Z

    return-void

    .line 110
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleIccFull()V

    return-void
.end method

.method public isStorageAvailable()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    return v0
.end method
