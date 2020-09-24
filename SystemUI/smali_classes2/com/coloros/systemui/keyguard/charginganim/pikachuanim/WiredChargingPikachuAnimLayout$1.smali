.class Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout$1;
.super Ljava/lang/Object;
.source "WiredChargingPikachuAnimLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->access$000(Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;)V

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->access$100(Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;Z)V

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->access$200(Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;Z)V

    .line 100
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->access$300(Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;)V

    .line 101
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;

    invoke-static {p0, v1}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->access$402(Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;Z)Z

    :cond_0
    return-void
.end method
