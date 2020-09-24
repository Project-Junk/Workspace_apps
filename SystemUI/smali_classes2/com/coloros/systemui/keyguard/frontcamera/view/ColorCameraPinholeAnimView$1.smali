.class Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView$1;
.super Ljava/lang/Object;
.source "ColorCameraPinholeAnimView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "ColorCameraPinholeAnimView"

    .line 232
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->setAlpha(F)V

    .line 233
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->access$000(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 234
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->access$100(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const-string p0, "remove window"

    .line 237
    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "remove fails"

    .line 239
    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
