.class Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardFaceUnlockViewControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->showFrontCameraAnim()V

    return-void
.end method
