.class public Lcom/android/internal/telephony/CellBroadcastHandler;
.super Lcom/android/internal/telephony/WakeLockStateMachine;
.source "CellBroadcastHandler.java"


# static fields
.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "message"


# instance fields
.field private final mLocalLog:Landroid/util/LocalLog;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 1

    const-string v0, "CellBroadcastHandler"

    .line 51
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/WakeLockStateMachine;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 46
    new-instance p1, Landroid/util/LocalLog;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mLocalLog:Landroid/util/LocalLog;

    return-void
.end method

.method public static makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CellBroadcastHandler;
    .locals 1

    .line 64
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 65
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->start()V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellBroadcastHandler:"

    .line 162
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V
    .locals 14

    .line 96
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v2

    .line 98
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getMessagePriority()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    move-result v4

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->isEtwsMessage()Z

    move-result v5

    .line 99
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v6

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v7

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 97
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeNewCBSms(IIIZZIIJ)V

    .line 104
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v0

    const-string v1, "message"

    if-eqz v0, :cond_2

    .line 105
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Dispatching emergency SMS CB, SmsCbMessage is: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 114
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 117
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "cmas_additional_broadcast_pkg"

    .line 120
    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v3, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v7, 0x11

    const/4 v8, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v2

    .line 125
    invoke-virtual/range {v3 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1070022

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mReceiverCount:Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 134
    array-length v1, p1

    const/4 v3, 0x0

    move v13, v3

    :goto_0
    if-ge v13, v1, :cond_1

    aget-object v3, p1, v13

    .line 136
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v3, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v7, 0x11

    iget-object v8, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v0

    move-object v6, v2

    .line 137
    invoke-virtual/range {v3 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 141
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Dispatching SMS CB, SmsCbMessage is: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 144
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 147
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    invoke-virtual {v4, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {v4, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 154
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mReceiverCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 155
    iget-object v3, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v7, 0x10

    iget-object v8, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "android.permission.RECEIVE_SMS"

    .line 155
    invoke-virtual/range {v3 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2

    .line 78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/telephony/SmsCbMessage;

    if-eqz v0, :cond_0

    .line 79
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    const/4 p1, 0x1

    return p1

    .line 82
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

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
