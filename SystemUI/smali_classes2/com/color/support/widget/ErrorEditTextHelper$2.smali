.class Lcom/color/support/widget/ErrorEditTextHelper$2;
.super Ljava/lang/Object;
.source "ErrorEditTextHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ErrorEditTextHelper;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ErrorEditTextHelper;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ErrorEditTextHelper;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/color/support/widget/ErrorEditTextHelper$2;->this$0:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/color/support/widget/ErrorEditTextHelper$2;->this$0:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/color/support/widget/ErrorEditTextHelper;->access$402(Lcom/color/support/widget/ErrorEditTextHelper;F)F

    return-void
.end method
