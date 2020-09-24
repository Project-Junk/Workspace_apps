.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PictorialArrowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->startLeftArrowAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancel:Z

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "TipsView-PictorialArrowView"

    const-string v0, "startLeftArrowAnimator : onAnimationCancel"

    .line 269
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 270
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$2;->mCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 275
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startLeftArrowAnimator onAnimationEnd mCancel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$2;->mCancel:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TipsView-PictorialArrowView"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$2;->mCancel:Z

    if-nez p1, :cond_0

    .line 278
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->access$100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setAlpha(F)V

    .line 281
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 262
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 263
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setVisibility(I)V

    .line 264
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setTranslationX(F)V

    return-void
.end method
