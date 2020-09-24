.class Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$2;
.super Ljava/lang/Object;
.source "NetworkSpeedMonitorController.java"

# interfaces
.implements Lcom/coloros/systemui/common/multiluser/IMultiUserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitched(I)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->refreshSpeedStatus()V

    return-void
.end method
