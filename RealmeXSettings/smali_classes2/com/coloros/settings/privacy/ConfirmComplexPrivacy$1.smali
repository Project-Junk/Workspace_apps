.class final Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$1;
.super Ljava/lang/Object;
.source "ConfirmComplexPrivacy.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$1;->a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 81
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->a(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$1;->a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->a(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)Lcom/color/support/widget/ColorEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$1;->a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->a(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)Lcom/color/support/widget/ColorEditText;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setScaleX(F)V

    :cond_0
    return-void
.end method
