.class final Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$2;
.super Ljava/lang/Object;
.source "ConfirmNumberPrivacy.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "ConfirmNumberPrivacy"

    const-string v0, "failedAnimator onAnimationCancel"

    .line 156
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "ConfirmNumberPrivacy"

    const-string v0, "failedAnimator onAnimationEnd"

    .line 146
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->d(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)Lcom/color/support/widget/ColorSimpleLock;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->setEnabled(Z)V

    .line 148
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)Lcom/color/support/widget/ColorNumericKeyboard;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)Lcom/color/support/widget/ColorNumericKeyboard;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)I

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "ConfirmNumberPrivacy"

    const-string v0, "failedAnimator onAnimationRepeat"

    .line 141
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "ConfirmNumberPrivacy"

    const-string v0, "failedAnimator onAnimationStart"

    .line 136
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
