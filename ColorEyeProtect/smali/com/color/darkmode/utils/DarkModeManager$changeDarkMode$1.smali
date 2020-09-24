.class public final Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/utils/DarkModeManager;->changeDarkMode(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $isOpen:Z

.field final synthetic $listener:Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$listener$1;

.field final synthetic $lottieView:Lcom/coloros/anim/EffectiveAnimationView;

.field final synthetic $parentLayout:Landroid/view/View;

.field final synthetic $textView:Landroid/widget/TextView;

.field final synthetic $windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationView;Landroid/content/Context;ZLandroid/widget/TextView;Landroid/view/View;Landroid/view/WindowManager;Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$listener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$lottieView:Lcom/coloros/anim/EffectiveAnimationView;

    iput-object p2, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$isOpen:Z

    iput-object p4, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$textView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$parentLayout:Landroid/view/View;

    iput-object p6, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$windowManager:Landroid/view/WindowManager;

    iput-object p7, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$listener:Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$listener$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$lottieView:Lcom/coloros/anim/EffectiveAnimationView;

    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationView;->a()V

    const/4 p1, 0x2

    new-array v0, p1, [I

    sget-object v1, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    iget-object v2, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$isOpen:Z

    invoke-static {v1, v2, v3}, Lcom/color/darkmode/utils/DarkModeManager;->access$getLoadingTextColor(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;Z)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    iget-object v3, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$context:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$isOpen:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-static {v1, v3, v4}, Lcom/color/darkmode/utils/DarkModeManager;->access$getLoadingTextColor(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;Z)I

    move-result v1

    aput v1, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "animator"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3dcccccd    # 0.1f

    const/4 v8, 0x0

    const v9, 0x3e99999a    # 0.3f

    invoke-direct {v1, v9, v8, v7, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$1;

    invoke-direct {v1, p0}, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$1;-><init>(Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;)V

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-array p1, p1, [I

    sget-object v0, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    iget-object v1, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$context:Landroid/content/Context;

    iget-boolean v10, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$isOpen:Z

    invoke-static {v0, v1, v10}, Lcom/color/darkmode/utils/DarkModeManager;->access$getLoadingBackgroundColor(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;Z)I

    move-result v0

    aput v0, p1, v2

    sget-object v0, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    iget-object v1, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$isOpen:Z

    xor-int/2addr v2, v5

    invoke-static {v0, v1, v2}, Lcom/color/darkmode/utils/DarkModeManager;->access$getLoadingBackgroundColor(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;Z)I

    move-result v0

    aput v0, p1, v5

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-string v0, "backgroundAnimator"

    invoke-static {p1, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v9, v8, v7, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$2;

    invoke-direct {v0, p0}, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$2;-><init>(Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$3;

    invoke-direct {v0, p0}, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$3;-><init>(Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
