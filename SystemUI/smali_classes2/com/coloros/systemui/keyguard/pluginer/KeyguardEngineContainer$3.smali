.class Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;
.super Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;
.source "KeyguardEngineContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-direct {p0}, Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 310
    invoke-super {p0, p1}, Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    .line 311
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$302(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;Z)Z

    .line 312
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$200(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V

    .line 313
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$300(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$400(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 318
    invoke-super {p0, p1}, Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$500(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 320
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$400(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;Z)V

    .line 322
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$200(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 334
    invoke-super {p0, p1}, Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 335
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$602(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;Z)Z

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1

    .line 327
    invoke-super {p0, p1}, Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 328
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$602(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;Z)Z

    .line 329
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$000(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V

    return-void
.end method
