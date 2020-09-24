.class public Lcom/android/settings/password/ConfirmLockPattern;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/settings/password/ConfirmLockPattern$a;,
        Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;
    }
.end annotation


# instance fields
.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern;->c:Z

    const-string v0, "0"

    .line 64
    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern;->d:Ljava/lang/String;

    return-void
.end method

.method private a()Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern;->e:Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    if-nez v0, :cond_0

    .line 655
    const-class v0, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern;->e:Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    .line 656
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern;->e:Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;->bind(Ljava/lang/Object;)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern;->e:Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    return-object v0
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2062
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic a(Landroid/view/MenuItem;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 145
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern;->a()Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    move-result-object p2

    iget-boolean p3, p0, Lcom/android/settings/password/ConfirmLockPattern;->a:Z

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;->onOptionsItemSelectedLockPattern(ZLandroid/view/MenuItem;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1062
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$CiCq7X8ir9yN3mZlTpsJdiQoNZU(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ConfirmLockPattern;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$E0uYxXEEnLneG0lDAmvfQ8-UPZM(Lcom/android/settings/password/ConfirmLockPattern;Landroid/view/MenuItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/password/ConfirmLockPattern;->a(Landroid/view/MenuItem;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern;->a()Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;->attachBaseContextConfirmLockPattern(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern;->a()Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;->finishConfirmLockPattern()V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "codebook_from_verify"

    const/4 v2, 0x0

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 111
    iput-boolean v2, p0, Lcom/android/settings/password/ConfirmLockPattern;->c:Z

    const-string v1, "codebook_package_num"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern;->d:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern;->d:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern;->d:Ljava/lang/String;

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern;->a()Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    move-result-object v1

    const-class v2, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;->getIntentConfirmLockPattern(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern;->a()Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    move-result-object p1

    const-class v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;->isValidFragmentPattern(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 2

    .line 132
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern;->a()Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/-$$Lambda$ConfirmLockPattern$CiCq7X8ir9yN3mZlTpsJdiQoNZU;

    invoke-direct {v1, p0}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPattern$CiCq7X8ir9yN3mZlTpsJdiQoNZU;-><init>(Lcom/android/settings/password/ConfirmLockPattern;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;->onBackPressedConfirmLockPattern(Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern;->a()Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;->onCreateConfirmPattern()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onDestroy()V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern;->a()Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern;->e:Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;->unbind()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern;->e:Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 144
    new-instance v0, Lcom/android/settings/password/-$$Lambda$ConfirmLockPattern$E0uYxXEEnLneG0lDAmvfQ8-UPZM;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPattern$E0uYxXEEnLneG0lDAmvfQ8-UPZM;-><init>(Lcom/android/settings/password/ConfirmLockPattern;Landroid/view/MenuItem;)V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern;->a()Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/password/ConfirmLockPattern;->a:Z

    invoke-virtual {v1, v2, p1, v0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;->onOptionsItemSelectedLockPattern(ZLandroid/view/MenuItem;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern;->a()Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPattern;->a:Z

    invoke-virtual {v0, v1, p0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;->onResumeConfirmLockPattern(ZLcom/android/settings/password/ConfirmLockPattern;)V

    return-void
.end method
