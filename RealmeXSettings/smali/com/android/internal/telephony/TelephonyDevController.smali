.class public Lcom/android/internal/telephony/TelephonyDevController;
.super Landroid/os/Handler;
.source "TelephonyDevController.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_HARDWARE_CONFIG_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TDC"

.field private static final mLock:Ljava/lang/Object;

.field private static mModems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static mSims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static sRilHardwareConfig:Landroid/os/Message;

.field private static sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 100
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyDevController;->initFromResource()V

    .line 102
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 103
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    return-void
.end method

.method public static create()Lcom/android/internal/telephony/TelephonyDevController;
    .locals 3

    .line 63
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/android/internal/telephony/TelephonyDevController;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyDevController;-><init>()V

    .line 68
    sput-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    monitor-exit v0

    return-object v1

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TelephonyDevController already created!?!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/android/internal/telephony/TelephonyDevController;
    .locals 3

    .line 73
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    if-eqz v1, :cond_0

    .line 77
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    monitor-exit v0

    return-object v1

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TelephonyDevController not yet created!?!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getModemCount()I
    .locals 4

    .line 195
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "getModemCount: "

    .line 197
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 198
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V
    .locals 4

    .line 169
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 170
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    .line 171
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 174
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/HardwareConfig;

    if-eqz v1, :cond_1

    .line 176
    iget v2, v1, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v2, :cond_0

    .line 177
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 178
    :cond_0
    iget v2, v1, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 179
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string p0, "handleGetHardwareConfigChanged - returned an error."

    .line 187
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private initFromResource()V
    .locals 6

    .line 82
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070058

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 87
    new-instance v4, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/HardwareConfig;-><init>(Ljava/lang/String;)V

    .line 89
    iget v3, v4, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v3, :cond_0

    .line 90
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 91
    :cond_0
    iget v3, v4, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 92
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TDC"

    .line 55
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TDC"

    .line 59
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3

    .line 112
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sRilHardwareConfig:Landroid/os/Message;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->getHardwareConfig(Landroid/os/Message;)V

    .line 114
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sRilHardwareConfig:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 116
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 117
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V

    .line 121
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static unregisterRIL(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1

    .line 125
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForHardwareConfigChanged(Landroid/os/Handler;)V

    return-void
.end method

.method private static updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/HardwareConfig;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 153
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HardwareConfig;

    .line 154
    iget-object v4, v3, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v1, "updateOrInsert: removing: "

    .line 155
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string/jumbo v1, "updateOrInsert: inserting: "

    .line 160
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getAllModems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 315
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "getAllModems: empty list."

    .line 316
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HardwareConfig;

    .line 319
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_1
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllSims()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "getAllSims: empty list."

    .line 334
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 336
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HardwareConfig;

    .line 337
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_1
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 342
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllSimsForModem(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "getAllSimsForModem: no registered sim device?!?"

    .line 287
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 288
    monitor-exit v0

    return-object v2

    .line 291
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getAllSimsForModem: out-of-bounds access for modem device "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " max: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 293
    monitor-exit v0

    return-object v2

    :cond_1
    const-string v1, "getAllSimsForModem "

    .line 296
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object p1

    .line 300
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HardwareConfig;

    .line 301
    iget-object v4, v3, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 302
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 306
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getModem(I)Lcom/android/internal/telephony/HardwareConfig;
    .locals 4

    .line 206
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "getModem: no registered modem device?!?"

    .line 208
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 209
    monitor-exit v0

    return-object v2

    .line 212
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getModem: out-of-bounds access for modem device "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " max: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 214
    monitor-exit v0

    return-object v2

    :cond_1
    const-string v1, "getModem: "

    .line 217
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 218
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/HardwareConfig;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 219
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getModemForSim(I)Lcom/android/internal/telephony/HardwareConfig;
    .locals 6

    .line 257
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getModemForSim: out-of-bounds access for sim device "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " max: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 265
    monitor-exit v0

    return-object v2

    :cond_1
    const-string v1, "getModemForSim "

    .line 268
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyDevController;->getSim(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object p1

    .line 271
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HardwareConfig;

    .line 272
    iget-object v4, v3, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    monitor-exit v0

    return-object v3

    .line 277
    :cond_3
    monitor-exit v0

    return-object v2

    :cond_4
    :goto_0
    const-string p1, "getModemForSim: no registered modem/sim device?!?"

    .line 259
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 260
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 278
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSim(I)Lcom/android/internal/telephony/HardwareConfig;
    .locals 4

    .line 237
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "getSim: no registered sim device?!?"

    .line 239
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 240
    monitor-exit v0

    return-object v2

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getSim: out-of-bounds access for sim device "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " max: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 245
    monitor-exit v0

    return-object v2

    :cond_1
    const-string v1, "getSim: "

    .line 248
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 249
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/HardwareConfig;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSimCount()I
    .locals 4

    .line 226
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "getSimCount: "

    .line 228
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 229
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 230
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: Unknown Event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "handleMessage: received EVENT_HARDWARE_CONFIG_CHANGED"

    .line 135
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 136
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 137
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyDevController;->handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V

    return-void
.end method
