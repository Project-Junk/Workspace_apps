.class public final Lcom/coloros/settings/feature/face/a;
.super Ljava/lang/Object;
.source "FaceAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/face/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/widget/TextView;I)V
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 36
    invoke-static {p0, v1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V

    .line 40
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    const/4 p1, 0x6

    const-string v1, "translationX"

    if-eqz v0, :cond_2

    .line 43
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    .line 45
    :cond_2
    new-array p1, p1, [F

    fill-array-data p1, :array_1

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    const-wide/16 v0, 0xc8

    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 49
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 50
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 51
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
        -0x3d4c0000    # -90.0f
        0x42b40000    # 90.0f
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
        0x42b40000    # 90.0f
        -0x3d4c0000    # -90.0f
        0x42b40000    # 90.0f
        0x0
    .end array-data
.end method
