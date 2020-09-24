.class Lcom/coloros/systemui/qs/widget/ColorQSClockView$2;
.super Landroid/content/BroadcastReceiver;
.source "ColorQSClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/widget/ColorQSClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/widget/ColorQSClockView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSClockView;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$ColorQSClockView$2()V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSClockView;

    invoke-static {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->access$100(Lcom/coloros/systemui/qs/widget/ColorQSClockView;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSClockView;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSClockView;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSClockView$2$VZBzN4XCaOpl_bRTnUSAbTgUhio;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSClockView$2$VZBzN4XCaOpl_bRTnUSAbTgUhio;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSClockView$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
