.class public Lcom/android/settings/biometrics/face/FaceEnrollFinish;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FaceEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e4

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0179

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->setContentView(I)V

    const p1, 0x7f1213b2

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->a_(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->b()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/a;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->e:Lcom/google/android/setupcompat/template/a;

    .line 41
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->e:Lcom/google/android/setupcompat/template/a;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1213a8

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$BOOKfYhhJGp_5aF-pMRf7jt7tHE;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$BOOKfYhhJGp_5aF-pMRf7jt7tHE;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollFinish;)V

    .line 1347
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v1, 0x5

    .line 1353
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v1, 0x7f13027e

    .line 1359
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 47
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method public onNextButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->setResult(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->finish()V

    return-void
.end method
