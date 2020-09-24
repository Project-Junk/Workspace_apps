.class public Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;
.super Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;
.source "FaceEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;
    }
.end annotation


# instance fields
.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/animation/Interpolator;

.field private j:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/android/settings/biometrics/face/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->k:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->l:Lcom/android/settings/biometrics/face/c$a;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;[B)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->a([B)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;)[B
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->b:[B

    return-object p0
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 199
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->h:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 202
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 203
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 205
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 206
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->i:Landroid/view/animation/Interpolator;

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 211
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 212
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic lambda$mCtTnva5IaR1LQ31tTxt2Hf9gc0(Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const v0, 0x7f1213b0

    goto :goto_0

    :cond_0
    const v0, 0x7f1213b1

    .line 172
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5192
    invoke-static {v0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;->a(Ljava/lang/CharSequence;I)Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;

    move-result-object p1

    .line 5193
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/biometrics/BiometricErrorDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final a(II)V
    .locals 4

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Steps: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Remaining: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FaceEnrollEnrolling"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->j:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->a(II)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->b(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_0

    .line 187
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->b:[B

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->a([B)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final e()Landroid/content/Intent;
    .locals 2

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/face/FaceEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final f()Lcom/android/settings/biometrics/BiometricEnrollSidecar;
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-direct {v1, v0}, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;-><init>([I)V

    return-object v1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e3

    return v0
.end method

.method public final h()V
    .locals 3

    .line 116
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->h()V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "tag_preview"

    .line 118
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->j:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    .line 119
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->j:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-direct {v0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->j:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->j:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->j:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->l:Lcom/android/settings/biometrics/face/c$a;

    .line 2238
    iput-object v1, v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->a:Lcom/android/settings/biometrics/face/c$a;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0178

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->setContentView(I)V

    const p1, 0x7f1213c0

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->a_(I)V

    const p1, 0x7f0a0270

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->h:Landroid/widget/TextView;

    const p1, 0x10c000e

    .line 91
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->i:Landroid/view/animation/Interpolator;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->b()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/a;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->e:Lcom/google/android/setupcompat/template/a;

    .line 95
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->e:Lcom/google/android/setupcompat/template/a;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1213ae

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEnrolling$mCtTnva5IaR1LQ31tTxt2Hf9gc0;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEnrolling$mCtTnva5IaR1LQ31tTxt2Hf9gc0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    .line 1347
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v1, 0x7

    .line 1353
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v1, 0x7f13027f

    .line 1359
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 101
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "accessibility_diversity"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->k:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "accessibility_vision"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->k:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->h()V

    return-void
.end method
