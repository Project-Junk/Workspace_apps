.class public final synthetic Lcom/coloros/systemui/keyguard/clock/-$$Lambda$CarrierChargingTextController$nF0cJKAQATBLdxEuaAo4Ov5E5aQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$CarrierChargingTextController$nF0cJKAQATBLdxEuaAo4Ov5E5aQ;->f$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$CarrierChargingTextController$nF0cJKAQATBLdxEuaAo4Ov5E5aQ;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$CarrierChargingTextController$nF0cJKAQATBLdxEuaAo4Ov5E5aQ;->f$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$CarrierChargingTextController$nF0cJKAQATBLdxEuaAo4Ov5E5aQ;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->lambda$postToCallback$0(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;Ljava/lang/String;)V

    return-void
.end method
