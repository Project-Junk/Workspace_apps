.class final Lcom/android/settings/l$b$3;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/l$b;


# direct methods
.method constructor <init>(Lcom/android/settings/l$b;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/android/settings/l$b$3;->a:Lcom/android/settings/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 405
    iget-object p1, p0, Lcom/android/settings/l$b$3;->a:Lcom/android/settings/l$b;

    invoke-static {p1}, Lcom/android/settings/l$b;->a(Lcom/android/settings/l$b;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 408
    iget-object p1, p0, Lcom/android/settings/l$b$3;->a:Lcom/android/settings/l$b;

    invoke-static {p1}, Lcom/android/settings/l$b;->a(Lcom/android/settings/l$b;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    .line 409
    iget-object p2, p0, Lcom/android/settings/l$b$3;->a:Lcom/android/settings/l$b;

    invoke-static {p2}, Lcom/android/settings/l$b;->d(Lcom/android/settings/l$b;)Landroid/view/View;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 410
    iget-object p1, p0, Lcom/android/settings/l$b$3;->a:Lcom/android/settings/l$b;

    invoke-static {p1}, Lcom/android/settings/l$b;->d(Lcom/android/settings/l$b;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 411
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/l$b$3;->a:Lcom/android/settings/l$b;

    .line 412
    invoke-static {p2}, Lcom/android/settings/l$b;->e(Lcom/android/settings/l$b;)Landroid/app/Activity;

    move-result-object p2

    const p3, 0x10c000e

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    .line 414
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 415
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
