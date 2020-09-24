.class public Lcom/android/settings/biometrics/face/FaceEnrollEducation;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FaceEnrollEducation.java"


# instance fields
.field private f:Landroid/hardware/face/FaceManager;

.field private h:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

.field private i:Lcom/google/android/setupdesign/view/IllustrationVideoView;

.field private j:Landroid/view/View;

.field private k:Landroid/os/Handler;

.field private l:Landroid/content/Intent;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    .line 65
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->n:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/GlifLayout;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->b()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 1

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton;->a(Z)V

    return-void
.end method

.method private synthetic a(Lcom/google/android/setupcompat/template/FooterButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x1

    .line 141
    invoke-virtual {p1, p3}, Lcom/google/android/setupcompat/template/FooterButton;->a(Z)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->h:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {p1, p3}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->setChecked(Z)V

    const/16 p1, 0x8

    .line 143
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->h:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/view/IllustrationVideoView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->i:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->j:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic lambda$ByxOkPTzaM2NRnFxVi46woGUK0Y(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Lcom/google/android/setupcompat/template/FooterButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->a(Lcom/google/android/setupcompat/template/FooterButton;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$n1ZDV3MnQopaQMrwSrCqcw9BXXM(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->setResult(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->finish()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e2

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 193
    iput-object p3, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->l:Landroid/content/Intent;

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    if-eq p2, p3, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 197
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->setResult(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0177

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->b()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const v0, 0x7f1213ab

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->setTitle(I)V

    .line 95
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->k:Landroid/os/Handler;

    .line 97
    invoke-static {p0}, Lcom/android/settings/m;->j(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->f:Landroid/hardware/face/FaceManager;

    const p1, 0x7f0a031c

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/view/IllustrationVideoView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->i:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    const p1, 0x7f0a031b

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->j:Landroid/view/View;

    const p1, 0x7f0a067a

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->m:Landroid/widget/TextView;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->b()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/a;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->e:Lcom/google/android/setupcompat/template/a;

    .line 104
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->e:Lcom/google/android/setupcompat/template/a;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1213ae

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$keS8Crts7LzHA7hp9Ki2p-wFjqI;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$keS8Crts7LzHA7hp9Ki2p-wFjqI;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 1347
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v1, 0x7

    .line 1353
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v1, 0x7f13027f

    .line 1359
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 110
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 113
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1213aa

    .line 114
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics/face/-$$Lambda$CVTqY-fzdKGktOatbRnhbQpNkJc;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$CVTqY-fzdKGktOatbRnhbQpNkJc;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 2347
    iput-object v0, p1, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v0, 0x5

    .line 2353
    iput v0, p1, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v0, 0x7f13027e

    .line 2359
    iput v0, p1, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 118
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->e:Lcom/google/android/setupcompat/template/a;

    invoke-virtual {v2, p1}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->c:I

    const-string v5, "face_unlock_education_info_displayed"

    invoke-static {v3, v5, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 131
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->c:I

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 133
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Z)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->k:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$n1ZDV3MnQopaQMrwSrCqcw9BXXM;

    invoke-direct {v2, p1}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$n1ZDV3MnQopaQMrwSrCqcw9BXXM;-><init>(Lcom/google/android/setupcompat/template/FooterButton;)V

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const v1, 0x7f0a000f

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 140
    new-instance v2, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$ByxOkPTzaM2NRnFxVi46woGUK0Y;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$ByxOkPTzaM2NRnFxVi46woGUK0Y;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Lcom/google/android/setupcompat/template/FooterButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0706

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->h:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    .line 148
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->h:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->n:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v2}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->setListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {v1}, Landroid/widget/Button;->callOnClick()Z

    :cond_3
    return-void
.end method

.method public onNextButtonClick(Landroid/view/View;)V
    .locals 2

    .line 164
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->b:[B

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->b:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 168
    :cond_0
    iget v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->c:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    .line 169
    iget v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->c:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const v0, 0x7f1205f1

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 176
    :cond_2
    const-class v0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->h:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    .line 4067
    iget-object v0, v0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->a:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "accessibility_diversity"

    .line 178
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->l:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    const/4 v0, 0x2

    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 157
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onResume()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->n:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->h:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->getSwitch()Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->h:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    .line 3067
    iget-object v2, v2, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->a:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    .line 158
    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
