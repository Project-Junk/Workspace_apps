.class final Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$4;
.super Ljava/lang/Object;
.source "ColorConfirmLockPatternFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$4;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 446
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$4;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 441
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$4;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
