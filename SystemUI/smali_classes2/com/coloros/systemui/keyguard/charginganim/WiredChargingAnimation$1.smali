.class Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$1;
.super Landroid/os/Handler;
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

    .line 84
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$100(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V

    goto :goto_1

    .line 89
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v1, p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$000(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;ZI)V

    :goto_1
    return-void
.end method
