.class Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$1;
.super Ljava/lang/Object;
.source "CirCleBatteryController.java"

# interfaces
.implements Lcom/coloros/systemui/common/multiluser/IMultiUserListener;


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

    .line 80
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$1;->this$0:Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitched(I)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController$1;->this$0:Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->access$000(Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;)V

    return-void
.end method
