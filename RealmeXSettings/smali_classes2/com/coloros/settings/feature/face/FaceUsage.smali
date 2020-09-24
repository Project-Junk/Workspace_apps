.class public Lcom/coloros/settings/feature/face/FaceUsage;
.super Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;
.source "FaceUsage.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroidx/preference/PreferenceCategory;

.field private b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private e:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private f:Landroid/hardware/face/FaceManager;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 249
    new-instance v0, Lcom/coloros/settings/feature/face/FaceUsage$4;

    invoke-direct {v0}, Lcom/coloros/settings/feature/face/FaceUsage$4;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/face/FaceUsage;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/FaceUsage;)Landroid/app/Activity;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private a()V
    .locals 6

    const-string v0, "FaceUsage"

    const-string v1, "updatePreferences()"

    .line 361
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-boolean v1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->g:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 364
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 3051
    :goto_0
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 370
    new-instance v1, Lcom/coloros/settings/privacy/a/g;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    .line 371
    invoke-virtual {v1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result v1

    .line 373
    iget-object v3, p0, Lcom/coloros/settings/feature/face/FaceUsage;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    .line 374
    iget-object v5, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    .line 375
    invoke-static {v5}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockAppEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    .line 374
    :goto_1
    invoke-virtual {v3, v5}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    if-nez v1, :cond_2

    const-string v3, "updatePreferences() !appEncryptEnable"

    .line 377
    invoke-static {v0, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockAppEnabled(Landroid/content/Context;Z)V

    .line 382
    :cond_2
    iget-object v3, p0, Lcom/coloros/settings/feature/face/FaceUsage;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    .line 384
    iget-object v5, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    .line 385
    invoke-static {v5}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockFileEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    .line 384
    :goto_2
    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    if-nez v1, :cond_4

    const-string v1, "updatePreferences() !fileEncryptEnable"

    .line 387
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockFileEnabled(Landroid/content/Context;Z)V

    .line 394
    :cond_4
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_5

    .line 395
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->e:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    .line 396
    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceSwitchForSecurityCenterEnable(Landroid/content/Context;)Z

    move-result v1

    .line 395
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_5
    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mPrivacyPasswordUtils:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v2, "oppo.settings.privacy.confirm"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "only_privacy_confirm"

    .line 151
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceUsage;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 153
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/face/FaceUsage;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 155
    :cond_1
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120f25

    .line 156
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 157
    invoke-virtual {v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121ab4

    new-instance v3, Lcom/coloros/settings/feature/face/FaceUsage$1;

    invoke-direct {v3, p0, p1}, Lcom/coloros/settings/feature/face/FaceUsage$1;-><init>(Lcom/coloros/settings/feature/face/FaceUsage;Z)V

    .line 158
    invoke-virtual {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120491

    .line 176
    new-instance v2, Lcom/coloros/settings/feature/face/FaceUsage$2;

    invoke-direct {v2, p0, p1}, Lcom/coloros/settings/feature/face/FaceUsage$2;-><init>(Lcom/coloros/settings/feature/face/FaceUsage;Z)V

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 186
    new-instance v1, Lcom/coloros/settings/feature/face/FaceUsage$3;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/face/FaceUsage$3;-><init>(Lcom/coloros/settings/feature/face/FaceUsage;Z)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 197
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 199
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/face/FaceUsage;)Landroid/app/Activity;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/face/FaceUsage;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/face/FaceUsage;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method


# virtual methods
.method public isBiologicalEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 229
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->f:Landroid/hardware/face/FaceManager;

    if-nez p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    const-string v0, "face"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->f:Landroid/hardware/face/FaceManager;

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->f:Landroid/hardware/face/FaceManager;

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates()Z

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

    .line 207
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FaceUsage"

    invoke-static {v0, p3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 223
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceUsage;->finish()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    if-ne p2, v0, :cond_4

    .line 217
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockFileEnabled(Landroid/content/Context;Z)V

    .line 218
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void

    .line 220
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void

    :cond_5
    :goto_1
    if-ne p2, v0, :cond_6

    .line 210
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockAppEnabled(Landroid/content/Context;Z)V

    .line 211
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void

    .line 213
    :cond_6
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1500d1

    .line 80
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/FaceUsage;->addPreferencesFromResource(I)V

    const-string p1, "face_usedfor_category"

    .line 1328
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/FaceUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->a:Landroidx/preference/PreferenceCategory;

    const-string p1, "face_unlock"

    .line 1329
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/FaceUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 1330
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "face_encrypt_application"

    .line 1332
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/FaceUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 1333
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "face_encrypt_file_switch"

    .line 1335
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/FaceUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 1336
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1339
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1340
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->a:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 1341
    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 1343
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1344
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->a:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 1345
    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    :cond_0
    const-string p1, "face_security_center_switch"

    .line 1348
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/FaceUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->e:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 1349
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->e:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1352
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    if-eqz p1, :cond_1

    .line 1353
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->a:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->e:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 1356
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/custom/b;->n(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->g:Z

    .line 1357
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/FaceUsage;->a()V

    return-void
.end method

.method public onEncryptAppConfirmPassword()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockAppEnabled(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public onEncryptFileConfirmPassword()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FileEncryptUtils;->isFileEncryptEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockFileEnabled(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreferenceChange preference="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "newValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceUsage"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "face_unlock"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "face_usage_state"

    const-string v2, "face_usage"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mContext:Landroid/content/Context;

    const-string v0, "0"

    invoke-static {p1, v2, v1, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockEnabled(Landroid/content/Context;Z)V

    .line 103
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockBackupEnabled(Landroid/content/Context;Z)V

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceRemainUnlockEnabled(Landroid/content/Context;)V

    .line 105
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceScreenLightEnabled(Landroid/content/Context;)V

    .line 106
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 107
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->isFingerprintUnlockDisabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 110
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->putFingerFaceSwitchValue(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockEnabled(Landroid/content/Context;Z)V

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockBackupEnabled(Landroid/content/Context;Z)V

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockRemainUnlockEnabled(Landroid/content/Context;Z)V

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setScreenLightState(Landroid/content/Context;Z)V

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->putFingerFaceSwitchValue(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "face_encrypt_application"

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mContext:Landroid/content/Context;

    const-string v0, "1"

    invoke-static {p1, v2, v1, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 125
    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/face/FaceUsage;->a(Z)V

    return v4

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockAppEnabled(Landroid/content/Context;Z)V

    return v3

    :cond_3
    const-string v0, "face_encrypt_file_switch"

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mContext:Landroid/content/Context;

    const-string v0, "2"

    invoke-static {p1, v2, v1, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 134
    invoke-direct {p0, v4}, Lcom/coloros/settings/feature/face/FaceUsage;->a(Z)V

    return v4

    .line 137
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockFileEnabled(Landroid/content/Context;Z)V

    return v3

    :cond_5
    const-string v0, "face_security_center_switch"

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 141
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mContext:Landroid/content/Context;

    const-string v0, "3"

    invoke-static {p1, v2, v1, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage;->mActivity:Landroid/app/Activity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceSwitchForSecurityCenter(Landroid/content/Context;Z)V

    :cond_6
    :goto_0
    return v3
.end method

.method public onResume()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/FaceUsage;->a()V

    return-void
.end method
