.class Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardWallpaperContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->showOrDismissGaussEffect(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancel:Z

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;Z)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$4;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$4;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 397
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 398
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$4;->mCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 403
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showOrDismissGaussEffect onAnimationEnd mCancel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$4;->mCancel:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardWallpaperContainer"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$4;->mCancel:Z

    if-nez p1, :cond_1

    .line 406
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$4;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$800(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$4;->val$show:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$900(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;Landroid/widget/ImageView;F)V

    .line 408
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$4;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->access$1002(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "KeyguardWallpaperContainer"

    const-string v1, "showOrDismissGaussEffect onAnimationStart"

    .line 413
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
