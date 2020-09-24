.class public Lcom/android/settings/password/SetNewPasswordActivity;
.super Landroid/app/Activity;
.source "SetNewPasswordActivity.java"

# interfaces
.implements Lcom/android/settings/password/g$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/android/settings/password/g;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->c:I

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->d:Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .locals 4

    .line 132
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetNewPasswordActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/password/e;->a(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 138
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 139
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .line 113
    invoke-static {p0}, Lcom/android/settings/m;->g(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/android/settings/password/SetNewPasswordActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 118
    iget-object p1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->d:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v2, "caller_app_name"

    .line 119
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :cond_1
    iget p1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->c:I

    if-eqz p1, :cond_2

    const-string v2, "requested_min_complexity"

    .line 122
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "is_calling_app_admin"

    .line 125
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetNewPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15

    move-object v7, p0

    .line 74
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/password/SetNewPasswordActivity;->a:Ljava/lang/String;

    .line 77
    iget-object v0, v7, Lcom/android/settings/password/SetNewPasswordActivity;->a:Ljava/lang/String;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/android/settings/password/SetNewPasswordActivity;->a:Ljava/lang/String;

    const-string v2, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SetNewPasswordActivity"

    const-string v1, "Unexpected action to launch this activity"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->finish()V

    return-void

    .line 1148
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/password/e;->a(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v12

    .line 1151
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.app.extra.PASSWORD_COMPLEXITY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_1

    .line 1152
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v0, -0x80000000

    :goto_0
    move v13, v0

    .line 1157
    iget-object v0, v7, Lcom/android/settings/password/SetNewPasswordActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x66d

    goto :goto_1

    :cond_2
    const/16 v0, 0x66e

    :goto_1
    move v10, v0

    .line 1162
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v8

    .line 1164
    invoke-static {p0}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/app/Activity;)I

    move-result v9

    const/16 v11, 0x66c

    .line 1163
    invoke-virtual/range {v8 .. v13}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 87
    invoke-static {p0, v0}, Lcom/android/settings/password/e;->a(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v7, Lcom/android/settings/password/SetNewPasswordActivity;->d:Ljava/lang/String;

    .line 88
    iget-object v3, v7, Lcom/android/settings/password/SetNewPasswordActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "android.permission.REQUEST_PASSWORD_COMPLEXITY"

    .line 90
    invoke-static {p0, v0, v3}, Lcom/android/settings/password/e;->a(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 94
    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->sanitizeComplexityLevel(I)I

    move-result v0

    iput v0, v7, Lcom/android/settings/password/SetNewPasswordActivity;->c:I

    goto :goto_2

    :cond_3
    const-string v1, "Must have permission android.permission.REQUEST_PASSWORD_COMPLEXITY to use extra android.app.extra.PASSWORD_COMPLEXITY"

    .line 97
    invoke-static {v0, v1}, Lcom/android/settings/password/e;->a(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->finish()V

    return-void

    .line 107
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    .line 2075
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 2076
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_5

    .line 2078
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2077
    invoke-static {v2, v1, v8, v0}, Lcom/android/settings/m;->a(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    .line 2078
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2079
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2080
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v3

    .line 2085
    :goto_3
    invoke-static {p0}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    .line 2086
    invoke-static {p0}, Lcom/android/settings/m;->j(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v4

    .line 2087
    new-instance v9, Lcom/android/settings/password/g;

    .line 2088
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v0, "device_policy"

    .line 2090
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    move-object v0, v9

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/password/g;-><init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/g$a;)V

    .line 106
    iput-object v9, v7, Lcom/android/settings/password/SetNewPasswordActivity;->b:Lcom/android/settings/password/g;

    .line 108
    iget-object v0, v7, Lcom/android/settings/password/SetNewPasswordActivity;->b:Lcom/android/settings/password/g;

    .line 2115
    iget-object v1, v0, Lcom/android/settings/password/g;->b:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.biometrics.face"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "challenge"

    const-string v3, "has_challenge"

    const-string v4, "hide_disabled_prefs"

    const/high16 v5, 0x10000

    const-string v6, "minimum_quality"

    const/4 v9, 0x1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/settings/password/g;->d:Landroid/hardware/face/FaceManager;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/settings/password/g;->d:Landroid/hardware/face/FaceManager;

    .line 2117
    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/settings/password/g;->d:Landroid/hardware/face/FaceManager;

    iget v10, v0, Lcom/android/settings/password/g;->a:I

    .line 2118
    invoke-virtual {v1, v10}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2169
    iget-object v1, v0, Lcom/android/settings/password/g;->e:Landroid/app/admin/DevicePolicyManager;

    iget v10, v0, Lcom/android/settings/password/g;->a:I

    .line 2170
    invoke-virtual {v1, v8, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6

    move v1, v9

    goto :goto_4

    :cond_6
    move v1, v14

    :goto_4
    if-nez v1, :cond_7

    .line 3150
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3151
    iget-object v8, v0, Lcom/android/settings/password/g;->d:Landroid/hardware/face/FaceManager;

    invoke-virtual {v8}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v10

    .line 3152
    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3154
    invoke-virtual {v1, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3156
    invoke-virtual {v1, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3157
    invoke-virtual {v1, v2, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "for_face"

    .line 3158
    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 2121
    :cond_7
    iget-object v1, v0, Lcom/android/settings/password/g;->b:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.fingerprint"

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/settings/password/g;->c:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/settings/password/g;->c:Landroid/hardware/fingerprint/FingerprintManager;

    .line 2123
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/settings/password/g;->c:Landroid/hardware/fingerprint/FingerprintManager;

    iget v10, v0, Lcom/android/settings/password/g;->a:I

    .line 2124
    invoke-virtual {v1, v10}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3163
    iget-object v1, v0, Lcom/android/settings/password/g;->e:Landroid/app/admin/DevicePolicyManager;

    iget v10, v0, Lcom/android/settings/password/g;->a:I

    .line 3164
    invoke-virtual {v1, v8, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    move v14, v9

    :cond_8
    if-nez v14, :cond_9

    .line 4137
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4138
    iget-object v8, v0, Lcom/android/settings/password/g;->c:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v8}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v10

    .line 4139
    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4141
    invoke-virtual {v1, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4143
    invoke-virtual {v1, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4144
    invoke-virtual {v1, v2, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "for_fingerprint"

    .line 4145
    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 2128
    :cond_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2132
    :goto_5
    iget v2, v0, Lcom/android/settings/password/g;->a:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2133
    iget-object v0, v0, Lcom/android/settings/password/g;->f:Lcom/android/settings/password/g$a;

    invoke-interface {v0, v1}, Lcom/android/settings/password/g$a;->a(Landroid/os/Bundle;)V

    return-void
.end method
