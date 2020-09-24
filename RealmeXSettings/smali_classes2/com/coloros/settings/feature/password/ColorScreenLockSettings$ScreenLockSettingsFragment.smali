.class public Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;
.super Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;
.source "ColorScreenLockSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ColorScreenLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenLockSettingsFragment"
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private A:Lcom/coloros/settings/privacy/a/g;

.field private B:Z

.field protected a:I

.field protected b:J

.field protected c:J

.field protected d:[B

.field protected e:[B

.field protected f:[B

.field protected g:Landroidx/preference/PreferenceScreen;

.field protected h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

.field protected i:Landroid/hardware/fingerprint/FingerprintManager;

.field protected j:Landroid/hardware/face/FaceManager;

.field protected k:Z

.field protected l:Lcom/coloros/settings/feature/c/a;

.field private m:Lcom/android/internal/widget/LockPatternUtils;

.field private n:Lcom/coloros/settings/feature/password/a;

.field private o:Landroid/app/admin/DevicePolicyManager;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

.field private v:Landroidx/preference/Preference;

.field private w:Landroidx/preference/Preference;

.field private x:Z

.field private y:Z

.field private z:Lcom/coloros/settings/feature/face/FaceSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1142
    new-instance v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$5;

    invoke-direct {v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$5;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 126
    iput-wide v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b:J

    .line 127
    iput-wide v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c:J

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->r:I

    .line 173
    iput v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->s:I

    const/high16 v0, 0x10000

    .line 174
    iput v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->t:I

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->B:Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 369
    new-instance v0, Lcom/coloros/settings/widget/preference/ColorFocusPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v0, v1}, Lcom/coloros/settings/widget/preference/ColorFocusPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->w:Landroidx/preference/Preference;

    .line 370
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->w:Landroidx/preference/Preference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 371
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->w:Landroidx/preference/Preference;

    const-string v1, "close_key_guard"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->w:Landroidx/preference/Preference;

    const v1, 0x7f1204cf

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 373
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->w:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "ScreenLockSettings"

    if-eqz p1, :cond_5

    const-string v1, "password"

    .line 585
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->f:[B

    const-string v1, "hw_auth_token"

    .line 586
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d:[B

    const-string v1, "face_hw_auth__token"

    .line 587
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->e:[B

    .line 588
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d:[B

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->e:[B

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    if-eqz v2, :cond_0

    .line 589
    iput-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d:[B

    .line 591
    :cond_0
    iget-boolean v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->z:Lcom/coloros/settings/feature/face/FaceSettingsController;

    if-eqz v1, :cond_1

    .line 592
    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Landroid/content/Intent;)V

    .line 594
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mToken "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUserPassword "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->f:[B

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFaceToken "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->e:[B

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d:[B

    if-nez p1, :cond_6

    const-string p1, "setPassword getToken = null"

    .line 598
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private a(Landroid/content/Intent;ZZ)V
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p3, 0x6e

    goto :goto_0

    :cond_0
    const/16 p3, 0x6a

    .line 1053
    :goto_0
    invoke-virtual {v0, p1, p3}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    if-eqz p2, :cond_2

    .line 1055
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->pushUpTransitionInFragment(Landroid/app/Activity;)V

    return-void

    :cond_1
    const-string p1, "ScreenLockSettings"

    const-string p2, "startPasswordActivity attached activity is null"

    .line 1058
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;)V
    .locals 4

    .line 7292
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d:[B

    if-nez v0, :cond_0

    const-string v0, "ScreenLockSettings"

    const-string v1, "startEnroll mToken == null finish"

    .line 7293
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7294
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 7298
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    .line 7299
    const-class v1, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7301
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    .line 7302
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "has_fingerprint"

    .line 7303
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7304
    iget v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7305
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 v0, 0x6f

    .line 7307
    invoke-virtual {p0, v2, v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 7308
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onAddFinger(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;Z)V
    .locals 6

    .line 7746
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isFingerprintUnlockEnabled "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenLockSettings"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "close"

    const/16 v1, 0x69

    if-eqz p1, :cond_1

    .line 7861
    invoke-virtual {p0, v1, v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "unlock_set_none"

    .line 7863
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b(Ljava/lang/String;)Z

    :cond_0
    return-void

    .line 7751
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v4, "close"

    move-object v0, p0

    .line 7753
    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(IZZLjava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 1073
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120752

    .line 1074
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120751

    .line 1075
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1076
    new-instance v1, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$3;-><init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;Ljava/lang/String;)V

    const v2, 0x7f12074e

    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1085
    new-instance v1, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$4;-><init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;Ljava/lang/String;)V

    const p1, 0x7f121232

    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1093
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 1095
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 1096
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1098
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 1099
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->showMessageCenter(Landroid/app/Dialog;)V

    return-void
.end method

.method private a(ZZZ)V
    .locals 2

    .line 761
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120519

    .line 762
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const p2, 0x7f1209f6

    .line 764
    invoke-virtual {v0, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const p2, 0x7f1212cc

    .line 767
    invoke-virtual {v0, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const p2, 0x7f1212cb

    .line 769
    invoke-virtual {v0, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    :cond_2
    :goto_0
    const p2, 0x7f120517

    .line 773
    new-instance p3, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$10;

    invoke-direct {p3, p0, p1}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$10;-><init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;Z)V

    invoke-virtual {v0, p2, p3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f120491

    const/4 p2, 0x0

    .line 780
    invoke-virtual {v0, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 781
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 783
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 784
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 786
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 787
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 789
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const v0, 0x7f0600d3

    invoke-virtual {p3, v0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 793
    :cond_3
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->showMessageCenter(Landroid/app/Dialog;)V

    return-void
.end method

.method private a(ZZZI)V
    .locals 1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f120521

    .line 815
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 816
    new-instance p2, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$12;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$12;-><init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;)V

    goto :goto_2

    :cond_1
    :goto_0
    if-nez p3, :cond_2

    const p2, 0x7f1209f4

    .line 802
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    const p2, 0x7f120989

    .line 804
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const p2, 0x7f1209f5

    .line 806
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 808
    :goto_1
    new-instance p3, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$11;

    invoke-direct {p3, p0, p1}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$11;-><init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;Z)V

    move-object p1, p2

    move-object p2, p3

    .line 828
    :goto_2
    new-instance p3, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {p3, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120514

    .line 829
    invoke-virtual {p3, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p3

    .line 830
    invoke-virtual {p3, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f120517

    new-instance v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$13;

    invoke-direct {v0, p0, p4, p2}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$13;-><init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 831
    invoke-virtual {p1, p3, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120491

    const/4 p3, 0x0

    .line 845
    invoke-virtual {p1, p2, p3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 847
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 848
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 850
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 851
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 853
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const p4, 0x7f0600d3

    invoke-virtual {p3, p4}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 857
    :cond_4
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->showMessageCenter(Landroid/app/Dialog;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "fingerprint_preferences"

    .line 868
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "fingerprint_unlock"

    .line 870
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fingerprint_count"

    .line 871
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;Ljava/lang/String;)Z
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->b(Landroid/content/Context;)Z

    move-result v0

    .line 528
    iget-boolean v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120603

    .line 532
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12098b

    .line 533
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1200e7

    new-instance v2, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$9;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$9;-><init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;)V

    .line 534
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 542
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$8;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$8;-><init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;)V

    .line 543
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 551
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 552
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;)V
    .locals 3

    .line 7557
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/coloros/settings/feature/face/FaceSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.USER_ID"

    .line 7558
    iget v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "face_hw_auth__token"

    .line 7559
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->e:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "key_is_from_finger_settings"

    const/4 v2, 0x1

    .line 7560
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "password"

    .line 7561
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->f:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 7562
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/16 v1, 0x70

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "ScreenLockSettings"

    const-string v0, "start face settings error"

    .line 7564
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Z)V
    .locals 9

    .line 991
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "destroyChallage "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenLockSettings"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_6

    .line 993
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_1

    .line 994
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-nez v0, :cond_0

    .line 995
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v7, "fingerprint"

    invoke-virtual {v0, v7}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_1
    xor-int/lit8 v0, p1, 0x1

    if-eqz p1, :cond_4

    .line 1003
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->e()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1004
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1005
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

    .line 1008
    iget-wide v7, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b:J

    cmp-long v0, v7, v4

    if-eqz v0, :cond_6

    .line 1009
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    .line 1010
    iput-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d:[B

    .line 1011
    iput-wide v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b:J

    if-gez v0, :cond_5

    .line 1013
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "postEnroll Fingerprint failed: result = "

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1015
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "postEnroll Fingerprint result = "

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    if-eqz v0, :cond_d

    .line 1021
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_8

    .line 1022
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-nez v0, :cond_7

    .line 1023
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 1025
    :cond_7
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v7, "face"

    invoke-virtual {v0, v7}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    :cond_8
    xor-int/lit8 v0, p1, 0x1

    if-eqz p1, :cond_b

    .line 1030
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->e()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1031
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1032
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

    .line 1035
    iget-wide v6, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_d

    .line 1036
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager;->revokeChallenge()I

    move-result p1

    .line 1037
    iput-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->e:[B

    .line 1038
    iput-wide v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c:J

    if-gez p1, :cond_c

    .line 1041
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "postEnroll mFace failed: result = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1043
    :cond_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "postEnroll mFace result = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_d
    :goto_5
    iput-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->f:[B

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "fingerprint_preferences"

    .line 1063
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "fingerprint_count"

    .line 1065
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "unlock_set_off"

    .line 1104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1105
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const v0, 0x7f120e83

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1106
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v4, "default"

    move-object v0, p0

    .line 1107
    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(IZZLjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "unlock_set_none"

    .line 1109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v6, "close"

    move-object v2, p0

    .line 1110
    invoke-virtual/range {v2 .. v7}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(IZZLjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "unlock_set_pattern"

    .line 1112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v3, 0x10000

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    const-string v6, "open"

    move-object v2, p0

    .line 1113
    invoke-virtual/range {v2 .. v7}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(IZZLjava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "unlock_set_pin"

    .line 1115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v3, 0x20000

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v6, "default"

    move-object v2, p0

    .line 1116
    invoke-virtual/range {v2 .. v7}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(IZZLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "unlock_set_password"

    .line 1118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/high16 v3, 0x40000

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v6, "default"

    move-object v2, p0

    .line 1119
    invoke-virtual/range {v2 .. v7}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(IZZLjava/lang/String;Z)V

    :goto_0
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private c()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->w:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 607
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->u:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a()V

    .line 610
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->u:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->w:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 611
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->v:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 612
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d()V

    .line 613
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->u:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    return p0
.end method

.method private d()V
    .locals 4

    .line 620
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->e()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ScreenLockSettings"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 621
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->v:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->v:Landroidx/preference/Preference;

    const v1, 0x7f120f24

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 625
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->w:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v0, "updateKeyguardPreference A "

    .line 626
    invoke-static {v2, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "updateKeyguardPreference B "

    .line 628
    invoke-static {v2, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oppo_key_guard_switch_value"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 630
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->v:Landroidx/preference/Preference;

    const v2, 0x7f120512

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 631
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->u:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    if-eqz v0, :cond_2

    const-string v2, "open_key_guard"

    .line 633
    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->v:Landroidx/preference/Preference;

    if-ne v0, v2, :cond_2

    .line 634
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->u:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->w:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 637
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_3

    .line 638
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getPasswordTypeFormDmp(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_3

    .line 639
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->v:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 642
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/m;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 643
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->v:Landroidx/preference/Preference;

    if-eqz v1, :cond_4

    .line 644
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    if-nez v0, :cond_5

    .line 646
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->w:Landroidx/preference/Preference;

    if-eqz v0, :cond_5

    .line 647
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method private e()Z
    .locals 3

    .line 652
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 653
    iget v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 654
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isKeyGuardDisable isSecure: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenLockSettings"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private f()V
    .locals 10

    .line 703
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->e()Z

    move-result v0

    const-string v1, "ScreenLockSettings"

    if-nez v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unlock_set_pattern"

    .line 705
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(Z)V

    .line 708
    iget v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->t:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    const-string v6, "open"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(IZZLjava/lang/String;Z)V

    :goto_0
    const-string v0, "switchKeyguard A"

    .line 711
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOpenPassword(Landroid/content/Context;I)V

    return-void

    :cond_1
    const-string v0, "switchKeyguard B"

    .line 714
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 716
    :goto_1
    iget-boolean v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->i()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    .line 717
    :goto_2
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->j()I

    move-result v5

    if-nez v5, :cond_6

    if-eqz v0, :cond_4

    .line 720
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(Landroid/content/Context;)Z

    move-result v0

    .line 721
    invoke-direct {p0, v0, v2, v4}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(ZZZ)V

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    .line 723
    invoke-direct {p0, v3, v3, v2}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(ZZZ)V

    goto :goto_3

    :cond_5
    const-string v0, "isFingerprintUnlockEnabled false"

    .line 725
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x69

    const-string v1, "close"

    .line 726
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const-string v8, "close"

    move-object v4, p0

    .line 728
    invoke-virtual/range {v4 .. v9}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(IZZLjava/lang/String;Z)V

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    .line 735
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(Landroid/content/Context;)Z

    move-result v0

    .line 736
    invoke-direct {p0, v0, v2, v4, v5}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(ZZZI)V

    goto :goto_3

    .line 738
    :cond_7
    invoke-direct {p0, v3, v3, v4, v5}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(ZZZI)V

    .line 741
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onClickPassword(Landroid/content/Context;Z)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 944
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-eqz v0, :cond_0

    .line 945
    iget-boolean v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    if-eqz v1, :cond_1

    .line 946
    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->deleteAllFingerprints(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void

    :cond_0
    const-string v0, "ScreenLockSettings"

    const-string v1, "mActivity is null"

    .line 949
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private h()V
    .locals 1

    .line 954
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->z:Lcom/coloros/settings/feature/face/FaceSettingsController;

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {v0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->b()V

    :cond_0
    return-void
.end method

.method private i()Z
    .locals 2

    .line 1069
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    return v0
.end method

.method private j()I
    .locals 3

    .line 1131
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "codebook_package_num"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method final a(IZZLjava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    .line 876
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mPasswordConfirmed = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->x:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScreenLockSettings"

    invoke-static {v3, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x80000

    if-ge v2, v1, :cond_a

    const/high16 v1, 0x20000

    const-string v15, "start_type"

    if-lt v2, v1, :cond_3

    .line 881
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->o:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    iget v4, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-virtual {v1, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 885
    :goto_0
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->o:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 886
    iget-boolean v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 890
    :cond_1
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v5, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->q:Z

    iget-object v6, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->f:[B

    iget v7, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    move/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPasswordIntent(Landroid/content/Context;IIIZ[BI)Landroid/content/Intent;

    move-result-object v1

    goto :goto_2

    .line 887
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v5, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->q:Z

    iget-object v6, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->f:[B

    iget-wide v7, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b:J

    iget-wide v9, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c:J

    iget v11, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    move/from16 v2, p1

    invoke-static/range {v1 .. v11}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPasswordIntent(Landroid/content/Context;IIIZ[BJJI)Landroid/content/Intent;

    move-result-object v1

    .line 893
    :goto_2
    invoke-virtual {v1, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    invoke-direct {v0, v1, v12, v14}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(Landroid/content/Intent;ZZ)V

    return-void

    :cond_3
    const/high16 v1, 0x10000

    if-ne v2, v1, :cond_6

    const-string v1, "onPreferenceChange.PASSWORD_QUALITY_SOMETHING"

    .line 896
    invoke-static {v3, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-boolean v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    if-eqz v1, :cond_4

    goto :goto_3

    .line 901
    :cond_4
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v2, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->q:Z

    iget-object v3, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->f:[B

    iget v4, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-static {v1, v2, v3, v4}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPatternIntent(Landroid/content/Context;Z[BI)Landroid/content/Intent;

    move-result-object v1

    goto :goto_4

    .line 898
    :cond_5
    :goto_3
    iget-object v2, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v3, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->q:Z

    iget-object v4, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->f:[B

    iget-wide v5, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b:J

    iget-wide v7, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c:J

    iget v9, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-static/range {v2 .. v9}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPatternIntent(Landroid/content/Context;Z[BJJI)Landroid/content/Intent;

    move-result-object v1

    .line 904
    :goto_4
    invoke-virtual {v1, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    invoke-direct {v0, v1, v12, v14}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(Landroid/content/Intent;ZZ)V

    return-void

    :cond_6
    if-nez v2, :cond_9

    .line 907
    new-instance v1, Lcom/coloros/settings/privacy/a/j;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coloros/settings/privacy/a/j;-><init>(Landroid/content/Context;)V

    .line 908
    iget-object v2, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d:[B

    new-instance v4, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$2;

    invoke-direct {v4, v0, v1}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$2;-><init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;Lcom/coloros/settings/privacy/a/j;)V

    invoke-virtual {v1, v2, v4}, Lcom/coloros/settings/privacy/a/j;->a([BLcom/coloros/settings/privacy/a/j$a;)V

    const-string v1, "onPreferenceChange.PASSWORD_QUALITY_UNSPECIFIED"

    .line 917
    invoke-static {v3, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->m:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    iget-object v3, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->f:[B

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZ[B)V

    .line 919
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->n:Lcom/coloros/settings/feature/password/a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/password/a;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->f:[B

    iget v3, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock([BI)Z

    .line 920
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->n:Lcom/coloros/settings/feature/password/a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/password/a;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v2, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    move/from16 v3, p2

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->g()V

    .line 922
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h()V

    const/4 v1, -0x1

    .line 924
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->setResult(I)V

    .line 926
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 927
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 928
    invoke-virtual {v1, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from_fingerprint_ui"

    .line 929
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 930
    iget-object v2, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "skip_swipe_screen"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 933
    new-instance v1, Lcom/coloros/settings/privacy/a/g;

    iget-object v3, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v1, v3, v2}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;B)V

    .line 934
    iget-object v3, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-object v4, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d:[B

    invoke-static {v3, v1, v4}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Lcom/coloros/settings/privacy/a/g;[B)V

    .line 935
    iget-boolean v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    if-eqz v1, :cond_8

    .line 936
    :cond_7
    invoke-direct {v0, v2}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b(Z)V

    :cond_8
    return-void

    .line 939
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->finish()V

    :cond_a
    return-void
.end method

.method protected final a(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 961
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez p1, :cond_1

    .line 962
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-nez p1, :cond_0

    .line 963
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 965
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v2, "fingerprint"

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    .line 967
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b:J

    goto :goto_0

    .line 970
    :cond_2
    iput-wide v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b:J

    .line 973
    :goto_0
    iget-boolean p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    const-string v2, "ScreenLockSettings"

    if-eqz p1, :cond_5

    .line 974
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    if-nez p1, :cond_4

    .line 975
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-nez p1, :cond_3

    .line 976
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 979
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v0, "face"

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    .line 981
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c:J

    .line 982
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mFaceChallenge afeter preEnroll = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 984
    :cond_5
    iput-wide v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c:J

    .line 987
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "initChallage mFaceChallenge = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mChallenge "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)Z
    .locals 7

    .line 684
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->n:Lcom/coloros/settings/feature/password/a;

    .line 6194
    iput-object p2, v0, Lcom/coloros/settings/feature/password/a;->d:Ljava/lang/String;

    const/4 p2, 0x1

    .line 7057
    iput-boolean p2, v0, Lcom/coloros/settings/feature/password/a;->e:Z

    .line 687
    iget-boolean v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 691
    iget v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    goto :goto_1

    .line 688
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->n:Lcom/coloros/settings/feature/password/a;

    iget-wide v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b:J

    iget-wide v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c:J

    iget v6, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/coloros/settings/feature/password/a;->a(IJJI)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_2

    .line 695
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->pushUpTransitionInFragment(Landroid/app/Activity;)V

    .line 697
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "launchConfirmationActivity "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mSupportFingerprint "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ScreenLockSettings"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xc4

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 13

    move-object v6, p0

    move v7, p1

    move v8, p2

    move-object/from16 v9, p3

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "ScreenLockSettings"

    invoke-static {v10, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x65

    const/4 v1, -0x1

    if-ne v7, v0, :cond_0

    if-ne v8, v1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "screenlock_and_password"

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x66

    const/16 v3, 0x69

    const/16 v4, 0x6c

    const/4 v5, 0x1

    if-eq v7, v2, :cond_1

    if-eq v7, v0, :cond_1

    if-eq v7, v4, :cond_1

    if-ne v7, v3, :cond_3

    :cond_1
    if-eq v8, v5, :cond_2

    if-ne v8, v1, :cond_3

    .line 432
    :cond_2
    iget-object v2, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->l:Lcom/coloros/settings/feature/c/a;

    .line 5054
    iput-boolean v5, v2, Lcom/coloros/settings/feature/c/a;->a:Z

    .line 433
    invoke-direct {p0, v9}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(Landroid/content/Intent;)V

    :cond_3
    if-ne v7, v0, :cond_4

    if-eq v8, v1, :cond_4

    .line 437
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->finish()V

    return-void

    :cond_4
    const/16 v0, 0x6a

    const-string v2, "oppo_key_guard_switch_value"

    const/16 v11, 0x6e

    const/4 v12, 0x0

    if-eq v7, v0, :cond_e

    if-ne v7, v11, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x6b

    if-ne v7, v0, :cond_6

    .line 466
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d()V

    goto/16 :goto_2

    :cond_6
    if-ne v7, v4, :cond_7

    if-ne v8, v1, :cond_7

    .line 470
    iput-boolean v5, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->x:Z

    .line 471
    iget v1, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->t:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v4, "change"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(IZZLjava/lang/String;Z)V

    .line 473
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d()V

    goto/16 :goto_2

    :cond_7
    if-ne v7, v3, :cond_8

    if-ne v8, v1, :cond_8

    .line 6139
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "codebook_package_num"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v4, "close"

    move-object v0, p0

    .line 477
    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(IZZLjava/lang/String;Z)V

    .line 479
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d()V

    .line 480
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->finish()V

    goto/16 :goto_2

    :cond_8
    const/16 v0, 0x64

    if-ne v7, v0, :cond_9

    if-ne v8, v1, :cond_9

    .line 482
    iput-boolean v5, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->x:Z

    .line 483
    invoke-direct {p0, v9}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_9
    const/16 v0, 0x3e9

    if-ne v7, v0, :cond_a

    if-ne v8, v1, :cond_a

    .line 485
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.safe.privacy.PrivacyProtectTopActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    const-string v0, "PrivacyProtectTopActivity NotFoundException"

    .line 489
    invoke-static {v10, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const/16 v0, 0x6d

    if-ne v7, v0, :cond_c

    if-ne v8, v1, :cond_c

    if-eqz v9, :cond_b

    .line 492
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->f:[B

    if-nez v0, :cond_b

    .line 493
    invoke-direct {p0, v9}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_b
    const-string v0, "START_FACE data is null "

    .line 495
    invoke-static {v10, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const/16 v0, 0x6f

    if-ne v7, v0, :cond_13

    if-ne v8, v1, :cond_13

    .line 498
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->b(Landroid/content/Context;)Z

    move-result v0

    .line 499
    iget-object v1, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v1

    .line 500
    iget-object v2, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v2}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v2

    .line 501
    iget-object v3, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v3, v5}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->initStatusCombination(Landroid/content/Context;Z)V

    if-nez v2, :cond_13

    if-eqz v1, :cond_13

    if-nez v0, :cond_13

    .line 504
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "popup_face_jump_tip_dialog"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_d

    move v12, v5

    :cond_d
    if-eqz v12, :cond_13

    .line 507
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b()V

    goto/16 :goto_2

    .line 442
    :cond_e
    :goto_0
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v0, p2}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->setResult(I)V

    if-eqz v9, :cond_f

    .line 445
    invoke-direct {p0, v9}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(Landroid/content/Intent;)V

    goto :goto_1

    :cond_f
    const-string v0, "EXTRA_KEY_PASSWORD data is null "

    .line 447
    invoke-static {v10, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "onActivityResult KEY_GUARD_SWITCH: "

    .line 450
    invoke-static {v10, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d()V

    .line 452
    new-instance v0, Lcom/coloros/settings/privacy/a/g;

    iget-object v1, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v0, v1, v12}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;B)V

    if-eqz v9, :cond_12

    .line 454
    iget-boolean v0, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    if-eqz v0, :cond_11

    .line 455
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 5259
    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->hasFingerprints(Landroid/content/Context;)Z

    move-result v1

    .line 5260
    iget-boolean v2, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    if-eqz v2, :cond_13

    if-eqz v1, :cond_10

    goto :goto_2

    .line 5263
    :cond_10
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120604

    .line 5264
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1209f2

    .line 5265
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120491

    new-instance v2, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$6;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$6;-><init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;)V

    .line 5266
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1200e7

    new-instance v2, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$1;-><init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;)V

    .line 5276
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 5285
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 5286
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 5287
    invoke-static {v0}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;)V

    goto :goto_2

    .line 456
    :cond_11
    iget-boolean v0, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    if-eqz v0, :cond_13

    .line 457
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b()V

    goto :goto_2

    .line 460
    :cond_12
    iget-boolean v0, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->B:Z

    if-eqz v0, :cond_13

    if-ne v7, v11, :cond_13

    .line 461
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->finish()V

    return-void

    :cond_13
    :goto_2
    const/4 v0, 0x3

    if-ne v8, v0, :cond_14

    .line 513
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 514
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 515
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const-string v0, "resultCode == RESULT_TIMEOUT finish"

    .line 516
    invoke-static {v10, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_14
    iget-boolean v0, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    if-eqz v0, :cond_15

    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->z:Lcom/coloros/settings/feature/face/FaceSettingsController;

    if-eqz v0, :cond_15

    .line 519
    invoke-virtual {v0, p1, p2, v9}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 520
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityResult intent="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(Landroid/content/Intent;)V

    .line 523
    :cond_15
    invoke-super/range {p0 .. p3}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 188
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 190
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 191
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    .line 192
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "param_setup_screen_lock"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->B:Z

    .line 193
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    .line 194
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    .line 195
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    iget-boolean v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    .line 1317
    iget-object v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v4}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 1318
    invoke-virtual {v5}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v6}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1317
    invoke-static {v4, v5, v6}, Lcom/coloros/settings/utils/az;->a(Landroid/content/Context;Landroidx/appcompat/app/ActionBar;Landroid/content/Intent;)V

    const v4, 0x7f1500b6

    .line 1319
    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->addPreferencesFromResource(I)V

    .line 1320
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->addFingerprintPreferences()V

    .line 1321
    new-instance v4, Lcom/coloros/settings/feature/password/a;

    iget-object v5, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v4, v5}, Lcom/coloros/settings/feature/password/a;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->n:Lcom/coloros/settings/feature/password/a;

    .line 1322
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->m:Lcom/android/internal/widget/LockPatternUtils;

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v6, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v7, "fingerprint"

    invoke-virtual {v6, v7}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v6, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_0

    .line 1327
    :cond_0
    iput-wide v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b:J

    .line 1328
    iget-object v6, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v6}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnterSecureLock(Landroid/content/Context;)V

    :goto_0
    if-eqz v3, :cond_1

    .line 1332
    iget-object v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v5, "face"

    invoke-virtual {v4, v5}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/FaceManager;

    iput-object v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    goto :goto_1

    .line 1334
    :cond_1
    iput-wide v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c:J

    .line 1337
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    iput-object v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->g:Landroidx/preference/PreferenceScreen;

    .line 1338
    new-instance v4, Lcom/coloros/settings/feature/c/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/coloros/settings/feature/c/a;-><init>(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->l:Lcom/coloros/settings/feature/c/a;

    if-eqz v3, :cond_2

    .line 1340
    new-instance v3, Lcom/coloros/settings/feature/face/FaceSettingsController;

    iget-object v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v5, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    iget-object v6, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->e:[B

    iget v7, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/coloros/settings/feature/face/FaceSettingsController;-><init>(Landroid/app/Activity;Z[BI)V

    iput-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->z:Lcom/coloros/settings/feature/face/FaceSettingsController;

    .line 1342
    :cond_2
    new-instance v3, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    iget-object v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->u:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    .line 1344
    iget-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->u:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v3}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    .line 1345
    iget-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->g:Landroidx/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->u:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 1347
    new-instance v3, Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v3, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->v:Landroidx/preference/Preference;

    .line 1348
    iget-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->v:Landroidx/preference/Preference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1349
    iget-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->v:Landroidx/preference/Preference;

    const-string v5, "open_key_guard"

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1350
    iget-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->v:Landroidx/preference/Preference;

    const v5, 0x7f0d00b1

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 1351
    iget-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->v:Landroidx/preference/Preference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1352
    iget-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->u:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    iget-object v5, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->v:Landroidx/preference/Preference;

    invoke-virtual {v3, v5}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 1354
    iget-object v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->m:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1355
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c()V

    const-string v3, "ScreenLockSettings"

    if-nez p1, :cond_4

    .line 1377
    iget-object v5, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v5}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1380
    iget-object v5, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->d:[B

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->p:Z

    if-nez v5, :cond_5

    .line 1381
    iput-boolean v4, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->p:Z

    .line 1382
    iget-object v5, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->l:Lcom/coloros/settings/feature/c/a;

    .line 2054
    iput-boolean v1, v5, Lcom/coloros/settings/feature/c/a;->a:Z

    .line 2659
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(Z)V

    const/16 v5, 0x65

    const-string v6, ""

    .line 2661
    invoke-virtual {p0, v5, v6}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(ILjava/lang/String;)Z

    move-result v5

    .line 2663
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "launchChooseOrConfirmLock launched = "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_5

    .line 2666
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2667
    const-class v6, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.settings"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000

    const-string v7, "minimum_quality"

    .line 2668
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "hide_disabled_prefs"

    .line 2670
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "has_challenge"

    .line 2672
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2673
    iget v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2674
    iget-wide v6, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b:J

    const-string v0, "challenge"

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2676
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    const-string v2, "has_face_challenge"

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2677
    iget-wide v6, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c:J

    const-string v0, "face_challenge"

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v0, 0x66

    .line 2678
    invoke-virtual {p0, v5, v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 1386
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->l:Lcom/coloros/settings/feature/c/a;

    .line 3054
    iput-boolean v4, v0, Lcom/coloros/settings/feature/c/a;->a:Z

    goto :goto_2

    .line 1359
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->l:Lcom/coloros/settings/feature/c/a;

    .line 4054
    iput-boolean v4, v0, Lcom/coloros/settings/feature/c/a;->a:Z

    :cond_5
    :goto_2
    const-string v0, "device_policy"

    .line 1362
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->o:Landroid/app/admin/DevicePolicyManager;

    .line 1363
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getDefaultPasswordType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->t:I

    .line 1365
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->g:Landroidx/preference/PreferenceScreen;

    new-instance v2, Landroidx/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v2, v5}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSupportFingerprint = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->y:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSupportFace = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->k:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSetupScreenLock = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->B:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRecreate = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    move v1, v4

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v0, Lcom/coloros/settings/privacy/a/g;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->A:Lcom/coloros/settings/privacy/a/g;

    .line 200
    invoke-static {}, Lcom/coloros/settings/utils/ak;->a()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_7

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->A:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g$d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_7
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->B:Z

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    .line 204
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->f()V

    :cond_8
    if-eqz p1, :cond_9

    .line 208
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v1, -0x1

    const-string v2, "key_ui_mode"

    .line 209
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_9

    if-eq p1, v0, :cond_9

    .line 210
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 211
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->finish()V

    :cond_9
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 219
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->onDestroy()V

    const/4 v0, 0x1

    .line 220
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->b(Z)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 225
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "open_key_guard"

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "close_key_guard"

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 230
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->f()V

    goto :goto_1

    .line 231
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onModifyPassword(Landroid/content/Context;)V

    const/16 p1, 0x6c

    const-string v0, "change"

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 235
    iget v3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->t:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v6, "change"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(IZZLjava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string v0, "encrypt_app"

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 239
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectState(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 240
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/16 v0, 0x3e9

    invoke-static {p1, v0, v2}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->launchEncryptComfirmationActivity(Landroid/app/Activity;IZ)V

    goto :goto_0

    .line 243
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oppo.safe.action.FIRST_USE_PROTECT_ACTIVITY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ScreenLockSettings"

    const-string v0, "PrivacyProtectTopActivity NotFoundException"

    .line 247
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_5
    const-string v0, "encrypt_file"

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 252
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/4 v0, -0x1

    invoke-static {p1, v0, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FileEncryptUtils;->launchFileManagerIntent(Landroid/app/Activity;IZ)V

    :cond_6
    :goto_1
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 392
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->onResume()V

    .line 4569
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->m:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 4570
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectMode(Landroid/content/Context;)I

    move-result v1

    .line 4571
    iget v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->r:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->s:I

    if-eq v2, v1, :cond_1

    .line 4572
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->c()V

    .line 4574
    :cond_1
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, -0x1

    .line 4575
    iput v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->r:I

    goto :goto_0

    .line 4577
    :cond_2
    iput v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->r:I

    .line 4579
    :goto_0
    iput v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->s:I

    .line 394
    new-instance v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$7;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$7;-><init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;)V

    .line 401
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->l:Lcom/coloros/settings/feature/c/a;

    const-string v2, "open_key_guard"

    invoke-virtual {v1, v2, v0}, Lcom/coloros/settings/feature/c/a;->a(Ljava/lang/String;Lcom/coloros/settings/feature/c/a$a;)V

    .line 402
    invoke-interface {v0}, Lcom/coloros/settings/feature/c/a$a;->onUpdate()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 414
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 415
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
