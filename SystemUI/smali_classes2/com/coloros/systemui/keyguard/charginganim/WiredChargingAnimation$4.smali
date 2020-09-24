.class Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;
.super Ljava/lang/Object;
.source "WiredChargingAnimation.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedWakingUp()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$800(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$802(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;Z)Z

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$500(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    .line 173
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$500(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;->resumeWhenStartdWakingUp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    :cond_1
    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$802(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;Z)Z

    .line 155
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$802(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;Z)Z

    .line 161
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$500(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    .line 162
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$500(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;->resumeWhenStartdWakingUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    :cond_0
    return-void
.end method
