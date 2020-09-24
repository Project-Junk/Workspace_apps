.class public Lcom/android/internal/telephony/LocaleTracker;
.super Landroid/os/Handler;
.source "LocaleTracker.java"


# static fields
.field private static final CELL_INFO_MAX_DELAY_MS:J = 0x927c0L

.field private static final CELL_INFO_MIN_DELAY_MS:J = 0x7d0L

.field private static final CELL_INFO_PERIODIC_POLLING_DELAY_MS:J = 0x927c0L

.field private static final DBG:Z = true

.field private static final EVENT_REQUEST_CELL_INFO:I = 0x1

.field private static final EVENT_RESPONSE_CELL_INFO:I = 0x5

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x2

.field private static final EVENT_SIM_STATE_CHANGED:I = 0x3

.field private static final EVENT_UNSOL_CELL_INFO:I = 0x4

.field private static final MAX_FAIL_COUNT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "LocaleTracker"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mFailCellInfoCount:I

.field private mIsTracking:Z

.field private mLastServiceState:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mNitzStateMachine:Lcom/android/internal/telephony/NitzStateMachine;

.field private mOperatorNumeric:Ljava/lang/String;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine;Landroid/os/Looper;)V
    .locals 2

    .line 182
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p3, 0x3

    .line 114
    iput p3, p0, Lcom/android/internal/telephony/LocaleTracker;->mLastServiceState:I

    const/4 p3, 0x0

    .line 116
    iput-boolean p3, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    .line 118
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/LocaleTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LocaleTracker$1;-><init>(Lcom/android/internal/telephony/LocaleTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 184
    iput-object p2, p0, Lcom/android/internal/telephony/LocaleTracker;->mNitzStateMachine:Lcom/android/internal/telephony/NitzStateMachine;

    .line 185
    iput p3, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    .line 187
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 188
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/telephony/LocaleTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    iget-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 192
    iget-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 p3, 0x4

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/internal/telephony/Phone;->registerForCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LocaleTracker;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method public static getCellInfoDelayTime(I)J
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v0, 0x1e

    .line 327
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x7d0

    mul-long/2addr v0, v2

    .line 328
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getMccFromCellInfo()Ljava/lang/String;
    .locals 8

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 216
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;

    .line 218
    instance-of v6, v5, Landroid/telephony/CellInfoGsm;

    if-eqz v6, :cond_1

    .line 219
    check-cast v5, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMccString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 220
    :cond_1
    instance-of v6, v5, Landroid/telephony/CellInfoLte;

    if-eqz v6, :cond_2

    .line 221
    check-cast v5, Landroid/telephony/CellInfoLte;

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMccString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 222
    :cond_2
    instance-of v6, v5, Landroid/telephony/CellInfoWcdma;

    if-eqz v6, :cond_3

    .line 223
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMccString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v1

    :goto_1
    if-eqz v5, :cond_0

    .line 227
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    .line 228
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v7, v6

    .line 230
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-le v7, v4, :cond_0

    move-object v2, v5

    move v4, v7

    goto :goto_0

    :cond_5
    move-object v1, v2

    :cond_6
    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 443
    sget-object v0, Lcom/android/internal/telephony/LocaleTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 447
    sget-object v0, Lcom/android/internal/telephony/LocaleTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    .line 262
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLastServiceState:I

    .line 263
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    .line 264
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateTrackingStatus()V

    return-void
.end method

.method private declared-synchronized onSimCardStateChanged(I)V
    .locals 0

    monitor-enter p0

    .line 251
    :try_start_0
    iput p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    .line 252
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateTrackingStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private processCellInfo(Landroid/os/AsyncResult;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 284
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 289
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processCellInfo: cell info="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    .line 292
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 285
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    return-void
.end method

.method private requestNextCellInfo(Z)V
    .locals 5

    .line 296
    iget-boolean v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->removeMessages(I)V

    if-eqz p1, :cond_1

    .line 300
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->resetCellInfoRetry()V

    const/4 p1, 0x4

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->removeMessages(I)V

    const/4 p1, 0x5

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->removeMessages(I)V

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/LocaleTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 309
    :cond_1
    iget p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    invoke-static {p1}, Lcom/android/internal/telephony/LocaleTracker;->getCellInfoDelayTime(I)J

    move-result-wide v1

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t get cell info. Try again in "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " secs."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/telephony/LocaleTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private resetCellInfoRetry()V
    .locals 1

    const/4 v0, 0x0

    .line 336
    iput v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    const/4 v0, 0x1

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->removeMessages(I)V

    return-void
.end method

.method private startTracking()V
    .locals 2

    .line 364
    iget-boolean v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Starting LocaleTracker"

    .line 366
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    .line 369
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private stopTracking()V
    .locals 2

    .line 354
    iget-boolean v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    const-string v0, "Stopping LocaleTracker"

    .line 357
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    .line 360
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->resetCellInfoRetry()V

    return-void
.end method

.method private declared-synchronized updateLocale()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ""

    .line 379
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 381
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 384
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateLocale: Can\'t get country from operator numeric. mcc = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". ex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->loge(Ljava/lang/String;)V

    .line 391
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->getMccFromCellInfo()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateLocale: mcc = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", country = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateLocale: Change the current country to \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mCellInfoList = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 403
    iput-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v2, "gsm.operator.iso-country"

    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "wifi"

    .line 412
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "Wifi manager is not available."

    .line 417
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 422
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.telephony.extra.NETWORK_COUNTRY"

    .line 423
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 425
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v3, 0x1

    .line 430
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mNitzStateMachine:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v0}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkCountryCodeUnavailable()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 433
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mNitzStateMachine:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkCountryCodeSet(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateTrackingStatus()V
    .locals 3

    .line 341
    iget v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    .line 343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mLastServiceState:I

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 347
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->startTracking()V

    return-void

    .line 349
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->stopTracking()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 458
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, "LocaleTracker:"

    .line 459
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 461
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mIsTracking = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 462
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mOperatorNumeric = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mSimState = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mCellInfoList = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mCurrentCountryIso = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mFailCellInfoCount = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Local logs:"

    .line 467
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 469
    iget-object p2, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 471
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 472
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    return-void
.end method

.method public getCurrentCountry()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    .line 154
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->processCellInfo(Landroid/os/AsyncResult;)V

    .line 157
    iget-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->requestNextCellInfo(Z)V

    return-void

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected message arrives. msg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->processCellInfo(Landroid/os/AsyncResult;)V

    .line 150
    iget-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->requestNextCellInfo(Z)V

    :cond_3
    return-void

    .line 166
    :cond_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->onSimCardStateChanged(I)V

    return-void

    .line 161
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 162
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ServiceState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void

    .line 144
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/Phone;->requestCellInfoUpdate(Landroid/os/WorkSource;Landroid/os/Message;)V

    return-void
.end method

.method public isTracking()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    return v0
.end method

.method public updateOperatorNumeric(Ljava/lang/String;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Operator numeric changes to \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 278
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    .line 279
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    :cond_0
    return-void
.end method
