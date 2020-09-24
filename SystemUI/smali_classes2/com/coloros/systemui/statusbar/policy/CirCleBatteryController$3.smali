.class Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$3;
.super Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;
.source "CirCleBatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$3;->this$0:Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChange(Z)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;->onChange(Z)V

    .line 108
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$3;->this$0:Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->access$100(Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;)V

    return-void
.end method
