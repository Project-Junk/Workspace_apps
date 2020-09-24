.class Lcom/color/support/widget/ColorInstallLoadProgress$4;
.super Ljava/lang/Object;
.source "ColorInstallLoadProgress.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorInstallLoadProgress;->performTouchEndAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorInstallLoadProgress;

.field final synthetic val$isActionUp:Z


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorInstallLoadProgress;Z)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress$4;->this$0:Lcom/color/support/widget/ColorInstallLoadProgress;

    iput-boolean p2, p0, Lcom/color/support/widget/ColorInstallLoadProgress$4;->val$isActionUp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 786
    iget-boolean p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress$4;->val$isActionUp:Z

    if-eqz p1, :cond_0

    .line 787
    iget-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress$4;->this$0:Lcom/color/support/widget/ColorInstallLoadProgress;

    invoke-static {p1}, Lcom/color/support/widget/ColorInstallLoadProgress;->access$401(Lcom/color/support/widget/ColorInstallLoadProgress;)Z

    :cond_0
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
