.class Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;
.super Landroid/os/Handler;
.source "ChargingLevelAndLogoViewRealme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkHandler"
.end annotation


# instance fields
.field private final mLogeView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V
    .locals 1

    .line 551
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 552
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;->mLogeView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$1;)V
    .locals 0

    .line 548
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 557
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 558
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;->mLogeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    if-eqz p0, :cond_2

    .line 560
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->access$500(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V

    goto :goto_0

    .line 562
    :cond_1
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->access$400(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V

    :cond_2
    :goto_0
    return-void
.end method
