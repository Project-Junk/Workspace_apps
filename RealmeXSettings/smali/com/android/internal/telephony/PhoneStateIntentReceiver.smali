.class public final Lcom/android/internal/telephony/PhoneStateIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateIntentReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneStatIntentReceiver"

.field private static final NOTIF_PHONE:I = 0x1

.field private static final NOTIF_SERVICE:I = 0x2

.field private static final NOTIF_SIGNAL:I = 0x4


# instance fields
.field private mAsuEventWhat:I

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPhoneStateEventWhat:I

.field mServiceState:Landroid/telephony/ServiceState;

.field private mServiceStateEventWhat:I

.field mSignalStrength:Landroid/telephony/SignalStrength;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mTarget:Landroid/os/Handler;

.field private mWants:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 49
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    .line 50
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->setContext(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->setTarget(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final getNotifyPhoneCallState()Z
    .locals 2

    .line 135
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNotifyServiceState()Z
    .locals 1

    .line 146
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNotifySignalStrength()Z
    .locals 1

    .line 157
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    .line 83
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifyPhoneCallState(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .line 91
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifyServiceState(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSignalStrengthDbm()I
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 121
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    return v0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifySignalStrength(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSignalStrengthLevelAsu()I
    .locals 2

    .line 105
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    return v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifySignalStrength(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final notifyPhoneCallState(I)V
    .locals 1

    .line 129
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    .line 130
    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneStateEventWhat:I

    .line 131
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyServiceState(I)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 140
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    .line 141
    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceStateEventWhat:I

    .line 142
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public final notifySignalStrength(I)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 151
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    .line 152
    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mAsuEventWhat:I

    .line 153
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIG_STR"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "android.intent.action.SIG_STR"

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 178
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifySignalStrength()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 179
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget p2, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mAsuEventWhat:I

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 180
    iget-object p2, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string v0, "android.intent.action.PHONE_STATE"

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "state"

    .line 185
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    const-class p2, Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {p2, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 189
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifyPhoneCallState()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget p2, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneStateEventWhat:I

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 192
    iget-object p2, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "android.intent.action.SERVICE_STATE"

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    .line 197
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifyServiceState()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 198
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget p2, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceStateEventWhat:I

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 200
    iget-object p2, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 204
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "[PhoneStateIntentRecv] caught "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PhoneStatIntentReceiver"

    invoke-static {v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final registerIntent()V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final setTarget(Landroid/os/Handler;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    return-void
.end method

.method public final unregisterIntent()V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
