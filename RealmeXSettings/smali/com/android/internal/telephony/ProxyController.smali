.class public Lcom/android/internal/telephony/ProxyController;
.super Ljava/lang/Object;
.source "ProxyController.java"


# static fields
.field private static final EVENT_APPLY_RC_RESPONSE:I = 0x3

.field private static final EVENT_FINISH_RC_RESPONSE:I = 0x4

.field private static final EVENT_NOTIFICATION_RC_CHANGED:I = 0x1

.field private static final EVENT_START_RC_RESPONSE:I = 0x2

.field private static final EVENT_TIMEOUT:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "ProxyController"

.field private static final SET_RC_STATUS_APPLYING:I = 0x3

.field private static final SET_RC_STATUS_FAIL:I = 0x5

.field private static final SET_RC_STATUS_IDLE:I = 0x0

.field private static final SET_RC_STATUS_STARTED:I = 0x2

.field private static final SET_RC_STATUS_STARTING:I = 0x1

.field private static final SET_RC_STATUS_SUCCESS:I = 0x4

.field private static final SET_RC_TIMEOUT_WAITING_MSEC:I = 0xafc8

.field private static sProxyController:Lcom/android/internal/telephony/ProxyController;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentLogicalModemIds:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewLogicalModemIds:[Ljava/lang/String;

.field private mNewRadioAccessFamily:[I

.field private mOldRadioAccessFamily:[I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

.field private mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

.field private mPhones:[Lcom/android/internal/telephony/Phone;

.field private mRadioAccessFamilyStatusCounter:I

.field private mRadioCapabilitySessionId:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mSetRadioAccessFamilyStatus:[I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mSmsController:Lcom/android/internal/telephony/SmsController;

.field private mTransactionFailed:Z

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

.field private mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneSwitcher;)V
    .locals 3

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 96
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 97
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 294
    new-instance v1, Lcom/android/internal/telephony/ProxyController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ProxyController$1;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const-string v1, "Constructor - Enter"

    .line 127
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 131
    iput-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 132
    iput-object p4, p0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 133
    iput-object p5, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 135
    invoke-static {p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->init(Landroid/content/Context;)Lcom/android/internal/telephony/ims/RcsMessageStoreController;

    .line 137
    new-instance p2, Lcom/android/internal/telephony/UiccPhoneBookController;

    iget-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/UiccPhoneBookController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

    .line 138
    new-instance p2, Lcom/android/internal/telephony/PhoneSubInfoController;

    iget-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {p2, p3, p4}, Lcom/android/internal/telephony/PhoneSubInfoController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

    .line 139
    new-instance p2, Lcom/android/internal/telephony/SmsController;

    iget-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/SmsController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mSmsController:Lcom/android/internal/telephony/SmsController;

    .line 140
    iget-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length p3, p2

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    .line 141
    array-length p3, p2

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    .line 142
    array-length p3, p2

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    .line 143
    array-length p3, p2

    new-array p3, p3, [Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    .line 144
    array-length p2, p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    const-string p2, "power"

    .line 147
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "ProxyController"

    .line 148
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 149
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 153
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length p3, p1

    if-ge v0, p3, :cond_0

    .line 154
    aget-object p1, p1, v0

    iget-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p2, p4}, Lcom/android/internal/telephony/Phone;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "Constructor - Exit"

    .line 157
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onStartRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onApplyRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onNotificationRadioCapabilityChanged(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onTimeoutRadioCapability(Landroid/os/Message;)V

    return-void
.end method

.method private clearTransaction()V
    .locals 5

    const-string v0, "clearTransaction"

    .line 579
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 581
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearTransaction: phoneId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status=IDLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 583
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aput v1, v3, v2

    .line 584
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aput v1, v3, v2

    .line 585
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aput v1, v3, v2

    .line 586
    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 592
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private completeRadioCapabilityTransaction()V
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinishRadioCapabilityResponse: success="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 544
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 547
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "radioAccessFamily["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 549
    new-instance v3, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v3, v1, v2}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    .line 550
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "rafs"

    .line 553
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 560
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    move-object v0, v1

    goto :goto_2

    .line 562
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 566
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    new-array v2, v2, [Landroid/telephony/RadioAccessFamily;

    .line 567
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 568
    new-instance v3, Landroid/telephony/RadioAccessFamily;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v4, v4, v1

    invoke-direct {v3, v1, v4}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 570
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    .line 574
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z
    .locals 12

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xafc8

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    .line 259
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "setRadioCapability: new request session id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 261
    :goto_0
    array-length v1, p1

    const/4 v3, 0x1

    if-ge v2, v1, :cond_0

    .line 262
    aget-object v1, p1, v2

    invoke-virtual {v1}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v5

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "setRadioCapability: phoneId="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status=STARTING"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aput v3, v1, v5

    .line 265
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    aput v3, v1, v5

    .line 266
    aget-object v1, p1, v2

    invoke-virtual {v1}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v1

    .line 270
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aput v1, v3, v5

    .line 272
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 275
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->getLogicalModemIdFromRaf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "setRadioCapability: mOldRadioAccessFamily["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "setRadioCapability: mNewRadioAccessFamily["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 280
    iget v6, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    const/4 v7, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v8, v1, v5

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    aget-object v9, v1, v5

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 289
    :cond_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/android/internal/telephony/ProxyController;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 122
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneSwitcher;)Lcom/android/internal/telephony/ProxyController;
    .locals 7

    .line 114
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/android/internal/telephony/ProxyController;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/ProxyController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneSwitcher;)V

    sput-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 117
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object p0
.end method

.method private getLogicalModemIdFromRaf(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 648
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 649
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 650
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private issueFinish(I)V
    .locals 10

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    const/4 v1, 0x0

    .line 515
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "issueFinish: phoneId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mTransactionFailed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 518
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    const/4 v5, 0x4

    .line 523
    iget-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v2, v2, v1

    goto :goto_1

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v2, v2, v1

    :goto_1
    move v6, v2

    .line 525
    iget-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    aget-object v2, v2, v1

    goto :goto_2

    .line 526
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    aget-object v2, v2, v1

    :goto_2
    move-object v7, v2

    .line 527
    iget-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    move v8, v2

    goto :goto_3

    :cond_2
    move v8, v3

    :goto_3
    const/4 v9, 0x4

    move-object v2, p0

    move v3, v1

    move v4, p1

    .line 519
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 530
    iget-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v2, :cond_3

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "issueFinish: phoneId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status: FAIL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 533
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v3, 0x5

    aput v3, v2, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "ProxyController"

    .line 659
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ProxyController"

    .line 663
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onApplyRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 3

    .line 401
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    if-eqz v0, :cond_2

    .line 402
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onApplyRadioCapabilityResponse: rc="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 408
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 409
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter p1

    .line 410
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onApplyRadioCapabilityResponse: Error response session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onApplyRadioCapabilityResponse: phoneId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status=FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x5

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 414
    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 415
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 417
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onApplyRadioCapabilityResponse: Valid start expecting notification rc="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void

    .line 403
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onApplyRadioCapabilityResponse: Ignore session="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rc="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private onNotificationRadioCapabilityChanged(Landroid/os/Message;)V
    .locals 5

    .line 426
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    if-eqz v0, :cond_5

    .line 427
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v1

    :try_start_0
    const-string v2, "onNotificationRadioCapabilityChanged: rc="

    .line 433
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v3, :cond_1

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rc="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 438
    monitor-exit v1

    return-void

    .line 441
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v2

    .line 442
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x1

    if-nez p1, :cond_3

    .line 443
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    goto :goto_0

    .line 448
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status=SUCCESS"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x4

    aput v4, p1, v2

    .line 451
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->onRadioCapChanged(I)V

    .line 452
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    goto :goto_1

    .line 444
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " status=FAIL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v0, 0x5

    aput v0, p1, v2

    .line 446
    iput-boolean v3, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 455
    :goto_1
    iget p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 456
    iget p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez p1, :cond_4

    .line 457
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onNotificationRadioCapabilityChanged: APPLY URC success="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 459
    iget p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V

    .line 461
    :cond_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 428
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rc="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private onStartRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 9

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 335
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "onStartRadioCapabilityResponse got exception="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 339
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 342
    monitor-exit v0

    return-void

    .line 344
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    if-eqz v1, :cond_8

    .line 345
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v4, :cond_1

    goto/16 :goto_5

    .line 350
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 351
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v2

    .line 352
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 353
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "onStartRadioCapabilityResponse: Error response session="

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onStartRadioCapabilityResponse: phoneId="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status=FAIL"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v1, 0x5

    aput v1, p1, v2

    .line 356
    iput-boolean v3, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    goto :goto_0

    .line 358
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onStartRadioCapabilityResponse: phoneId="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status=STARTED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v1, 0x2

    aput v1, p1, v2

    .line 362
    :goto_0
    iget p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez p1, :cond_7

    .line 363
    new-instance p1, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 364
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    array-length v2, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_4

    aget-object v6, v1, v5

    .line 365
    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 366
    iput-boolean v3, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    const-string v6, "ProxyController"

    const-string v7, "ERROR: sending down the same id for different phones"

    .line 367
    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 370
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onStartRadioCapabilityResponse: success="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 371
    iget-boolean p1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz p1, :cond_6

    .line 374
    iget p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V

    goto :goto_4

    .line 377
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    move p1, v4

    .line 378
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ge p1, v1, :cond_7

    .line 379
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v5, v1, p1

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    aget-object v6, v1, p1

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartRadioCapabilityResponse: phoneId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status=APPLYING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x3

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 393
    :cond_7
    :goto_4
    monitor-exit v0

    return-void

    .line 346
    :cond_8
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "onStartRadioCapabilityResponse: Ignore session="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rc="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 348
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 393
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onTimeoutRadioCapability(Landroid/os/Message;)V
    .locals 4

    .line 486
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v0, v1, :cond_0

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RadioCapability timeout: Ignore msg.arg1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!= mRadioCapabilitySessionId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void

    .line 492
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter p1

    const/4 v0, 0x0

    move v1, v0

    .line 494
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RadioCapability timeout: mSetRadioAccessFamilyStatus["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 504
    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 508
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V

    .line 509
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resetRadioAccessFamilyStatusCounter()V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    return-void
.end method

.method private sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    .locals 8
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 602
    new-instance v7, Lcom/android/internal/telephony/RadioCapability;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 604
    iget-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, p2, p1

    iget-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    .line 605
    invoke-virtual {p2, p7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 604
    invoke-virtual {p1, v7, p2}, Lcom/android/internal/telephony/Phone;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public areAllDataDisconnected(I)Z
    .locals 1

    .line 178
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 180
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->areAllDataDisconnected()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getMaxRafSupported()I
    .locals 7

    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 615
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 616
    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    aput v4, v0, v1

    .line 617
    aget v4, v0, v1

    if-ge v3, v4, :cond_0

    .line 618
    aget v2, v0, v1

    .line 619
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    move v6, v3

    move v3, v2

    move v2, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getMinRafSupported()I
    .locals 7

    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 633
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 634
    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    aput v4, v0, v1

    if-eqz v3, :cond_0

    .line 635
    aget v4, v0, v1

    if-le v3, v4, :cond_1

    .line 636
    :cond_0
    aget v2, v0, v1

    .line 637
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    move v6, v3

    move v3, v2

    move v2, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getRadioAccessFamily(I)I
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 198
    :cond_0
    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result p1

    return p1
.end method

.method onFinishRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 2

    .line 469
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/RadioCapability;

    if-eqz p1, :cond_0

    .line 470
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v0, v1, :cond_0

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinishRadioCapabilityResponse: Ignore session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void

    .line 475
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter p1

    .line 476
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " onFinishRadioCapabilityResponse mRadioAccessFamilyStatusCounter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 478
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 479
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v0, :cond_1

    .line 480
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 482
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerForAllDataDisconnected(ILandroid/os/Handler;I)V
    .locals 1

    .line 161
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 163
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForAllDataDisconnected(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .locals 6

    .line 211
    array-length v0, p1

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ne v0, v1, :cond_5

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 217
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 218
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "setRadioCapability: Phone["

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is not idle. Rejecting request."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V

    .line 221
    monitor-exit v0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    move v3, v0

    move v2, v1

    .line 228
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 229
    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v4

    aget-object v5, p1, v2

    invoke-virtual {v5}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v5

    if-eq v4, v5, :cond_2

    move v3, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    const-string p1, "setRadioCapability: Already in requested configuration, nothing to do."

    .line 235
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return v0

    .line 241
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 246
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 224
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 212
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Length of input rafs must equal to total phone count"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterForAllDataDisconnected(ILandroid/os/Handler;)V
    .locals 1

    .line 169
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 171
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method
