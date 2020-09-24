.class public final Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;
.super Lcom/android/internal/telephony/WakeLockStateMachine;
.source "CdmaServiceCategoryProgramHandler.java"


# instance fields
.field final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mScpResultsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2

    const-string v0, "CdmaServiceCategoryProgramHandler"

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 125
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mReceiverCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 12

    .line 98
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsCbProgramData()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "handleServiceCategoryProgramData: program data list is null!"

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V

    return v1

    .line 104
    :cond_0
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p1

    const-string v2, "sender"

    invoke-virtual {v11, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "program_data"

    .line 106
    invoke-virtual {v11, p1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 107
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {v11, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 109
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mReceiverCount:Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 112
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 113
    invoke-virtual {v11, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mContext:Landroid/content/Context;

    const/16 v5, 0x10

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "android.permission.RECEIVE_SMS"

    move-object v3, v11

    .line 114
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method static makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;
    .locals 1

    .line 68
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->start()V

    return-object v0
.end method


# virtual methods
.method public final handleSmsMessage(Landroid/os/Message;)Z
    .locals 2

    .line 83
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_0

    .line 84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result p1

    return p1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage got object of type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
