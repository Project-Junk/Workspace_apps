.class final Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6$1;
.super Ljava/lang/Object;
.source "ConfirmSimplePinFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6$1;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "ConfirmSimplePinFragment"

    const-string v0, "failedAnimator onAnimationCancel"

    .line 668
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "ConfirmSimplePinFragment"

    const-string v0, "failedAnimator onAnimationEnd"

    .line 661
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6$1;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6;

    iget-object p1, p1, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->o(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)I

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "ConfirmSimplePinFragment"

    const-string v0, "failedAnimator onAnimationRepeat"

    .line 656
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "ConfirmSimplePinFragment"

    const-string v0, "failedAnimator onAnimationStart"

    .line 651
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
