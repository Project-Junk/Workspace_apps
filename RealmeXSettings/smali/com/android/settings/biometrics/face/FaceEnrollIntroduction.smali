.class public Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.source "FaceEnrollIntroduction.java"


# instance fields
.field private f:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;-><init>()V

    return-void
.end method

.method public static synthetic lambda$1ydREpEzxloopI4SIMM9xynQRio(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCancelButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ewQUr6y3DwDlrhcAfGX06MsIWCc(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$reaKukXrruQddygU5wDwF_2HGpQ(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/setupdesign/a/a;)V
    .locals 0

    return-void
.end method

.method public final c()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->e:Lcom/google/android/setupcompat/template/a;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->e:Lcom/google/android/setupcompat/template/a;

    .line 4273
    iget-object v0, v0, Lcom/google/android/setupcompat/template/a;->b:Lcom/google/android/setupcompat/template/FooterButton;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 83
    iget v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->c:I

    const/16 v1, 0x80

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;II)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()I
    .locals 1

    const v0, 0x7f0d017a

    return v0
.end method

.method public final g()I
    .locals 1

    const v0, 0x7f1213bf

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e2

    return v0
.end method

.method public final h()I
    .locals 1

    const v0, 0x7f1213be

    return v0
.end method

.method public final i()I
    .locals 1

    const v0, 0x7f1213bd

    return v0
.end method

.method public final j()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0a0270

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final k()I
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->f:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.integer.config_faceMaxTemplatesPerUser"

    .line 132
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->f:Landroid/hardware/face/FaceManager;

    iget v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->c:I

    invoke-virtual {v1, v2}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const v0, 0x7f120975

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const v0, 0x7f120976

    return v0
.end method

.method public final l()J
    .locals 2

    .line 145
    invoke-static {p0}, Lcom/android/settings/m;->j(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->f:Landroid/hardware/face/FaceManager;

    .line 146
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->f:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 149
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const-string v0, "for_face"

    return-object v0
.end method

.method public final n()Landroid/content/Intent;
    .locals 2

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public final o()I
    .locals 1

    const v0, 0x7f1213c3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Lcom/android/settings/m;->j(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->f:Landroid/hardware/face/FaceManager;

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->b()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/a;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->e:Lcom/google/android/setupcompat/template/a;

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;)Z

    move-result p1

    const v0, 0x7f13027f

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->e:Lcom/google/android/setupcompat/template/a;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1214eb

    .line 54
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$reaKukXrruQddygU5wDwF_2HGpQ;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$reaKukXrruQddygU5wDwF_2HGpQ;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    .line 1347
    iput-object v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v2, 0x7

    .line 1353
    iput v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    .line 1359
    iput v0, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 58
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/FooterButton;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->e:Lcom/google/android/setupcompat/template/a;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1213b7

    .line 63
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$1ydREpEzxloopI4SIMM9xynQRio;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$1ydREpEzxloopI4SIMM9xynQRio;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    .line 2347
    iput-object v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v2, 0x2

    .line 2353
    iput v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    .line 2359
    iput v0, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 67
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 71
    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->e:Lcom/google/android/setupcompat/template/a;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121a93

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$ewQUr6y3DwDlrhcAfGX06MsIWCc;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$ewQUr6y3DwDlrhcAfGX06MsIWCc;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    .line 3347
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v1, 0x5

    .line 3353
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v1, 0x7f13027e

    .line 3359
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 77
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method
