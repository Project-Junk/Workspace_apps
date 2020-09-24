.class public Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GoogleChooseLockGenericFragment.java"

# interfaces
.implements Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:Lcom/coloros/settings/feature/password/a;

.field private c:Landroid/app/admin/DevicePolicyManager;

.field private d:Landroid/security/KeyStore;

.field private e:Z

.field private f:J

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:[B

.field private n:Lcom/android/internal/widget/LockPatternUtils;

.field private o:Landroid/hardware/fingerprint/FingerprintManager;

.field private p:I

.field private q:Z

.field private r:Lcom/android/settings/password/d;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a:Z

    .line 105
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->e:Z

    .line 107
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->g:Z

    .line 108
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->h:Z

    .line 112
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->l:Z

    .line 117
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->q:Z

    .line 119
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->s:Z

    return-void
.end method

.method private a()V
    .locals 4

    .line 370
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lockscreen.password_type"

    .line 371
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "minimum_quality"

    .line 374
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4464
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->b(I)I

    move-result v2

    const-string v3, "hide_disabled_prefs"

    .line 376
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 378
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->b()V

    .line 4486
    invoke-direct {p0, v2, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a(IZ)V

    .line 384
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->c()V

    .line 385
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->d()V

    .line 386
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->f()V

    return-void

    .line 388
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->b(IZ)V

    return-void
.end method

.method private a(I)V
    .locals 4

    const-string v0, "device_policy"

    .line 264
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 265
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    .line 266
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 267
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    iput p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->i:I

    .line 271
    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->j:Z

    .line 274
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->c(I)Landroid/content/Intent;

    move-result-object v0

    .line 275
    iget-boolean v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->l:Z

    const-string v2, "for_cred_req_boot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 282
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    .line 283
    iget-object v3, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v2

    .line 3604
    invoke-static {v1, p1, v2, v0}, Lcom/android/settings/EncryptionInterstitial;->a(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 286
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a:Z

    const-string v1, "for_fingerprint"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->q:Z

    const-string v1, ":settings:hide_drawer"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 289
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->e:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x67

    goto :goto_0

    :cond_0
    const/16 v0, 0x65

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 295
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->l:Z

    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->finish()V

    return-void

    .line 300
    :cond_2
    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->k:Z

    .line 301
    invoke-direct {p0, p1, v2}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->b(IZ)V

    return-void
.end method

.method private a(IZ)V
    .locals 12

    const-string v0, "lock_settings_category"

    .line 497
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 499
    iget-object v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->c:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v1

    .line 501
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v4, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    .line 500
    invoke-static {v2, v4}, Lcom/android/settingslib/h;->c(Landroid/content/Context;I)Lcom/android/settingslib/g$a;

    move-result-object v2

    .line 502
    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_0
    if-ltz v4, :cond_16

    .line 503
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    .line 504
    instance-of v7, v6, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;

    if-eqz v7, :cond_15

    .line 505
    invoke-virtual {v6}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "unlock_set_off"

    .line 509
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    if-gtz p1, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v9

    .line 511
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f050011

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v7, v9

    move v8, v7

    goto :goto_2

    :cond_1
    move v8, v5

    :goto_2
    if-lez v1, :cond_2

    move v10, v5

    goto :goto_3

    :cond_2
    move v10, v9

    :goto_3
    move v11, v8

    move v8, v7

    move v7, v11

    goto/16 :goto_d

    :cond_3
    const-string v8, "unlock_set_none"

    .line 517
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 518
    iget v7, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_4

    move v7, v9

    goto :goto_4

    :cond_4
    move v7, v5

    :goto_4
    if-gtz p1, :cond_5

    move v8, v5

    goto :goto_5

    :cond_5
    move v8, v9

    :goto_5
    if-lez v1, :cond_10

    move v10, v5

    goto/16 :goto_d

    :cond_6
    const-string v8, "unlock_set_pattern"

    .line 525
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/high16 v7, 0x10000

    if-gt p1, v7, :cond_7

    move v8, v5

    goto :goto_6

    :cond_7
    move v8, v9

    :goto_6
    if-le v1, v7, :cond_8

    :goto_7
    move v7, v5

    goto :goto_8

    :cond_8
    move v7, v9

    :goto_8
    move v10, v7

    :goto_9
    move v7, v5

    goto :goto_d

    :cond_9
    const-string v8, "unlock_set_pin"

    .line 529
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/high16 v7, 0x30000

    if-gt p1, v7, :cond_a

    move v8, v5

    goto :goto_a

    :cond_a
    move v8, v9

    :goto_a
    if-le v1, v7, :cond_8

    goto :goto_7

    :cond_b
    const-string v8, "unlock_set_password"

    .line 533
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/high16 v7, 0x60000

    if-gt p1, v7, :cond_c

    move v8, v5

    goto :goto_b

    :cond_c
    move v8, v9

    :goto_b
    if-le v1, v7, :cond_8

    goto :goto_7

    :cond_d
    const-string v8, "unlock_set_managed"

    .line 537
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/high16 v7, 0x80000

    if-le v1, v7, :cond_e

    move v7, v5

    goto :goto_c

    :cond_e
    move v7, v9

    :goto_c
    move v10, v7

    move v8, v9

    goto :goto_9

    :cond_f
    move v7, v5

    move v8, v7

    :cond_10
    move v10, v9

    :goto_d
    if-eqz p2, :cond_11

    move v7, v8

    :cond_11
    if-nez v7, :cond_12

    .line 547
    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_e

    :cond_12
    if-eqz v10, :cond_13

    if-eqz v2, :cond_13

    .line 549
    check-cast v6, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v6, v2}, Lcom/android/settingslib/RestrictedPreference;->a(Lcom/android/settingslib/g$a;)V

    goto :goto_e

    :cond_13
    if-nez v8, :cond_14

    .line 553
    move-object v7, v6

    check-cast v7, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v7, v3}, Lcom/android/settingslib/RestrictedPreference;->a(Lcom/android/settingslib/g$a;)V

    const v7, 0x7f121778

    .line 554
    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setSummary(I)V

    .line 555
    invoke-virtual {v6, v9}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_e

    .line 557
    :cond_14
    check-cast v6, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v6, v3}, Lcom/android/settingslib/RestrictedPreference;->a(Lcom/android/settingslib/g$a;)V

    :cond_15
    :goto_e
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    :cond_16
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "unlock_set_off"

    .line 829
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 830
    invoke-direct {p0, v2, v1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->b(IZ)V

    goto :goto_0

    :cond_0
    const-string v0, "unlock_set_none"

    .line 832
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    invoke-direct {p0, v2, v2}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->b(IZ)V

    goto :goto_0

    :cond_1
    const-string v0, "unlock_set_managed"

    .line 835
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p1, 0x80000

    .line 836
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a(I)V

    goto :goto_0

    :cond_2
    const-string v0, "unlock_set_pattern"

    .line 837
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p1, 0x10000

    .line 838
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a(I)V

    goto :goto_0

    :cond_3
    const-string v0, "unlock_set_pin"

    .line 840
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 p1, 0x20000

    .line 841
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a(I)V

    goto :goto_0

    :cond_4
    const-string v0, "unlock_set_password"

    .line 843
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 p1, 0x40000

    .line 844
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a(I)V

    :goto_0
    return v1

    .line 847
    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Encountered unknown unlock method to set: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChooseLockGenericFragment"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private b(I)I
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->c:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method private b()V
    .locals 2

    const v0, 0x7f1500e4

    .line 393
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->addPreferencesFromResource(I)V

    const-string v0, "unlock_set_none"

    .line 396
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    const v1, 0x7f0a03be

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setViewId(I)V

    const-string v0, "unlock_skip_fingerprint"

    .line 397
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setViewId(I)V

    const-string v0, "unlock_set_pin"

    .line 398
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    const v1, 0x7f0a03c0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setViewId(I)V

    const-string v0, "unlock_set_password"

    .line 399
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    const v1, 0x7f0a03bf

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setViewId(I)V

    return-void
.end method

.method private b(IZ)V
    .locals 3

    .line 619
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->g:Z

    if-eqz v0, :cond_5

    .line 5464
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->b(I)I

    move-result p1

    .line 624
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->c(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 626
    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->s:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->e:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x67

    goto :goto_0

    :cond_0
    const/16 p1, 0x66

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 630
    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->s:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->e:Z

    if-nez p1, :cond_2

    .line 631
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_2
    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 637
    iget-object p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->m:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZ[B)V

    .line 638
    iget-object p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->b:Lcom/coloros/settings/feature/password/a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/a;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->m:[B

    iget v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock([BI)Z

    .line 639
    iget-object p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->b:Lcom/coloros/settings/feature/password/a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/a;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iget v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 640
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 643
    :cond_4
    iget p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->d(I)V

    return-void

    .line 620
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Tried to update password without confirming it"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(I)Landroid/content/Intent;
    .locals 9

    .line 649
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x80000

    if-lt p1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v2, 0x20000

    if-lt p1, v2, :cond_4

    .line 653
    iget-object v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->c:Landroid/app/admin/DevicePolicyManager;

    iget v3, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-virtual {v2, v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    move v1, v2

    :cond_1
    const/high16 v2, 0x50000

    const/4 v3, 0x6

    if-lt p1, v2, :cond_2

    if-ge v1, v3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    .line 661
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->c:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    .line 662
    iget-boolean v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->e:Z

    if-eqz v1, :cond_3

    .line 663
    iget-boolean v4, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->k:Z

    iget-object v5, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->m:[B

    iget-wide v6, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->f:J

    iget v8, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    move v1, p1

    invoke-static/range {v0 .. v8}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPasswordIntent(Landroid/content/Context;IIIZ[BJI)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 666
    :cond_3
    iget-boolean v4, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->k:Z

    iget-object v5, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->m:[B

    iget v6, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPasswordIntent(Landroid/content/Context;IIIZ[BI)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/high16 v2, 0x10000

    if-ne p1, v2, :cond_6

    .line 670
    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->e:Z

    if-eqz p1, :cond_5

    .line 671
    iget-boolean v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->k:Z

    iget-object v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->m:[B

    iget-wide v3, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->f:J

    iget v5, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-static/range {v0 .. v5}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPatternIntent(Landroid/content/Context;Z[BJI)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 674
    :cond_5
    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->k:Z

    iget-object v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->m:[B

    iget v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-static {v0, p1, v1, v2}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPatternIntent(Landroid/content/Context;Z[BI)Landroid/content/Intent;

    move-result-object v1

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 679
    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->q:Z

    const-string v0, ":settings:hide_drawer"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 680
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v2, "android.app.extra.PASSWORD_COMPLEXITY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    return-object v1
.end method

.method private c()V
    .locals 6

    .line 403
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "unlock_set_pattern"

    const-string v1, "unlock_set_pin"

    const-string v2, "unlock_set_password"

    .line 404
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 407
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 411
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 413
    aget v5, v2, v3

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "unlock_set_managed"

    .line 422
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->removePreference(Ljava/lang/String;)Z

    .line 425
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->s:Z

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "unlock_skip_fingerprint"

    .line 426
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->removePreference(Ljava/lang/String;)Z

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x7f1209eb
        0x7f1209ec
        0x7f1209ea
    .end array-data
.end method

.method private d()V
    .locals 2

    .line 431
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->e()Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f120677

    .line 434
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 7

    .line 687
    iget-object v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->o:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->o:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->o:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 692
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 693
    iget-object v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->o:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v2, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$1;-><init>(Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;I)V

    invoke-virtual {v1, v0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void

    .line 714
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->e(I)V

    return-void

    .line 721
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->finish()V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .line 439
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    .line 440
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 441
    iget-object v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "unlock_set_off"

    return-object v0

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v0, "unlock_set_managed"

    return-object v0

    :cond_2
    const-string v0, "unlock_set_password"

    return-object v0

    :cond_3
    const-string v0, "unlock_set_pin"

    return-object v0

    :cond_4
    const-string v0, "unlock_set_pattern"

    return-object v0

    :cond_5
    const-string v0, "unlock_set_none"

    return-object v0
.end method

.method private e(I)V
    .locals 6

    .line 726
    iget-object v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->o:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 727
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 729
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 731
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 732
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 734
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 735
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 736
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 737
    iget p1, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->d(I)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 744
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->finish()V

    :cond_2
    return-void
.end method

.method private f()V
    .locals 12

    .line 566
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 570
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 575
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const v0, 0x7f121373

    .line 579
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "lock_settings_category"

    .line 581
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 582
    invoke-virtual {v2}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    .line 584
    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    .line 585
    invoke-virtual {v6}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "unlock_set_pattern"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_2

    :sswitch_1
    const-string v8, "unlock_set_password"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v10

    goto :goto_2

    :sswitch_2
    const-string v8, "unlock_set_pin"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v11

    goto :goto_2

    :sswitch_3
    const-string v8, "unlock_set_managed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v9

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v1

    :goto_2
    if-eqz v7, :cond_4

    if-eq v7, v11, :cond_4

    if-eq v7, v10, :cond_4

    if-eq v7, v9, :cond_4

    goto :goto_3

    .line 590
    :cond_4
    invoke-virtual {v6, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b2397b9 -> :sswitch_3
        -0x75461c3 -> :sswitch_2
        0x27e176f3 -> :sswitch_1
        0x53ec4438 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120aa7

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 307
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->h:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-ne p1, v3, :cond_1

    if-ne p2, v1, :cond_1

    .line 310
    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->g:Z

    const-string p2, "password"

    .line 311
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->m:[B

    .line 312
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a()V

    .line 313
    iget-boolean p2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->l:Z

    if-eqz p2, :cond_a

    .line 314
    iget-object p2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->m:[B

    if-nez p2, :cond_0

    .line 315
    iget-object p2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    .line 316
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    .line 315
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a(I)V

    goto/16 :goto_1

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x66

    if-eq p1, v3, :cond_8

    const/16 v3, 0x65

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x67

    if-ne p1, v3, :cond_5

    if-ne p2, v2, :cond_5

    .line 329
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 331
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 330
    invoke-static {v1}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 334
    iget v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    .line 337
    :cond_3
    iget v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "has_fingerprint"

    .line 338
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p3, :cond_4

    .line 340
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 342
    :cond_4
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 343
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->finish()V

    goto :goto_1

    :cond_5
    const/16 v3, 0x68

    if-ne p1, v3, :cond_7

    if-eqz p2, :cond_a

    .line 346
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-ne p2, v2, :cond_6

    move p2, v1

    :cond_6
    invoke-virtual {v0, p2, p3}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 348
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->finish()V

    goto :goto_1

    .line 351
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 352
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->finish()V

    goto :goto_1

    :cond_8
    :goto_0
    if-nez p2, :cond_9

    .line 323
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->l:Z

    if-eqz v0, :cond_a

    .line 324
    :cond_9
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 325
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->finish()V

    :cond_a
    :goto_1
    if-nez p1, :cond_b

    .line 354
    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->l:Z

    if-eqz p1, :cond_b

    .line 355
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->finish()V

    :cond_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->o:Landroid/hardware/fingerprint/FingerprintManager;

    const-string v1, "device_policy"

    .line 133
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->c:Landroid/app/admin/DevicePolicyManager;

    .line 134
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->d:Landroid/security/KeyStore;

    .line 135
    new-instance v1, Lcom/coloros/settings/feature/password/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coloros/settings/feature/password/a;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->b:Lcom/coloros/settings/feature/password/a;

    .line 136
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    const-string v1, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.app.action.SET_NEW_PASSWORD"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->s:Z

    .line 141
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "confirm_credentials"

    .line 142
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 143
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    if-eqz v6, :cond_2

    xor-int/2addr v2, v5

    .line 144
    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->g:Z

    .line 145
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "password"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->m:[B

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, ":settings:hide_drawer"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->q:Z

    .line 149
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "has_challenge"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->e:Z

    .line 151
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-wide/16 v6, 0x0

    const-string v8, "challenge"

    invoke-virtual {v2, v8, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->f:J

    .line 153
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "for_fingerprint"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a:Z

    .line 155
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "for_cred_req_boot"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->l:Z

    .line 157
    iget-boolean v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->s:Z

    const-string v6, "password_confirmed"

    if-eqz v2, :cond_4

    .line 164
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->g:Z

    :cond_4
    if-eqz p1, :cond_5

    .line 169
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->g:Z

    const-string v2, "waiting_for_confirmation"

    .line 170
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->h:Z

    const-string v2, "encrypt_requested_quality"

    .line 171
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->i:I

    const-string v2, "encrypt_requested_disabled"

    .line 172
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->j:Z

    .line 177
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    .line 178
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    const/4 v6, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 176
    invoke-static {p1, v2, v6, v7}, Lcom/android/settings/m;->a(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    .line 182
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 189
    :cond_6
    iput p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    goto :goto_5

    .line 185
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 186
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_8

    goto :goto_4

    .line 187
    :cond_8
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 186
    :goto_4
    invoke-static {v1, p1}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    .line 192
    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 193
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iget v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/os/UserManager;I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    .line 194
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 195
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f120c73

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 198
    :cond_9
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Lcom/android/settings/password/d;->a()Lcom/android/settings/password/d;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->r:Lcom/android/settings/password/d;

    .line 200
    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->g:Z

    if-eqz p1, :cond_a

    .line 201
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a()V

    .line 202
    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->l:Z

    if-eqz p1, :cond_e

    .line 203
    iget-object p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a(I)V

    goto :goto_7

    .line 206
    :cond_a
    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->h:Z

    if-nez p1, :cond_e

    .line 207
    new-instance p1, Lcom/android/settings/password/b;

    .line 208
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 210
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    .line 211
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_b

    move v4, v5

    :cond_b
    if-nez v4, :cond_d

    const/16 v0, 0x64

    const v1, 0x7f12177e

    .line 214
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    .line 213
    invoke-virtual {p1, v0, v1, v5, v2}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_6

    .line 218
    :cond_c
    iput-boolean v5, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->h:Z

    goto :goto_7

    .line 215
    :cond_d
    :goto_6
    iput-boolean v5, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->g:Z

    .line 216
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a()V

    .line 1225
    :cond_e
    :goto_7
    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a:Z

    if-eqz p1, :cond_f

    const p1, 0x7f0d0061

    .line 1226
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->setHeaderView(I)V

    .line 1227
    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->s:Z

    if-eqz p1, :cond_f

    .line 1228
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getHeaderView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    const v0, 0x7f0a029c

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1209ee

    .line 1229
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_f
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 750
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 236
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "unlock_set_off"

    .line 1822
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "unlock_set_none"

    .line 1823
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_12

    .line 238
    iget-object v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2759
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v3, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-static {v0, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f121770

    goto :goto_1

    :cond_1
    const v0, 0x7f12176f

    .line 2766
    :goto_1
    iget-object v3, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->o:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_2

    .line 2767
    iget v1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-virtual {v3, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    .line 2769
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iget v4, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-static {v3, v4}, Lcom/coloros/settings/utils/al;->a(Landroid/os/UserManager;I)Z

    move-result v3

    .line 2770
    iget-object v4, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->p:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    const/high16 v5, 0x10000

    if-eq v4, v5, :cond_e

    const/high16 v5, 0x20000

    if-eq v4, v5, :cond_a

    const/high16 v5, 0x30000

    if-eq v4, v5, :cond_a

    const/high16 v5, 0x40000

    if-eq v4, v5, :cond_6

    const/high16 v5, 0x50000

    if-eq v4, v5, :cond_6

    const/high16 v5, 0x60000

    if-eq v4, v5, :cond_6

    const/high16 v5, 0x80000

    if-eq v4, v5, :cond_6

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    const v1, 0x7f12176c

    goto/16 :goto_2

    :cond_3
    if-eqz v1, :cond_4

    if-nez v3, :cond_4

    const v1, 0x7f12176b

    goto/16 :goto_2

    :cond_4
    if-eqz v3, :cond_5

    const v1, 0x7f12176d

    goto :goto_2

    :cond_5
    const v1, 0x7f12176a

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    const v1, 0x7f121760

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    if-nez v3, :cond_8

    const v1, 0x7f12175f

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    const v1, 0x7f121761

    goto :goto_2

    :cond_9
    const v1, 0x7f12175e

    goto :goto_2

    :cond_a
    if-eqz v1, :cond_b

    if-eqz v3, :cond_b

    const v1, 0x7f121768

    goto :goto_2

    :cond_b
    if-eqz v1, :cond_c

    if-nez v3, :cond_c

    const v1, 0x7f121767

    goto :goto_2

    :cond_c
    if-eqz v3, :cond_d

    const v1, 0x7f121769

    goto :goto_2

    :cond_d
    const v1, 0x7f121766

    goto :goto_2

    :cond_e
    if-eqz v1, :cond_f

    if-eqz v3, :cond_f

    const v1, 0x7f121764

    goto :goto_2

    :cond_f
    if-eqz v1, :cond_10

    if-nez v3, :cond_10

    const v1, 0x7f121763

    goto :goto_2

    :cond_10
    if-eqz v3, :cond_11

    const v1, 0x7f121765

    goto :goto_2

    :cond_11
    const v1, 0x7f121762

    .line 1857
    :goto_2
    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->a(IILjava/lang/String;)Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object p1

    .line 1859
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "frp_warning_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v2

    :cond_12
    const-string v0, "unlock_skip_fingerprint"

    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 244
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->g:Z

    const-string v1, "password_confirmed"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x68

    .line 247
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    .line 250
    :cond_13
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 361
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 363
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->g:Z

    const-string v1, "password_confirmed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->h:Z

    const-string v1, "waiting_for_confirmation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    iget v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->i:I

    const-string v1, "encrypt_requested_quality"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->j:Z

    const-string v1, "encrypt_requested_disabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
