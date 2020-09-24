.class final Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6;
.super Ljava/lang/Object;
.source "ConfirmSimplePinFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "ConfirmSimplePinFragment"

    const-string v1, "mFailedAnimatorRunnable run"

    .line 645
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->n(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Lcom/color/support/widget/ColorSimpleLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSimpleLock;->getFailedAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 647
    new-instance v1, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6$1;-><init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 671
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
