.class public Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;
.super Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;
.source "FingerprintUsage.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final KEY_ENCRYPT_FILE_SWITCH:Ljava/lang/String; = "fingerprint_encrypt_file_switch"

.field public static final KEY_ENCRYPT_PREFERENCE:Ljava/lang/String; = "fingerprint_encrypt_application"

.field public static final KEY_FINGERPRINT_USAGE:Ljava/lang/String; = "fingerprint_usage"

.field public static final KEY_SECURITY_CENTER_SWITCH:Ljava/lang/String; = "fingerprint_security_center_switch"

.field public static final KEY_UNLOCK_PREFERENCE:Ljava/lang/String; = "fingerprint_unlock"

.field private static final KEY_USAGE_CATEGORY:Ljava/lang/String; = "fingerprint_usedfor_category"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "FingerprintUsage"


# instance fields
.field private mEncryptApplicationPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private mEncryptFileSwichPre:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private mEncryptSecurityCenterPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private mIsFingerprintUnlockNeedDisabled:Z

.field private mUnlockPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private mUsageCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 337
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$4;

    invoke-direct {v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$4;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;)Landroid/app/Activity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;)Landroid/app/Activity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptApplicationPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptFileSwichPre:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method private init()V
    .locals 3

    const-string v0, "fingerprint_usedfor_category"

    .line 252
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUsageCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "fingerprint_unlock"

    .line 254
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUnlockPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 255
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUnlockPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "fingerprint_encrypt_application"

    .line 257
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptApplicationPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 258
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptApplicationPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "fingerprint_encrypt_file_switch"

    .line 260
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptFileSwichPre:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 261
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptFileSwichPre:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 5051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptApplicationPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 265
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUsageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptApplicationPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 266
    iput-object v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptApplicationPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 268
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptFileSwichPre:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 269
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUsageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptFileSwichPre:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 270
    iput-object v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptFileSwichPre:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    :cond_0
    const-string v0, "fingerprint_security_center_switch"

    .line 273
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptSecurityCenterPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 274
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptSecurityCenterPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 276
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUsageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptSecurityCenterPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/custom/b;->l(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mIsFingerprintUnlockNeedDisabled:Z

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mIsFingerprintUnlockNeedDisabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mIsFingerprintUnlockNeedDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintUsage"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->updatePreferences()V

    return-void
.end method

.method public static isFingerprintUnlockDisabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "device_policy"

    .line 332
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private showPrivacyDialog(Z)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mPrivacyPasswordUtils:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v2, "oppo.settings.privacy.confirm"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "only_privacy_confirm"

    .line 154
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 156
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 158
    :cond_1
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120f25

    .line 159
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 160
    invoke-virtual {v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121ab4

    new-instance v3, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$1;

    invoke-direct {v3, p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$1;-><init>(Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;Z)V

    .line 161
    invoke-virtual {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120491

    .line 179
    new-instance v2, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$2;

    invoke-direct {v2, p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$2;-><init>(Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;Z)V

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 189
    new-instance v1, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$3;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$3;-><init>(Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;Z)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 200
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 202
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_2
    return-void
.end method

.method private updatePreferences()V
    .locals 5

    const-string v0, "FingerprintUsage"

    const-string v1, "updatePreferences()"

    .line 285
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUnlockPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFingerUnlockEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 6051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 289
    new-instance v0, Lcom/coloros/settings/privacy/a/g;

    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result v0

    .line 291
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptApplicationPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    .line 292
    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    .line 293
    invoke-static {v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFingerEncryptEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 292
    :goto_0
    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    if-nez v0, :cond_1

    .line 295
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptEnabled(Landroid/content/Context;Z)V

    .line 299
    :cond_1
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptFileSwichPre:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    .line 301
    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    .line 302
    invoke-static {v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFingerEncryptFileEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    .line 301
    :goto_1
    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    if-nez v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptFileEnabled(Landroid/content/Context;Z)V

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreSecurityVerifyEnabled(Landroid/content/Context;)V

    .line 310
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptSecurityCenterPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isEncryptForSecurityCenterEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 314
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->isFingerprintUnlockDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 315
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUnlockPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 316
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUnlockPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUnlockPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const v1, 0x7f1209e9

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 319
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUnlockPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUnlockPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 322
    :goto_2
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mIsFingerprintUnlockNeedDisabled:Z

    if-eqz v0, :cond_6

    .line 323
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUnlockPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 325
    :cond_6
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 326
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mUnlockPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public isBiologicalEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 232
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->hasFingerprints(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 210
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FingerprintUsage"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p3, 0xa

    if-ne p1, p3, :cond_2

    if-nez p2, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->finish()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    if-ne p2, v0, :cond_4

    .line 220
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptFileEnabled(Landroid/content/Context;Z)V

    .line 221
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptFileSwichPre:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void

    .line 223
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptFileSwichPre:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void

    :cond_5
    :goto_1
    if-ne p2, v0, :cond_6

    .line 213
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptEnabled(Landroid/content/Context;Z)V

    .line 214
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptApplicationPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void

    .line 216
    :cond_6
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mEncryptApplicationPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1500d3

    .line 76
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->addPreferencesFromResource(I)V

    .line 77
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->init()V

    return-void
.end method

.method public onEncryptAppConfirmPassword()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptEnabled(Landroid/content/Context;Z)V

    .line 239
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    :cond_0
    return-void
.end method

.method public onEncryptFileConfirmPassword()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FileEncryptUtils;->isFileEncryptEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptFileEnabled(Landroid/content/Context;Z)V

    .line 247
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreferenceChange preference="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "newValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintUsage"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fingerprint_unlock"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "fingerprint_usage"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 96
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mContext:Landroid/content/Context;

    const-string v0, "0"

    .line 1240
    invoke-static {p1, v1, v1, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerUnlockEnabled(Landroid/content/Context;Z)V

    .line 99
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerUnlockBackupEnabled(Landroid/content/Context;Z)V

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3, v2, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    .line 101
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 102
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->putFingerFaceSwitchValue(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerUnlockEnabled(Landroid/content/Context;Z)V

    .line 109
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerUnlockBackupEnabled(Landroid/content/Context;Z)V

    .line 110
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3, v3, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 112
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->putFingerFaceSwitchValue(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "fingerprint_encrypt_application"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mContext:Landroid/content/Context;

    const-string v0, "1"

    .line 2240
    invoke-static {p1, v1, v1, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 118
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->showPrivacyDialog(Z)V

    return v3

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptEnabled(Landroid/content/Context;Z)V

    .line 122
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v2, v3, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    return v2

    :cond_3
    const-string v0, "fingerprint_encrypt_file_switch"

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mContext:Landroid/content/Context;

    const-string v0, "2"

    .line 3240
    invoke-static {p1, v1, v1, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 128
    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->showPrivacyDialog(Z)V

    return v3

    .line 131
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptFileEnabled(Landroid/content/Context;Z)V

    .line 132
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x2

    invoke-static {p1, p2, v3, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    return v2

    :cond_5
    const-string v0, "fingerprint_security_center_switch"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 136
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mContext:Landroid/content/Context;

    const-string v0, "3"

    .line 4240
    invoke-static {p1, v1, v1, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x3

    if-eqz p1, :cond_6

    .line 138
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setEncryptForSecurityCenter(Landroid/content/Context;Z)V

    .line 139
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setEncryptForSecurityCenterBackupEnabled(Landroid/content/Context;Z)V

    .line 140
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2, v2, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    goto :goto_0

    .line 142
    :cond_6
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setEncryptForSecurityCenter(Landroid/content/Context;Z)V

    .line 143
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setEncryptForSecurityCenterBackupEnabled(Landroid/content/Context;Z)V

    .line 144
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2, v3, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    :cond_7
    :goto_0
    return v2
.end method

.method public onResume()V
    .locals 0

    .line 82
    invoke-super {p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->updatePreferences()V

    return-void
.end method
