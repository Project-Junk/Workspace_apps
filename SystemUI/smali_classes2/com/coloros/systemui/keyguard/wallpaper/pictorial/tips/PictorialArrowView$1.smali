.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PictorialArrowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->startSlideAnimator()V
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

    .line 173
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 191
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;->mCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 178
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const-string p1, "TipsView-PictorialArrowView"

    const-string v0, "startSlideAnimator onAnimationEnd"

    .line 179
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;->mCancel:Z

    invoke-interface {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;->onSlideEnd(Z)V

    .line 183
    :cond_0
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;->mCancel:Z

    if-nez p1, :cond_1

    .line 184
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->access$000(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V

    .line 186
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->notifyFirstAnimationAlreadyShow()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 197
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 198
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setAlpha(F)V

    .line 200
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;->mCancel:Z

    .line 201
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    if-eqz p1, :cond_0

    .line 202
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;->onSlideStart()V

    :cond_0
    return-void
.end method
