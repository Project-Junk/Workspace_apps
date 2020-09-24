.class Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView$1;
.super Ljava/lang/Object;
.source "ColorCameraDoublePinholeAnimView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "ColorCameraDoublePinholeAnimView"

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const-string p0, "remove window"

    .line 232
    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "remove fails"

    .line 234
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
