.class Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;
.super Landroid/telephony/NetworkService$NetworkServiceProvider;
.source "CellularNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellularNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellularNetworkServiceProvider"
.end annotation


# instance fields
.field private final mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/Message;",
            "Landroid/telephony/NetworkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLooper:Landroid/os/Looper;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic this$0:Lcom/android/internal/telephony/CellularNetworkService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CellularNetworkService;I)V
    .locals 2

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->this$0:Lcom/android/internal/telephony/CellularNetworkService;

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/telephony/NetworkService$NetworkServiceProvider;-><init>(Landroid/telephony/NetworkService;I)V

    .line 64
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getSlotIndex()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    new-instance p2, Landroid/os/HandlerThread;

    const-class v0, Lcom/android/internal/telephony/CellularNetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 81
    iget-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 82
    iget-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mLooper:Landroid/os/Looper;

    .line 83
    new-instance p2, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;

    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;-><init>(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;Landroid/os/Looper;Lcom/android/internal/telephony/CellularNetworkService;)V

    iput-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    .line 128
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegistrationStateFromResult(Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method private convertHalCellIdentityToCellIdentity(Landroid/hardware/radio/V1_0/CellIdentity;)Landroid/telephony/CellIdentity;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 372
    :cond_0
    iget v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellInfoType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 390
    :cond_1
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 391
    iget-object p1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    .line 392
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    .line 393
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    invoke-direct {v0, p1}, Landroid/telephony/CellIdentityTdscdma;-><init>(Landroid/hardware/radio/V1_0/CellIdentityTdscdma;)V

    goto :goto_0

    .line 382
    :cond_2
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 383
    iget-object p1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    .line 384
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    .line 385
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    invoke-direct {v0, p1}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/hardware/radio/V1_0/CellIdentityWcdma;)V

    goto :goto_0

    .line 398
    :cond_3
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 399
    iget-object p1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    .line 400
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/V1_0/CellIdentityLte;

    .line 401
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0, p1}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/hardware/radio/V1_0/CellIdentityLte;)V

    goto :goto_0

    .line 406
    :cond_4
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 407
    iget-object p1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    .line 408
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/V1_0/CellIdentityCdma;

    .line 409
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {v0, p1}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/hardware/radio/V1_0/CellIdentityCdma;)V

    goto :goto_0

    .line 374
    :cond_5
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 375
    iget-object p1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    .line 376
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/V1_0/CellIdentityGsm;

    .line 377
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {v0, p1}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/hardware/radio/V1_0/CellIdentityGsm;)V

    :cond_6
    :goto_0
    return-object v0
.end method

.method private convertHalCellIdentityToCellIdentity(Landroid/hardware/radio/V1_2/CellIdentity;)Landroid/telephony/CellIdentity;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 428
    :cond_0
    iget v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellInfoType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 446
    :cond_1
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 447
    iget-object p1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    .line 448
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    .line 449
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    invoke-direct {v0, p1}, Landroid/telephony/CellIdentityTdscdma;-><init>(Landroid/hardware/radio/V1_2/CellIdentityTdscdma;)V

    goto :goto_0

    .line 438
    :cond_2
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 439
    iget-object p1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    .line 440
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    .line 441
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    invoke-direct {v0, p1}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/hardware/radio/V1_2/CellIdentityWcdma;)V

    goto :goto_0

    .line 454
    :cond_3
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 455
    iget-object p1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    .line 456
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/V1_2/CellIdentityLte;

    .line 457
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0, p1}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/hardware/radio/V1_2/CellIdentityLte;)V

    goto :goto_0

    .line 462
    :cond_4
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 463
    iget-object p1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    .line 464
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    .line 465
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {v0, p1}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/hardware/radio/V1_2/CellIdentityCdma;)V

    goto :goto_0

    .line 430
    :cond_5
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 431
    iget-object p1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    .line 432
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/V1_2/CellIdentityGsm;

    .line 433
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {v0, p1}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/hardware/radio/V1_2/CellIdentityGsm;)V

    :cond_6
    :goto_0
    return-object v0
.end method

.method private convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 362
    :goto_1
    new-instance p2, Landroid/telephony/LteVopsSupportInfo;

    invoke-direct {p2, p1, v0}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    return-object p2
.end method

.method private createRegistrationStateFromDataRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationInfo;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 280
    new-instance v2, Landroid/telephony/LteVopsSupportInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v3}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    .line 284
    instance-of v4, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 285
    check-cast v1, Landroid/hardware/radio/V1_0/DataRegStateResult;

    .line 287
    iget v4, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;->regState:I

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v4

    .line 288
    iget v6, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;->rat:I

    invoke-static {v6}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v6

    .line 289
    iget v7, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;->reasonDataDenied:I

    .line 290
    iget v8, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;->regState:I

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v8

    .line 291
    iget v9, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;->maxDataCalls:I

    .line 293
    iget-object v1, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalCellIdentityToCellIdentity(Landroid/hardware/radio/V1_0/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v1

    :goto_0
    move-object/from16 v21, v1

    move-object/from16 v26, v2

    move/from16 v23, v5

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v18, v7

    move/from16 v22, v9

    goto/16 :goto_2

    .line 294
    :cond_0
    instance-of v4, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;

    if-eqz v4, :cond_1

    .line 295
    check-cast v1, Landroid/hardware/radio/V1_2/DataRegStateResult;

    .line 297
    iget v4, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;->regState:I

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v4

    .line 298
    iget v6, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;->rat:I

    invoke-static {v6}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v6

    .line 299
    iget v7, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;->reasonDataDenied:I

    .line 300
    iget v8, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;->regState:I

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v8

    .line 301
    iget v9, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;->maxDataCalls:I

    .line 302
    iget-object v1, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalCellIdentityToCellIdentity(Landroid/hardware/radio/V1_2/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v1

    goto :goto_0

    .line 303
    :cond_1
    instance-of v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;

    if-eqz v2, :cond_4

    .line 304
    check-cast v1, Landroid/hardware/radio/V1_4/DataRegStateResult;

    .line 306
    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v2, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v4

    .line 307
    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v2, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->rat:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v6

    .line 309
    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v7, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->reasonDataDenied:I

    .line 310
    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v2, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v8

    .line 311
    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v9, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->maxDataCalls:I

    .line 312
    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget-object v2, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalCellIdentityToCellIdentity(Landroid/hardware/radio/V1_2/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v2

    .line 313
    iget-object v10, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    .line 316
    iget-object v11, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    invoke-virtual {v11}, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;->getDiscriminator()B

    move-result v11

    if-ne v11, v3, :cond_2

    iget-object v11, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v11, v11, Landroid/hardware/radio/V1_2/DataRegStateResult;->rat:I

    .line 317
    invoke-static {v11}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    .line 319
    iget-object v1, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    .line 320
    invoke-virtual {v1}, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;->lteVopsInfo()Landroid/hardware/radio/V1_4/LteVopsInfo;

    move-result-object v1

    .line 321
    iget-boolean v11, v1, Landroid/hardware/radio/V1_4/LteVopsInfo;->isVopsSupported:Z

    iget-boolean v1, v1, Landroid/hardware/radio/V1_4/LteVopsInfo;->isEmcBearerSupported:Z

    invoke-direct {v0, v11, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;

    move-result-object v1

    goto :goto_1

    .line 324
    :cond_2
    new-instance v1, Landroid/telephony/LteVopsSupportInfo;

    invoke-direct {v1, v3, v3}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    .line 329
    :goto_1
    iget-boolean v11, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    .line 330
    iget-boolean v12, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    .line 331
    iget-boolean v10, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    move-object/from16 v26, v1

    move-object/from16 v21, v2

    move/from16 v18, v7

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v25, v11

    move/from16 v24, v12

    :goto_2
    const/4 v1, 0x2

    .line 337
    invoke-direct {v0, v4, v1, v8}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v20

    const/16 v1, 0x13

    if-ne v6, v1, :cond_3

    const/16 v1, 0xd

    move/from16 v17, v1

    move/from16 v27, v3

    goto :goto_3

    :cond_3
    move/from16 v27, v5

    move/from16 v17, v6

    .line 345
    :goto_3
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v14, 0x2

    const/4 v15, 0x1

    move-object v13, v1

    move/from16 v16, v4

    move/from16 v19, v8

    invoke-direct/range {v13 .. v27}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;IZZZLandroid/telephony/LteVopsSupportInfo;Z)V

    return-object v1

    .line 333
    :cond_4
    iget-object v2, v0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->this$0:Lcom/android/internal/telephony/CellularNetworkService;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unknown type of DataRegStateResult "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/CellularNetworkService;->access$200(Lcom/android/internal/telephony/CellularNetworkService;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private createRegistrationStateFromVoiceRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationInfo;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 215
    instance-of v2, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    const/16 v3, 0xd

    const/4 v4, 0x1

    const/16 v5, 0x13

    if-eqz v2, :cond_1

    .line 216
    check-cast v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    .line 218
    iget v2, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v9

    .line 219
    iget v2, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->rat:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    if-ne v2, v5, :cond_0

    move v10, v3

    goto :goto_0

    :cond_0
    move v10, v2

    .line 223
    :goto_0
    iget v11, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->reasonForDenial:I

    .line 224
    iget v2, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v12

    .line 225
    iget-boolean v15, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cssSupported:Z

    .line 226
    iget v2, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->roamingIndicator:I

    .line 227
    iget v3, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->systemIsInPrl:I

    .line 228
    iget v5, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 229
    invoke-direct {v0, v9, v4, v12}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v13

    .line 231
    iget-object v1, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    .line 232
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalCellIdentityToCellIdentity(Landroid/hardware/radio/V1_0/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v14

    .line 234
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v6, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v5

    invoke-direct/range {v6 .. v18}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;ZIII)V

    return-object v1

    .line 238
    :cond_1
    instance-of v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    if-eqz v2, :cond_3

    .line 239
    check-cast v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    .line 241
    iget v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v9

    .line 242
    iget v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->rat:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    if-ne v2, v5, :cond_2

    move v10, v3

    goto :goto_1

    :cond_2
    move v10, v2

    .line 246
    :goto_1
    iget v11, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->reasonForDenial:I

    .line 247
    iget v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v12

    .line 248
    iget-boolean v15, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cssSupported:Z

    .line 249
    iget v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->roamingIndicator:I

    .line 250
    iget v3, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->systemIsInPrl:I

    .line 251
    iget v5, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 252
    invoke-direct {v0, v9, v4, v12}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v13

    .line 254
    iget-object v1, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    .line 255
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalCellIdentityToCellIdentity(Landroid/hardware/radio/V1_2/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v14

    .line 257
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v6, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v5

    invoke-direct/range {v6 .. v18}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;ZIII)V

    return-object v1

    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private getAvailableServices(IIZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x5

    if-eqz p3, :cond_0

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, p3, :cond_3

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-ne p2, p3, :cond_3

    .line 187
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x4

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-object v0
.end method

.method private getRegStateFromHalRegState(I)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_0

    const/16 v4, 0xa

    if-eq p1, v4, :cond_4

    packed-switch p1, :pswitch_data_0

    return v0

    :cond_0
    return v4

    :cond_1
    :pswitch_0
    return v3

    :cond_2
    :pswitch_1
    return v2

    :cond_3
    :pswitch_2
    return v1

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRegistrationStateFromResult(Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 203
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->createRegistrationStateFromVoiceRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 205
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->createRegistrationStateFromDataRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private isEmergencyOnly(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public requestNetworkRegistrationInfo(ILandroid/telephony/NetworkServiceCallback;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 483
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p2, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p2, p1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 487
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p2, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p2, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    return-void

    .line 491
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->this$0:Lcom/android/internal/telephony/CellularNetworkService;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "requestNetworkRegistrationInfo invalid domain "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/CellularNetworkService;->access$200(Lcom/android/internal/telephony/CellularNetworkService;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 492
    invoke-virtual {p2, v0, p1}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V

    return-void
.end method
