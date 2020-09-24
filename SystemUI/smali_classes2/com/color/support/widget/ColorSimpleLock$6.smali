.class Lcom/color/support/widget/ColorSimpleLock$6;
.super Ljava/lang/Object;
.source "ColorSimpleLock.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSimpleLock;->createFailedAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSimpleLock;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSimpleLock;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$6;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 906
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 907
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock$6;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSimpleLock;->setInternalTranslationY(F)V

    return-void
.end method
