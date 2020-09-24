.class Lcom/android/systemui/biometrics/FaceDialogView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/FaceDialogView;->updateSize(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/FaceDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/FaceDialogView;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 264
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 265
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/FaceDialogView;->access$502(Lcom/android/systemui/biometrics/FaceDialogView;I)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 247
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 249
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/FaceDialogView;->mTitleText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/FaceDialogView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/FaceDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/FaceDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/FaceDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/FaceDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 258
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView$1;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
