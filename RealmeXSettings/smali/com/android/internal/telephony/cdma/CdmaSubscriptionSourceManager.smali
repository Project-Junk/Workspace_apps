.class public Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
.super Landroid/os/Handler;
.source "CdmaSubscriptionSourceManager.java"


# static fields
.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_SOURCE:I = 0x2

.field private static final EVENT_RADIO_ON:I = 0x3

.field private static final EVENT_SUBSCRIPTION_STATUS_CHANGED:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CdmaSSM"

.field private static final SUBSCRIPTION_ACTIVATED:I = 0x1

.field public static final SUBSCRIPTION_FROM_NV:I = 0x1

.field public static final SUBSCRIPTION_FROM_RUIM:I = 0x0

.field public static final SUBSCRIPTION_SOURCE_UNKNOWN:I = -0x1

.field private static sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private static sReferenceCount:I

.field private static final sReferenceCountMonitor:Ljava/lang/Object;


# instance fields
.field private mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCountMonitor:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 52
    sput v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 65
    iget-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p2, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 66
    iget-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {p2, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result p1

    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "cdmaSSM constructor: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 70
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p2, 0x4

    invoke-interface {p1, p0, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static getDefault(Landroid/content/Context;)I
    .locals 2

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "subscription_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 169
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "subscriptionSource from settings: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CdmaSSM"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 81
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCountMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 85
    :cond_0
    sget p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    sget-object p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    sget-object p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 86
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private handleGetCdmaSubscriptionSource(Landroid/os/AsyncResult;)V
    .locals 2

    .line 189
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 190
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Subscription Source Changed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 198
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to get CDMA Subscription Source, Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CdmaSSM"

    .line 209
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CdmaSSM"

    .line 213
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 178
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method


# virtual methods
.method public dispose(Landroid/os/Handler;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 96
    sget-object p1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCountMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 97
    :try_start_0
    sget v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    .line 98
    sput v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sReferenceCount:I

    if-gtz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 102
    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->sInstance:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 104
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCdmaSubscriptionSource()I
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getcdmasubscriptionSource: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    .line 146
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    const-string v0, "EVENT_SUBSCRIPTION_STATUS_CHANGED"

    .line 128
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    .line 129
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 130
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 131
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 132
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "actStatus = "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    if-ne p1, v1, :cond_1

    const-string p1, "CdmaSSM"

    const-string v0, "get Cdma Subscription Source"

    .line 136
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 137
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    :cond_1
    return-void

    .line 141
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EVENT_SUBSCRIPTION_STATUS_CHANGED, Exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->logw(Ljava/lang/String;)V

    return-void

    .line 124
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    return-void

    .line 118
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CDMA_SUBSCRIPTION_SOURCE event = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    .line 119
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->handleGetCdmaSubscriptionSource(Landroid/os/AsyncResult;)V

    return-void
.end method
