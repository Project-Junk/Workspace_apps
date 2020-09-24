.class public Lcom/android/settings/password/ConfirmDeviceCredentialActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "ConfirmDeviceCredentialActivity"


# instance fields
.field private b:Z

.field private c:Landroid/hardware/biometrics/BiometricManager;

.field private d:Lcom/android/settings/password/BiometricFragment;

.field private e:Landroid/app/admin/DevicePolicyManager;

.field private f:Lcom/android/internal/widget/LockPatternUtils;

.field private g:Landroid/os/UserManager;

.field private h:Landroid/app/trust/TrustManager;

.field private i:Lcom/coloros/settings/feature/password/a;

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Z

.field private r:Ljava/util/concurrent/Executor;

.field private s:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private t:Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->j:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/android/settings/password/-$$Lambda$ConfirmDeviceCredentialActivity$PIYBwzPjY3pLPMW4BXgkmnw49S0;

    invoke-direct {v0, p0}, Lcom/android/settings/password/-$$Lambda$ConfirmDeviceCredentialActivity$PIYBwzPjY3pLPMW4BXgkmnw49S0;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->r:Ljava/util/concurrent/Executor;

    .line 122
    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->s:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    const-class v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.app.extra.TITLE"

    .line 82
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p0, "android.app.extra.DESCRIPTION"

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p1, "com.android.internal.R.string.biometric_error_user_canceled"

    .line 6159
    invoke-static {p1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "com.android.internal.R.string.biometric_error_canceled"

    .line 6161
    invoke-static {p1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 15

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->l:Z

    .line 375
    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->p:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->i:Lcom/coloros/settings/feature/password/a;

    iget-object v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->f:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->m:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->n:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    iget v14, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I

    invoke-virtual/range {v3 .. v14}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->launchConfirmationActivityWithExternalAndChallenge(Lcom/coloros/settings/feature/password/a;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZJI)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    .line 380
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->i:Lcom/coloros/settings/feature/password/a;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->f:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->m:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->n:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    iget v12, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I

    invoke-virtual/range {v1 .. v12}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->launchConfirmationActivity(Lcom/coloros/settings/feature/password/a;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZJI)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 387
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a:Ljava/lang/String;

    const-string v1, "No pin/pattern/pass set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 388
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 390
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->finish()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->c:Landroid/hardware/biometrics/BiometricManager;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricManager;->setActiveUser(I)V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment"

    .line 340
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/BiometricFragment;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->d:Lcom/android/settings/password/BiometricFragment;

    .line 343
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->d:Lcom/android/settings/password/BiometricFragment;

    if-nez v0, :cond_0

    .line 344
    invoke-static {p1}, Lcom/android/settings/password/BiometricFragment;->a(Landroid/os/Bundle;)Lcom/android/settings/password/BiometricFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->d:Lcom/android/settings/password/BiometricFragment;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->d:Lcom/android/settings/password/BiometricFragment;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->r:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->s:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/password/BiometricFragment;->a(Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->d:Lcom/android/settings/password/BiometricFragment;

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I

    .line 6126
    iput v2, v0, Lcom/android/settings/password/BiometricFragment;->a:I

    if-eqz p1, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->d:Lcom/android/settings/password/BiometricFragment;

    .line 352
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method private synthetic a(Ljava/lang/Runnable;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->j:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->f:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->g:Landroid/os/UserManager;

    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I

    .line 313
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(II)Z
    .locals 2

    .line 325
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 328
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->b(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->f:Lcom/android/internal/widget/LockPatternUtils;

    .line 330
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->hasPendingEscrowToken(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->q:Z

    return p0
.end method

.method private b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->t:Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;

    if-nez v0, :cond_0

    .line 434
    const-class v0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->t:Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;

    .line 435
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->t:Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->bind(Ljava/lang/Object;)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->t:Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;

    return-object v0
.end method

.method private b(I)Z
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->e:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 318
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    and-int/lit16 p1, p1, 0x1a0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->k:Z

    return p0
.end method

.method static synthetic c(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/hardware/biometrics/BiometricManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->c:Landroid/hardware/biometrics/BiometricManager;

    return-object p0
.end method

.method static synthetic d(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I

    return p0
.end method

.method static synthetic f(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/trust/TrustManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->h:Landroid/app/trust/TrustManager;

    return-object p0
.end method

.method static synthetic g(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->f:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic h(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/os/UserManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->g:Landroid/os/UserManager;

    return-object p0
.end method

.method public static synthetic lambda$PIYBwzPjY3pLPMW4BXgkmnw49S0(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 395
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 400
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->finish()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f010044

    const/4 v1, 0x0

    .line 401
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 410
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 411
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->b:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->confirmCredentialActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 169
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 170
    invoke-static {p0, v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 171
    const-class v2, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/BiometricManager;

    iput-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->c:Landroid/hardware/biometrics/BiometricManager;

    .line 172
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->e:Landroid/app/admin/DevicePolicyManager;

    .line 173
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->g:Landroid/os/UserManager;

    .line 174
    const-class v2, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/TrustManager;

    iput-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->h:Landroid/app/trust/TrustManager;

    .line 175
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->f:Lcom/android/internal/widget/LockPatternUtils;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.app.extra.TITLE"

    .line 178
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->m:Ljava/lang/String;

    const-string v3, "android.app.extra.DESCRIPTION"

    .line 179
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->n:Ljava/lang/String;

    const-string v3, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    .line 180
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 184
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    iput v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I

    .line 1418
    instance-of v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;

    if-eqz v5, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 189
    sget-object v7, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a:Ljava/lang/String;

    const-string v8, "Invalid intent extra"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->g:Landroid/os/UserManager;

    iget v7, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v6

    .line 193
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v7

    .line 196
    iget-object v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->m:Ljava/lang/String;

    if-nez v8, :cond_3

    if-eqz v7, :cond_3

    .line 197
    iget v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I

    const-string v9, "device_policy"

    .line 1422
    invoke-virtual {p0, v9}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    .line 1425
    invoke-virtual {v9, v8}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v10

    :goto_1
    if-eqz v8, :cond_2

    .line 1426
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 197
    :cond_2
    iput-object v10, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->m:Ljava/lang/String;

    .line 201
    :cond_3
    new-instance v8, Lcom/coloros/settings/feature/password/a;

    invoke-direct {v8, p0}, Lcom/coloros/settings/feature/password/a;-><init>(Landroid/app/Activity;)V

    iput-object v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->i:Lcom/coloros/settings/feature/password/a;

    .line 203
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const-string v9, "android.app.extra.BIOMETRIC_PROMPT_BUNDLE"

    .line 206
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "title"

    if-eqz v9, :cond_4

    .line 208
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->k:Z

    .line 209
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->m:Ljava/lang/String;

    const-string v10, "subtitle"

    .line 210
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->n:Ljava/lang/String;

    goto :goto_2

    .line 212
    :cond_4
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 213
    iget-object v11, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->m:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v10, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->n:Ljava/lang/String;

    const-string v11, "description"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->isFromSystemOnlyPassword(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->b:Z

    .line 224
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    if-eqz v4, :cond_6

    .line 228
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->i:Lcom/coloros/settings/feature/password/a;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->n:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Lcom/coloros/settings/feature/password/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    move v1, v0

    move v0, p1

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_8

    if-eqz v5, :cond_8

    .line 230
    iget p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I

    .line 231
    invoke-virtual {v8, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x2

    .line 232
    iput p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->p:I

    .line 233
    iget p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I

    invoke-direct {p0, v6, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 234
    invoke-direct {p0, v9}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a(Landroid/os/Bundle;)V

    goto :goto_4

    .line 237
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a()V

    goto :goto_3

    .line 241
    :cond_8
    iput v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->p:I

    .line 242
    iget p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->o:I

    invoke-direct {p0, v6, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a(II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 245
    invoke-direct {p0, v9}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a(Landroid/os/Bundle;)V

    goto :goto_4

    .line 248
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a()V

    :goto_3
    move v12, v1

    move v1, v0

    move v0, v12

    :goto_4
    if-eqz v0, :cond_a

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->finish()V

    return-void

    :cond_a
    if-nez v1, :cond_b

    .line 258
    sget-object p1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a:Ljava/lang/String;

    const-string v0, "No pattern, password or PIN set."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->finish()V

    :cond_b
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 280
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 283
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->b:Z

    if-nez v0, :cond_4

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->q:Z

    .line 286
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->d:Lcom/android/settings/password/BiometricFragment;

    if-eqz v0, :cond_1

    .line 287
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authenticating: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->d:Lcom/android/settings/password/BiometricFragment;

    .line 3143
    iget-boolean v2, v2, Lcom/android/settings/password/BiometricFragment;->c:Z

    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->d:Lcom/android/settings/password/BiometricFragment;

    .line 4143
    iget-boolean v0, v0, Lcom/android/settings/password/BiometricFragment;->c:Z

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->d:Lcom/android/settings/password/BiometricFragment;

    .line 5130
    iget-object v1, v0, Lcom/android/settings/password/BiometricFragment;->b:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_0

    .line 5131
    iget-object v1, v0, Lcom/android/settings/password/BiometricFragment;->b:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 5133
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/BiometricFragment;->a()V

    .line 293
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->l:Z

    if-nez v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->c:Landroid/hardware/biometrics/BiometricManager;

    const/4 v1, 0x5

    const-string v2, "com.android.internal.R.string.biometric_error_user_canceled"

    .line 296
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialError(ILjava/lang/String;)V

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->finish()V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->q:Z

    :cond_4
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 267
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 272
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->setVisible(Z)V

    :cond_0
    return-void
.end method
