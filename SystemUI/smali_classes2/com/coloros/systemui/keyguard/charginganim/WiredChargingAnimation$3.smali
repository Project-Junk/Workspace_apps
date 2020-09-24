.class Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$3;
.super Ljava/lang/Object;
.source "WiredChargingAnimation.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


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

    .line 139
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$702(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;I)I

    .line 143
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$700(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    :goto_0
    return-void
.end method
