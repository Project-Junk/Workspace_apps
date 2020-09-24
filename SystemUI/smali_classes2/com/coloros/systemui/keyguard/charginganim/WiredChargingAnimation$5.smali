.class Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$5;
.super Landroid/content/BroadcastReceiver;
.source "WiredChargingAnimation.java"


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

    .line 179
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$5;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ADDITIONAL_BATTERY_CHANGED"

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "chargefastcharger"

    .line 183
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "chargertechnology"

    .line 184
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive, battery flash state change, state="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", chargerTechnology="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Keyguard"

    const-string v2, "WiredChargingAnimation"

    invoke-static {v1, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$5;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$900(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Landroid/os/Handler;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportSuperVoocCharging()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 190
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$5;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$900(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$5;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$900(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 193
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$5;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$900(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$5;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$900(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method
