.class public Lcom/android/internal/telephony/SimActivationTracker;
.super Ljava/lang/Object;
.source "SimActivationTracker.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SAT"

.field private static final VDBG:Z


# instance fields
.field private mDataActivationState:I

.field private final mDataActivationStateLog:Landroid/util/LocalLog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVoiceActivationState:I

.field private final mVoiceActivationStateLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SAT"

    const/4 v1, 0x2

    .line 46
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SimActivationTracker;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationStateLog:Landroid/util/LocalLog;

    .line 69
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationStateLog:Landroid/util/LocalLog;

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationState:I

    .line 75
    iput p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationState:I

    .line 77
    new-instance p1, Lcom/android/internal/telephony/SimActivationTracker$1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/SimActivationTracker$1;-><init>(Lcom/android/internal/telephony/SimActivationTracker;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/internal/telephony/SimActivationTracker;->VDBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SimActivationTracker;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimActivationTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static isValidActivationState(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SAT"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SAT"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static toString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "invalid"

    return-object p0

    :cond_0
    const-string p0, "restricted"

    return-object p0

    :cond_1
    const-string p0, "deactivated"

    return-object p0

    :cond_2
    const-string p0, "activated"

    return-object p0

    :cond_3
    const-string p0, "activating"

    return-object p0

    :cond_4
    const-string/jumbo p0, "unknown"

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 164
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, " mVoiceActivationState Log:"

    .line 165
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationStateLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, " mDataActivationState Log:"

    .line 170
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 172
    iget-object p2, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationStateLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public getDataActivationState()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationState:I

    return v0
.end method

.method public getVoiceActivationState()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationState:I

    return v0
.end method

.method public setDataActivationState(I)V
    .locals 2

    .line 108
    invoke-static {p1}, Lcom/android/internal/telephony/SimActivationTracker;->isValidActivationState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDataActivationState="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimActivationTracker;->log(Ljava/lang/String;)V

    .line 112
    iput p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationState:I

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationStateLog:Landroid/util/LocalLog;

    invoke-static {p1}, Lcom/android/internal/telephony/SimActivationTracker;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyDataActivationStateChanged(I)V

    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "invalid data activation state: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVoiceActivationState(I)V
    .locals 2

    .line 98
    invoke-static {p1}, Lcom/android/internal/telephony/SimActivationTracker;->isValidActivationState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    .line 101
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVoiceActivationState="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimActivationTracker;->log(Ljava/lang/String;)V

    .line 102
    iput p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationState:I

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationStateLog:Landroid/util/LocalLog;

    invoke-static {p1}, Lcom/android/internal/telephony/SimActivationTracker;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyVoiceActivationStateChanged(I)V

    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "invalid voice activation state: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
