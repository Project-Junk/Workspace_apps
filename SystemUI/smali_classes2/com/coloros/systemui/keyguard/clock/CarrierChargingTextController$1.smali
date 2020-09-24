.class Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$1;
.super Ljava/lang/Object;
.source "CarrierChargingTextController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$1;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedWakingUp()V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$1;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$000(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;->finishedWakingUp()V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$1;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$000(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;->startedGoingToSleep()V

    return-void
.end method
