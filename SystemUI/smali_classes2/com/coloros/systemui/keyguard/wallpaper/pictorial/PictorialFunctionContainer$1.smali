.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PictorialFunctionContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorKeyguardLoad(Z)V
    .locals 2

    .line 492
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onColorKeyguardLoad(Z)V

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorKeyguardLoad success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PictorialFunctionContainer"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->access$000(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->access$102(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;Z)Z

    .line 500
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->access$200(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V

    .line 501
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->access$300(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 506
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 507
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->access$200(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V

    .line 508
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->access$300(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 540
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 541
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->access$402(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;Z)Z

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0

    .line 534
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 535
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->access$402(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;Z)Z

    return-void
.end method
