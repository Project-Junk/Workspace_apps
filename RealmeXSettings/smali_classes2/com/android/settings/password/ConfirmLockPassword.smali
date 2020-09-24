.class public Lcom/android/settings/password/ConfirmLockPassword;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;,
        Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;
    }
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field private d:Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 65
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/password/ConfirmLockPassword;->c:[I

    return-void

    :array_0
    .array-data 4
        0x7f120ca2
        0x7f120c98
        0x7f120ca3
        0x7f120c99
        0x7f120cc7
        0x7f120cc5
        0x7f120cca
        0x7f120cc8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2061
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic a(Landroid/view/MenuItem;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword;->b()Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    move-result-object p2

    iget-boolean p3, p0, Lcom/android/settings/password/ConfirmLockPassword;->a:Z

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, p0, v0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;->onOptionsItemSelectedConfirmPassword(Landroid/view/MenuItem;ZLcom/android/settings/password/ConfirmLockPassword;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1061
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method

.method static synthetic a()[I
    .locals 1

    .line 61
    sget-object v0, Lcom/android/settings/password/ConfirmLockPassword;->c:[I

    return-object v0
.end method

.method private b()Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword;->d:Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    if-nez v0, :cond_0

    .line 586
    const-class v0, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword;->d:Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    .line 587
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword;->d:Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;->bind(Ljava/lang/Object;)V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword;->d:Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    return-object v0
.end method

.method public static synthetic lambda$ECywpDChTDn1jXF4mdagLbgbJG0(Lcom/android/settings/password/ConfirmLockPassword;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ConfirmLockPassword;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$jc11qrZ4YwQ3C3Dg4erTvb304ew(Lcom/android/settings/password/ConfirmLockPassword;Landroid/view/MenuItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/password/ConfirmLockPassword;->a(Landroid/view/MenuItem;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword;->b()Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;->attachBaseContextConfirmPassword(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword;->b()Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;->finishConfirmPassword()V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword;->b()Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    move-result-object v1

    const-class v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;->getIntentConfirmLockPasswordFragment(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword;->b()Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    move-result-object v0

    const-class v1, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;->isValidConfirmFragment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 2

    .line 133
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword;->b()Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ECywpDChTDn1jXF4mdagLbgbJG0;

    invoke-direct {v1, p0}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ECywpDChTDn1jXF4mdagLbgbJG0;-><init>(Lcom/android/settings/password/ConfirmLockPassword;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;->onBackPressedConfirmPassword(Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword;->b()Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;->beforeOnCreateConfirmPassword()V

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword;->b()Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;->afterOnCreateConfirmPassword(Lcom/android/settings/password/ConfirmLockPassword;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 594
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onDestroy()V

    .line 595
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword;->d:Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;->unbind()V

    const/4 v0, 0x0

    .line 597
    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword;->d:Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 145
    new-instance v0, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$jc11qrZ4YwQ3C3Dg4erTvb304ew;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$jc11qrZ4YwQ3C3Dg4erTvb304ew;-><init>(Lcom/android/settings/password/ConfirmLockPassword;Landroid/view/MenuItem;)V

    .line 151
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword;->b()Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/password/ConfirmLockPassword;->a:Z

    invoke-virtual {v1, p1, v2, p0, v0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;->onOptionsItemSelectedConfirmPassword(Landroid/view/MenuItem;ZLcom/android/settings/password/ConfirmLockPassword;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
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

    .line 115
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onResume()V

    .line 116
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword;->b()Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPassword;->a:Z

    invoke-virtual {v0, v1, p0}, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;->onResumeConfirmPassword(ZLcom/android/settings/password/ConfirmLockPassword;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onWindowFocusChanged(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a03c7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    instance-of v1, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    if-eqz v1, :cond_0

    .line 95
    check-cast v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(Z)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 99
    instance-of v1, v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    if-eqz v1, :cond_1

    .line 100
    check-cast v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Z)V

    :cond_1
    return-void
.end method
