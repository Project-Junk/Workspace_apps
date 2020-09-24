.class Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$6;
.super Ljava/lang/Object;
.source "KeyguardFakeAppLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->composeFakeAppLayer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$6;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$6;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->access$800(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$6;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->access$600(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 315
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->setStatusBarShow(Z)V

    .line 320
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$6;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->setScreenshot(Landroid/graphics/Bitmap;)V

    return-void
.end method
