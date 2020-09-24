.class final Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$2;
.super Ljava/lang/Object;
.source "ConfirmComplexPrivacy.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->a(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)Lcom/color/support/widget/ColorEditText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->a(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)Lcom/color/support/widget/ColorEditText;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setScaleX(F)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->a(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)Lcom/color/support/widget/ColorEditText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->a(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)Lcom/color/support/widget/ColorEditText;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setScaleX(F)V

    :cond_0
    return-void
.end method
