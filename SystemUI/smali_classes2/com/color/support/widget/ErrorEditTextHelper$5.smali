.class Lcom/color/support/widget/ErrorEditTextHelper$5;
.super Ljava/lang/Object;
.source "ErrorEditTextHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 413
    iput-object p1, p0, Lcom/color/support/widget/ErrorEditTextHelper$5;->this$0:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 424
    iget-object p1, p0, Lcom/color/support/widget/ErrorEditTextHelper$5;->this$0:Lcom/color/support/widget/ErrorEditTextHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0, v0}, Lcom/color/support/widget/ErrorEditTextHelper;->access$900(Lcom/color/support/widget/ErrorEditTextHelper;ZZZ)V

    .line 425
    iget-object p0, p0, Lcom/color/support/widget/ErrorEditTextHelper$5;->this$0:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-static {p0, v0}, Lcom/color/support/widget/ErrorEditTextHelper;->access$1000(Lcom/color/support/widget/ErrorEditTextHelper;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 416
    iget-object p1, p0, Lcom/color/support/widget/ErrorEditTextHelper$5;->this$0:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-static {p1}, Lcom/color/support/widget/ErrorEditTextHelper;->access$100(Lcom/color/support/widget/ErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/color/support/widget/ErrorEditTextHelper$5;->this$0:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-static {v0}, Lcom/color/support/widget/ErrorEditTextHelper;->access$100(Lcom/color/support/widget/ErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 417
    iget-object p1, p0, Lcom/color/support/widget/ErrorEditTextHelper$5;->this$0:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-static {p1}, Lcom/color/support/widget/ErrorEditTextHelper;->access$000(Lcom/color/support/widget/ErrorEditTextHelper;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    .line 418
    iget-object p0, p0, Lcom/color/support/widget/ErrorEditTextHelper$5;->this$0:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-static {p0}, Lcom/color/support/widget/ErrorEditTextHelper;->access$100(Lcom/color/support/widget/ErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/color/support/widget/ErrorEditTextHelper;->access$002(Lcom/color/support/widget/ErrorEditTextHelper;F)F

    :cond_0
    return-void
.end method
