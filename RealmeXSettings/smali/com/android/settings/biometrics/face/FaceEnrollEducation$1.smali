.class final Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;
.super Ljava/lang/Object;
.source "FaceEnrollEducation.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollEducation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/biometrics/face/FaceEnrollEducation;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->a:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const p1, 0x7f1213ac

    goto :goto_0

    :cond_0
    const p1, 0x7f1213ab

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->a:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->a(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->a:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-virtual {v0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->setTitle(I)V

    const/4 p1, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 76
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->a:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->b(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/view/IllustrationVideoView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->stop()V

    .line 77
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->a:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->b(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/view/IllustrationVideoView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    .line 78
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->a:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->c(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->a:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->d(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 81
    :cond_1
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->a:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->b(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/view/IllustrationVideoView;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    .line 82
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->a:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->b(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/view/IllustrationVideoView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->start()V

    .line 83
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->a:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->c(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->a:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->d(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
