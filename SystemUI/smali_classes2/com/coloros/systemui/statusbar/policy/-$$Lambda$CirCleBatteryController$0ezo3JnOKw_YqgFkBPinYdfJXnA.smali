.class public final synthetic Lcom/coloros/systemui/statusbar/policy/-$$Lambda$CirCleBatteryController$0ezo3JnOKw_YqgFkBPinYdfJXnA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$CirCleBatteryController$0ezo3JnOKw_YqgFkBPinYdfJXnA;->f$0:Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$CirCleBatteryController$0ezo3JnOKw_YqgFkBPinYdfJXnA;->f$0:Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->lambda$notifyBatteryLayoutChange$1$CirCleBatteryController()V

    return-void
.end method
