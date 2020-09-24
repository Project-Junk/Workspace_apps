.class Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView$1;
.super Ljava/lang/Object;
.source "WiredChargingBaseAnimationView.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public oAnimationDrawableStart()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "FadeinListener, oAnimationDrawableStart"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 42
    instance-of v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->showChargingAnimLayout()V

    :cond_0
    return-void
.end method

.method public onAnimationDrawableEnd()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "FadeinListener, onAnimationDrawableEnd"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->access$000(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;Z)V

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->access$100(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;)V

    return-void
.end method

.method public onAnimationDrawableStop()V
    .locals 0

    return-void
.end method
