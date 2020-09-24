.class Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$1;
.super Ljava/lang/Object;
.source "WiredChargingSiphonAnimLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "Keyguard"

    const-string v1, "WiredChargingSiphonAnimLayout"

    const-string v2, "mCancelAnimationRunnable, run"

    .line 65
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->access$000(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;)Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->cancelWiredChargingAnim()V

    return-void
.end method
