.class public Lcom/android/internal/telephony/dataconnection/CellularDataService;
.super Landroid/telephony/data/DataService;
.source "CellularDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;
    }
.end annotation


# static fields
.field private static final DATA_CALL_LIST_CHANGED:I = 0x6

.field private static final DBG:Z = false

.field private static final DEACTIVATE_DATA_ALL_COMPLETE:I = 0x2

.field private static final REQUEST_DATA_CALL_LIST_COMPLETE:I = 0x5

.field private static final SETUP_DATA_CALL_COMPLETE:I = 0x1

.field private static final SET_DATA_PROFILE_COMPLETE:I = 0x4

.field private static final SET_INITIAL_ATTACH_APN_COMPLETE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CellularDataService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/telephony/data/DataService;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/CellularDataService;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/CellularDataService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 224
    sget-object v0, Lcom/android/internal/telephony/dataconnection/CellularDataService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 228
    sget-object v0, Lcom/android/internal/telephony/dataconnection/CellularDataService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;
    .locals 2

    .line 215
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cellular data service created for slot "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/CellularDataService;->log(Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 217
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tried to cellular data service with invalid slotId "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/CellularDataService;->loge(Ljava/lang/String;)V

    return-object v1

    .line 220
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;-><init>(Lcom/android/internal/telephony/dataconnection/CellularDataService;ILcom/android/internal/telephony/dataconnection/CellularDataService$1;)V

    return-object v0
.end method
