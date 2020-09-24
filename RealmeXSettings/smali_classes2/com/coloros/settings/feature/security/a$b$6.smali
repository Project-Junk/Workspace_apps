.class final Lcom/coloros/settings/feature/security/a$b$6;
.super Ljava/lang/Object;
.source "ColorTrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/a$b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/a$b;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/coloros/settings/feature/security/a$b$6;->a:Lcom/coloros/settings/feature/security/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 511
    iget-object p1, p0, Lcom/coloros/settings/feature/security/a$b$6;->a:Lcom/coloros/settings/feature/security/a$b;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/a$b;->a(Lcom/coloros/settings/feature/security/a$b;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 514
    iget-object p1, p0, Lcom/coloros/settings/feature/security/a$b$6;->a:Lcom/coloros/settings/feature/security/a$b;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/a$b;->a(Lcom/coloros/settings/feature/security/a$b;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    .line 515
    iget-object p2, p0, Lcom/coloros/settings/feature/security/a$b$6;->a:Lcom/coloros/settings/feature/security/a$b;

    invoke-static {p2}, Lcom/coloros/settings/feature/security/a$b;->c(Lcom/coloros/settings/feature/security/a$b;)Landroid/view/View;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 516
    iget-object p1, p0, Lcom/coloros/settings/feature/security/a$b$6;->a:Lcom/coloros/settings/feature/security/a$b;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/a$b;->c(Lcom/coloros/settings/feature/security/a$b;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 517
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/security/a$b$6;->a:Lcom/coloros/settings/feature/security/a$b;

    .line 518
    invoke-static {p2}, Lcom/coloros/settings/feature/security/a$b;->d(Lcom/coloros/settings/feature/security/a$b;)Landroid/app/Activity;

    move-result-object p2

    const p3, 0x10c000e

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    .line 520
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 521
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
