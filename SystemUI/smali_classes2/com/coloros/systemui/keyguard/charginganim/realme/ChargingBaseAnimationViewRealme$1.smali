.class Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme$1;
.super Ljava/lang/Object;
.source "ChargingBaseAnimationViewRealme.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public oAnimationDrawableStart()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    const-string v1, "FadeinListener, oAnimationDrawableStart"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 47
    instance-of v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->showChargingAnimLayout()V

    :cond_0
    return-void
.end method

.method public onAnimationDrawableEnd()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    const-string v1, "FadeinListener, onAnimationDrawableEnd"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->access$000(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;Z)V

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->access$100(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;)V

    return-void
.end method

.method public onAnimationDrawableStop()V
    .locals 0

    return-void
.end method
