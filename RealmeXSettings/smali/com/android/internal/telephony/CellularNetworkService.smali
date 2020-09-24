.class public Lcom/android/internal/telephony/CellularNetworkService;
.super Landroid/telephony/NetworkService;
.source "CellularNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final GET_CS_REGISTRATION_STATE_DONE:I = 0x1

.field private static final GET_PS_REGISTRATION_STATE_DONE:I = 0x2

.field private static final NETWORK_REGISTRATION_STATE_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CellularNetworkService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/telephony/NetworkService;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CellularNetworkService;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellularNetworkService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 516
    sget-object v0, Lcom/android/internal/telephony/CellularNetworkService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 520
    sget-object v0, Lcom/android/internal/telephony/CellularNetworkService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreateNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;
    .locals 1

    .line 508
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tried to Cellular network service with invalid slotId "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellularNetworkService;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 512
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;-><init>(Lcom/android/internal/telephony/CellularNetworkService;I)V

    return-object v0
.end method
