.class public Lcom/android/settings/password/BiometricFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "BiometricFragment.java"


# instance fields
.field a:I

.field b:Landroid/os/CancellationSignal;

.field c:Z

.field private d:Ljava/util/concurrent/Executor;

.field private e:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private f:Landroid/os/Bundle;

.field private g:Landroid/hardware/biometrics/BiometricPrompt;

.field private h:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private final i:Landroid/content/DialogInterface$OnClickListener;

.field private final j:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/android/settings/password/BiometricFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/BiometricFragment$1;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->h:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 86
    new-instance v0, Lcom/android/settings/password/BiometricFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/BiometricFragment$2;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    new-instance v0, Lcom/android/settings/password/BiometricFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/password/BiometricFragment$3;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->j:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/android/settings/password/BiometricFragment;
    .locals 1

    .line 115
    new-instance v0, Lcom/android/settings/password/BiometricFragment;

    invoke-direct {v0}, Lcom/android/settings/password/BiometricFragment;-><init>()V

    .line 116
    invoke-virtual {v0, p0}, Lcom/android/settings/password/BiometricFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/password/BiometricFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/settings/password/BiometricFragment;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings/password/BiometricFragment;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment;->d:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/password/BiometricFragment;)V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->a()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment;->e:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object p0
.end method

.method static synthetic e(Lcom/android/settings/password/BiometricFragment;)Landroid/os/Bundle;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment;->f:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic f(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment;->h:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment;->d:Ljava/util/concurrent/Executor;

    .line 122
    iput-object p2, p0, Lcom/android/settings/password/BiometricFragment;->e:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x631

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 148
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/password/BiometricFragment;->setRetainInstance(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->f:Landroid/os/Bundle;

    .line 152
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/password/BiometricFragment;->f:Landroid/os/Bundle;

    const-string v2, "title"

    .line 153
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setFromConfirmDeviceCredential()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/BiometricFragment;->f:Landroid/os/Bundle;

    const-string v2, "subtitle"

    .line 156
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/BiometricFragment;->f:Landroid/os/Bundle;

    const-string v2, "description"

    .line 157
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/BiometricFragment;->f:Landroid/os/Bundle;

    const-string v2, "require_confirmation"

    .line 159
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 158
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 161
    invoke-static {v1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lcom/android/settings/overlay/b;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/security/f;->a(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 166
    iget v2, p0, Lcom/android/settings/password/BiometricFragment;->a:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_1

    const/high16 v2, 0x30000

    if-eq v1, v2, :cond_1

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x50000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x80000

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12060b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->d:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/BiometricFragment;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12060d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->d:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/BiometricFragment;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12060c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->d:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/BiometricFragment;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 188
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->g:Landroid/hardware/biometrics/BiometricPrompt;

    .line 189
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->b:Landroid/os/CancellationSignal;

    .line 192
    iput-boolean p1, p0, Lcom/android/settings/password/BiometricFragment;->c:Z

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "use_default_biometric"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 198
    iget-object v3, p0, Lcom/android/settings/password/BiometricFragment;->g:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v4, p0, Lcom/android/settings/password/BiometricFragment;->b:Landroid/os/CancellationSignal;

    iget-object v5, p0, Lcom/android/settings/password/BiometricFragment;->d:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/android/settings/password/BiometricFragment;->h:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iget v7, p0, Lcom/android/settings/password/BiometricFragment;->a:I

    iget-object v8, p0, Lcom/android/settings/password/BiometricFragment;->j:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;ILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    return-void
.end method
