.class public Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;
.super Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;
.source "PasscodeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/PasscodeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PassCodeSettingsFragment"
.end annotation


# static fields
.field private static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x66

.field private static final CONFIRM_CHANGE_PWD_REQUEST:I = 0x6c

.field private static final CONFIRM_CLOSE_LOCK_SCREEN_PWD_REQUEST:I = 0x69

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field protected static final CONFIRM_REQUEST:I = 0x65

.field private static final DELAY_RETRY_TIME:J = 0x1f4L

.field private static final FALLBACK_REQUEST:I = 0x6a

.field protected static final INTENT_FIRST_USE_APP_PROTECT:Ljava/lang/String; = "com.oppo.safe.action.FIRST_USE_PROTECT_ACTIVITY"

.field protected static final INTENT_GOTO_PRIVACYPROTECT:Ljava/lang/String; = "com.oppo.safe.privacy.PrivacyProtectTopActivity"

.field private static final JUMP_ENCRYPT_APP_REQUEST:I = 0x3e9

.field private static final KEY_ENCRYPT_APP:Ljava/lang/String; = "encrypt_app"

.field private static final KEY_ENCRYPT_FILE:Ljava/lang/String; = "encrypt_file"

.field private static final KEY_GUARD_SWITCH:Ljava/lang/String; = "oppo_key_guard_switch_value"

.field private static final KEY_LAUNCHED_CONFIRM:Ljava/lang/String; = "launched_confirm"

.field private static final KEY_UNLOCK_SET_NONE:Ljava/lang/String; = "unlock_set_none"

.field private static final KEY_UNLOCK_SET_OFF:Ljava/lang/String; = "unlock_set_off"

.field private static final KEY_UNLOCK_SET_PASSWORD:Ljava/lang/String; = "unlock_set_password"

.field private static final KEY_UNLOCK_SET_PATTERN:Ljava/lang/String; = "unlock_set_pattern"

.field private static final KEY_UNLOCK_SET_PIN:Ljava/lang/String; = "unlock_set_pin"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final OPEN_KEYGUARD_REQUEST:I = 0x6b

.field private static final SETTINGS_START_TYPE:Ljava/lang/String; = "start_type"

.field private static final SETTINGS_START_TYPE_CHANGE:Ljava/lang/String; = "change"

.field private static final SETTINGS_START_TYPE_CLOSE:Ljava/lang/String; = "close"

.field private static final SETTINGS_START_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field private static final SETTINGS_START_TYPE_OPEN:Ljava/lang/String; = "open"

.field private static final START_FACE:I = 0x6d


# instance fields
.field protected mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

.field private mAppEncryptQuality:I

.field protected mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/coloros/settings/feature/password/a;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDefaultPasswordType:I

.field protected mFaceChallenge:J

.field protected mFaceManager:Landroid/hardware/face/FaceManager;

.field protected mFaceToken:[B

.field protected mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field protected mIsDeleteOldFingerSuccuss:Z

.field protected mIsOldAlgorithmLastFinger:Z

.field private mKeyguardQuality:I

.field private mLaunchedConfirm:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field protected mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mRequirePassword:Z

.field protected mSupportFace:Z

.field private mSupportFingerprint:Z

.field protected mToken:[B

.field protected mUserId:I

.field protected mUserPassword:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChallenge:J

    .line 97
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceChallenge:J

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mKeyguardQuality:I

    .line 140
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mAppEncryptQuality:I

    const/high16 v0, 0x10000

    .line 141
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mDefaultPasswordType:I

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFingerprint:Z

    return p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;Ljava/lang/String;)Z
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->handleSetUnlockClick(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private checkPasswordIfneed(ZZ)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 242
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mToken:[B

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mLaunchedConfirm:Z

    if-nez p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    .line 243
    iput-boolean p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mLaunchedConfirm:Z

    .line 244
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->launchChooseOrConfirmLock(Z)V

    :cond_1
    return-void
.end method

.method private doResume()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 329
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectMode(Landroid/content/Context;)I

    move-result v1

    .line 330
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, -0x1

    .line 331
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mKeyguardQuality:I

    goto :goto_0

    .line 333
    :cond_0
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mKeyguardQuality:I

    .line 335
    :goto_0
    iput v1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mAppEncryptQuality:I

    return-void
.end method

.method private getResetFingerData()V
    .locals 3

    .line 163
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_is_from_delete_all_reset_finger"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mIsDeleteOldFingerSuccuss:Z

    .line 164
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->isFingerprintOldAlgorithm(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mIsOldAlgorithmLastFinger:Z

    return-void
.end method

.method private handleClosePassword(Z)V
    .locals 2

    .line 401
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isFingerprintUnlockEnabled "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PasscodeSettings"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x69

    if-eqz p1, :cond_0

    const-string p1, "unlock_set_none"

    .line 403
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->showFingerprintUnlockDisableDialog(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string p1, "close"

    const/4 v1, 0x0

    .line 406
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 408
    invoke-virtual {p0, v1, v1, v0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->updateUnlockMethodAndFinish(IZZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private handleSetUnlockClick(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "unlock_set_off"

    .line 641
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "default"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 642
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const v0, 0x7f120e83

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 643
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 644
    invoke-virtual {p0, v3, v2, v2, v1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->updateUnlockMethodAndFinish(IZZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "unlock_set_none"

    .line 646
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "close"

    .line 647
    invoke-virtual {p0, v3, v3, v2, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->updateUnlockMethodAndFinish(IZZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "unlock_set_pattern"

    .line 649
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p1, 0x10000

    const-string v0, "open"

    .line 650
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->updateUnlockMethodAndFinish(IZZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "unlock_set_pin"

    .line 652
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p1, 0x20000

    .line 653
    invoke-virtual {p0, p1, v3, v2, v1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->updateUnlockMethodAndFinish(IZZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "unlock_set_password"

    .line 655
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/high16 p1, 0x40000

    .line 656
    invoke-virtual {p0, p1, v3, v2, v1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->updateUnlockMethodAndFinish(IZZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    return v2
.end method

.method private hasFaces(Landroid/content/Context;)Z
    .locals 1

    .line 606
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p1

    return p1
.end method

.method private initPassCode(ZZLandroid/os/Bundle;)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 207
    invoke-virtual {v1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 206
    invoke-static {v0, v1, v2}, Lcom/coloros/settings/utils/az;->a(Landroid/content/Context;Landroidx/appcompat/app/ActionBar;Landroid/content/Intent;)V

    const v0, 0x7f1500b6

    .line 208
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->addPreferencesFromResource(I)V

    .line 209
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->addFingerprintPreferences()V

    .line 210
    new-instance v0, Lcom/coloros/settings/feature/password/a;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/password/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChooseLockSettingsHelper:Lcom/coloros/settings/feature/password/a;

    .line 211
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 214
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v3, "fingerprint"

    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_0

    .line 217
    :cond_0
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChallenge:J

    .line 218
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnterSecureLock(Landroid/content/Context;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 222
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v0, "face"

    invoke-virtual {p2, v0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/face/FaceManager;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    goto :goto_1

    .line 224
    :cond_1
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceChallenge:J

    .line 227
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 229
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x1

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    if-nez p3, :cond_2

    const/4 p2, 0x0

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->checkPasswordIfneed(ZZ)V

    :cond_2
    const-string p1, "device_policy"

    .line 233
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 234
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getDefaultPasswordType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mDefaultPasswordType:I

    return-void
.end method

.method private isKeyGuardSecure()Z
    .locals 3

    .line 350
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 351
    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 352
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isKeyGuardDisable isSecure: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PasscodeSettings"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private showDeleteFingerprintsDialog(Ljava/lang/String;)V
    .locals 3

    .line 610
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120752

    .line 611
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120751

    .line 612
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 613
    new-instance v1, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$2;-><init>(Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;Ljava/lang/String;)V

    const v2, 0x7f12074e

    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 622
    new-instance v1, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$3;-><init>(Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;Ljava/lang/String;)V

    const p1, 0x7f121232

    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 630
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 632
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 633
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 635
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 636
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->showMessageCenter(Landroid/app/Dialog;)V

    return-void
.end method

.method private showFingerprintUnlockDisableDialog(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "close"

    .line 416
    invoke-virtual {p0, p2, v0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 418
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->handleSetUnlockClick(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private startPasswordActivity(Landroid/content/Intent;Z)V
    .locals 1

    const/16 v0, 0x6a

    .line 592
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    if-eqz p2, :cond_0

    .line 595
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->pushUpTransitionInFragment(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addFingerprintPreferences()V
    .locals 0

    return-void
.end method

.method protected deleteAllFingerprint()V
    .locals 0

    return-void
.end method

.method protected destroyChallage(Z)V
    .locals 9

    .line 531
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "destroyChallage "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PasscodeSettings"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFingerprint:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_6

    .line 533
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-nez v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v7, "fingerprint"

    invoke-virtual {v0, v7}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_1
    xor-int/lit8 v0, p1, 0x1

    if-eqz p1, :cond_4

    .line 543
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->isKeyGuardSecure()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 544
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 545
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v6

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 548
    iget-wide v7, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChallenge:J

    cmp-long v0, v7, v4

    if-eqz v0, :cond_6

    .line 549
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    .line 550
    iput-object v3, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mToken:[B

    .line 551
    iput-wide v4, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChallenge:J

    if-gez v0, :cond_5

    .line 553
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "postEnroll Fingerprint failed: result = "

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 555
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "postEnroll Fingerprint result = "

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFace:Z

    if-eqz v0, :cond_d

    .line 561
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_8

    .line 562
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-nez v0, :cond_7

    .line 563
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 565
    :cond_7
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v7, "face"

    invoke-virtual {v0, v7}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    :cond_8
    xor-int/lit8 v0, p1, 0x1

    if-eqz p1, :cond_b

    .line 570
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->isKeyGuardSecure()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 571
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 572
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    :goto_3
    move v0, v6

    :cond_b
    :goto_4
    if-eqz v0, :cond_d

    .line 575
    iget-wide v6, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceChallenge:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_d

    .line 576
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager;->revokeChallenge()I

    move-result p1

    .line 577
    iput-object v3, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceToken:[B

    .line 578
    iput-wide v4, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceChallenge:J

    if-gez p1, :cond_c

    .line 581
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "postEnroll mFace failed: result = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 583
    :cond_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "postEnroll mFace result = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_d
    :goto_5
    iput-object v3, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserPassword:[B

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xc4

    return v0
.end method

.method public hasFingerprints(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "fingerprint_preferences"

    .line 600
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "fingerprint_count"

    .line 602
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method protected initChallage(Z)V
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 492
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez p1, :cond_1

    .line 493
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-nez p1, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 496
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v2, "fingerprint"

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 499
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChallenge:J

    .line 500
    iget-wide v2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChallenge:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_3

    .line 501
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mIsDeleteOldFingerSuccuss:Z

    if-eqz p1, :cond_3

    .line 502
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$1;-><init>(Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 511
    :cond_2
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChallenge:J

    .line 514
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFace:Z

    const-string v2, "PasscodeSettings"

    if-eqz p1, :cond_6

    .line 515
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez p1, :cond_5

    .line 516
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-nez p1, :cond_4

    .line 517
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 519
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v0, "face"

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 521
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceChallenge:J

    .line 522
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mFaceChallenge afeter preEnroll = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceChallenge:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 524
    :cond_6
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceChallenge:J

    .line 527
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "initChallage mFaceChallenge = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceChallenge:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mChallenge "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChallenge:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isFingerprintUnlockEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "fingerprint_preferences"

    .line 423
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "fingerprint_unlock"

    .line 425
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fingerprint_count"

    .line 426
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected launchChooseOrConfirmLock(Z)V
    .locals 3

    .line 357
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->initChallage(Z)V

    const/4 v0, 0x0

    const/16 v1, 0x65

    const-string v2, ""

    .line 359
    invoke-virtual {p0, v1, v0, v0, v2}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    .line 361
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launchChooseOrConfirmLock launched = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PasscodeSettings"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 365
    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    const-string v2, "minimum_quality"

    .line 366
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "hide_disabled_prefs"

    .line 368
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "has_challenge"

    .line 370
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 371
    iget p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    iget-wide v1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChallenge:J

    const-string p1, "challenge"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 374
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFace:Z

    const-string v1, "has_face_challenge"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 375
    iget-wide v1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceChallenge:J

    const-string p1, "face_challenge"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p1, 0x66

    .line 376
    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 7

    .line 382
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChooseLockSettingsHelper:Lcom/coloros/settings/feature/password/a;

    .line 1194
    iput-object p4, p2, Lcom/coloros/settings/feature/password/a;->d:Ljava/lang/String;

    const/4 p3, 0x1

    .line 2057
    iput-boolean p3, p2, Lcom/coloros/settings/feature/password/a;->e:Z

    .line 385
    iget-boolean p4, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFingerprint:Z

    if-nez p4, :cond_1

    iget-boolean p4, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFace:Z

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 389
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    invoke-virtual {p2, p1, p4, p3, v0}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    goto :goto_1

    .line 386
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChooseLockSettingsHelper:Lcom/coloros/settings/feature/password/a;

    iget-wide v2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChallenge:J

    iget-wide v4, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceChallenge:J

    iget v6, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/coloros/settings/feature/password/a;->a(IJJI)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_2

    .line 393
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->pushUpTransitionInFragment(Landroid/app/Activity;)V

    .line 395
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "launchConfirmationActivity "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mSupportFingerprint "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFingerprint:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PasscodeSettings"

    invoke-static {p3, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PasscodeSettings"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x65

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/16 v4, 0x66

    if-eq p1, v4, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    .line 275
    :cond_1
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->setPassword(Landroid/content/Intent;)V

    :cond_2
    if-ne p1, v0, :cond_3

    if-eq p2, v3, :cond_3

    .line 279
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->finish()V

    return-void

    :cond_3
    const/16 v0, 0x6a

    const-string v4, "oppo_key_guard_switch_value"

    const/4 v5, 0x0

    if-ne p1, v0, :cond_5

    .line 284
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v0, p2}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->setResult(I)V

    if-eqz p3, :cond_4

    .line 288
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->setPassword(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v0, "EXTRA_KEY_PASSWORD data is null "

    .line 290
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "onActivityResult KEY_GUARD_SWITCH: "

    .line 293
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x6b

    if-ne p1, v0, :cond_6

    .line 295
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_7

    if-ne p2, v3, :cond_7

    .line 298
    iput-boolean v2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mPasswordConfirmed:Z

    .line 299
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mDefaultPasswordType:I

    const-string v2, "change"

    invoke-virtual {p0, v0, v5, v5, v2}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->updateUnlockMethodAndFinish(IZZLjava/lang/String;)V

    goto :goto_1

    :cond_7
    const/16 v0, 0x69

    if-ne p1, v0, :cond_8

    if-ne p2, v3, :cond_8

    const-string v0, "close"

    .line 304
    invoke-virtual {p0, v5, v5, v2, v0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->updateUnlockMethodAndFinish(IZZLjava/lang/String;)V

    goto :goto_1

    :cond_8
    const/16 v0, 0x64

    if-ne p1, v0, :cond_9

    if-ne p2, v3, :cond_9

    .line 307
    iput-boolean v2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mPasswordConfirmed:Z

    .line 308
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->setPassword(Landroid/content/Intent;)V

    goto :goto_1

    :cond_9
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_a

    if-ne p2, v3, :cond_a

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.oppo.safe.privacy.PrivacyProtectTopActivity"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "PrivacyProtectTopActivity NotFoundException"

    .line 314
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_b

    .line 319
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 320
    invoke-virtual {v2, v0}, Landroid/app/Activity;->setResult(I)V

    .line 321
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    const-string v0, "resultCode == RESULT_TIMEOUT finish"

    .line 322
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_b
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 150
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 153
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    .line 154
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFace:Z

    .line 155
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFingerprint:Z

    .line 156
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getResetFingerData()V

    .line 157
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFingerprint:Z

    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFace:Z

    invoke-direct {p0, v0, v1, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->initPassCode(ZZLandroid/os/Bundle;)V

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mSupportFingerprint = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFingerprint:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mSupportFace = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFace:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PasscodeSettings"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 169
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->onDestroy()V

    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->destroyChallage(Z)V

    .line 171
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 172
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 178
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "encrypt_app"

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 180
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectState(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/16 v0, 0x3e9

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->launchEncryptComfirmationActivity(Landroid/app/Activity;IZ)V

    goto :goto_0

    .line 185
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oppo.safe.action.FIRST_USE_PROTECT_ACTIVITY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "PasscodeSettings"

    const-string v0, "PrivacyProtectTopActivity NotFoundException"

    .line 189
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_1
    const-string v0, "encrypt_file"

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 194
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/4 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FileEncryptUtils;->launchFileManagerIntent(Landroid/app/Activity;IZ)V

    :cond_2
    return v2
.end method

.method public onResume()V
    .locals 0

    .line 256
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->onResume()V

    .line 258
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->doResume()V

    return-void
.end method

.method protected setPassword(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_3

    const-string v0, "password"

    .line 340
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserPassword:[B

    const-string v0, "hw_auth_token"

    .line 341
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mToken:[B

    const-string v0, "face_hw_auth__token"

    .line 343
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceToken:[B

    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mToken "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mToken:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mUserPassword "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserPassword:[B

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mFaceToken "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceToken:[B

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PasscodeSettings"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method updateUnlockMethodAndFinish(IZZLjava/lang/String;)V
    .locals 15

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 431
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mPasswordConfirmed = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mPasswordConfirmed:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PasscodeSettings"

    invoke-static {v3, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x80000

    if-ge v2, v1, :cond_9

    const/high16 v1, 0x20000

    const-string v14, "start_type"

    if-lt v2, v1, :cond_3

    .line 436
    iget-object v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    iget v4, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    invoke-virtual {v1, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 440
    :goto_0
    iget-object v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 441
    iget-boolean v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFingerprint:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFace:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 445
    :cond_1
    iget-object v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v5, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mRequirePassword:Z

    iget-object v6, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserPassword:[B

    iget v7, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    move/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPasswordIntent(Landroid/content/Context;IIIZ[BI)Landroid/content/Intent;

    move-result-object v1

    goto :goto_2

    .line 442
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v5, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mRequirePassword:Z

    iget-object v6, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserPassword:[B

    iget-wide v7, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChallenge:J

    iget-wide v9, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceChallenge:J

    iget v11, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    move/from16 v2, p1

    invoke-static/range {v1 .. v11}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPasswordIntent(Landroid/content/Context;IIIZ[BJJI)Landroid/content/Intent;

    move-result-object v1

    .line 448
    :goto_2
    invoke-virtual {v1, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    invoke-direct {p0, v1, v12}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->startPasswordActivity(Landroid/content/Intent;Z)V

    return-void

    :cond_3
    const/high16 v1, 0x10000

    if-ne v2, v1, :cond_6

    const-string v1, "onPreferenceChange.PASSWORD_QUALITY_SOMETHING"

    .line 451
    invoke-static {v3, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-boolean v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFingerprint:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFace:Z

    if-eqz v1, :cond_4

    goto :goto_3

    .line 456
    :cond_4
    iget-object v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v2, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mRequirePassword:Z

    iget-object v3, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserPassword:[B

    iget v4, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    invoke-static {v1, v2, v3, v4}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPatternIntent(Landroid/content/Context;Z[BI)Landroid/content/Intent;

    move-result-object v1

    goto :goto_4

    .line 453
    :cond_5
    :goto_3
    iget-object v2, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v3, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mRequirePassword:Z

    iget-object v4, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserPassword:[B

    iget-wide v5, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChallenge:J

    iget-wide v7, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFaceChallenge:J

    iget v9, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    invoke-static/range {v2 .. v9}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPatternIntent(Landroid/content/Context;Z[BJJI)Landroid/content/Intent;

    move-result-object v1

    .line 459
    :goto_4
    invoke-virtual {v1, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    invoke-direct {p0, v1, v12}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->startPasswordActivity(Landroid/content/Intent;Z)V

    return-void

    :cond_6
    if-nez v2, :cond_8

    const-string v1, "onPreferenceChange.PASSWORD_QUALITY_UNSPECIFIED"

    .line 462
    invoke-static {v3, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    iget-object v3, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserPassword:[B

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZ[B)V

    .line 464
    iget-object v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChooseLockSettingsHelper:Lcom/coloros/settings/feature/password/a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/password/a;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserPassword:[B

    iget v3, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock([BI)Z

    .line 465
    iget-object v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChooseLockSettingsHelper:Lcom/coloros/settings/feature/password/a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/password/a;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v2, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mUserId:I

    move/from16 v3, p2

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 466
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->deleteAllFingerprint()V

    const/4 v1, -0x1

    .line 468
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->setResult(I)V

    .line 470
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 471
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 472
    invoke-virtual {v1, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from_fingerprint_ui"

    .line 473
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 474
    iget-object v2, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 476
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "skip_swipe_screen"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    iget-boolean v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFingerprint:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mSupportFace:Z

    if-eqz v1, :cond_9

    .line 479
    :cond_7
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->destroyChallage(Z)V

    return-void

    .line 482
    :cond_8
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->finish()V

    :cond_9
    return-void
.end method
