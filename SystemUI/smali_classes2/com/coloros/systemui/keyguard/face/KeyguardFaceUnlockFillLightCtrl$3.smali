.class Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$3;
.super Ljava/lang/Object;
.source "KeyguardFaceUnlockFillLightCtrl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$3;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "Keyguard"

    const-string v0, "KeyguardFaceUnlockFillLightCtrl"

    const-string v1, "stop fill-light control by user click"

    .line 179
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$3;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->stopFillLightControl()V

    return-void
.end method
