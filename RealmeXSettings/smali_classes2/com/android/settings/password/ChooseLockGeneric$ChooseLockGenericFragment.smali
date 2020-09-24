.class public Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;,
        Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private C:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field protected a:Z

.field protected b:Z

.field private c:Lcom/coloros/settings/feature/password/a;

.field private d:Landroid/app/admin/DevicePolicyManager;

.field private e:Z

.field private f:J

.field private g:Z

.field private h:J

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:[B

.field private p:Lcom/android/internal/widget/LockPatternUtils;

.field private q:Landroid/hardware/fingerprint/FingerprintManager;

.field private r:Landroid/hardware/face/FaceManager;

.field private s:I

.field private t:Lcom/android/settings/password/d;

.field private u:Z

.field private v:Landroid/os/UserManager;

.field private w:Lcom/android/settings/password/a;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 171
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->e:Z

    .line 237
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g:Z

    .line 239
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->i:Z

    .line 240
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->j:Z

    .line 244
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->n:Z

    .line 251
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->u:Z

    const/4 v1, 0x0

    .line 264
    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->y:Ljava/lang/String;

    .line 272
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a:Z

    .line 278
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->A:I

    return p0
.end method

.method private a(III)Landroid/content/Intent;
    .locals 3

    .line 911
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$a;

    .line 912
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$a;-><init>(Landroid/content/Context;)V

    .line 913
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPassword$a;->a(I)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->x:I

    .line 7169
    iget-object v1, p1, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string v2, "requested_min_complexity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 915
    invoke-virtual {p1, p2, p3}, Lcom/android/settings/password/ChooseLockPassword$a;->a(II)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a:Z

    .line 8159
    iget-object p3, p1, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string v0, "for_fingerprint"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 916
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b:Z

    .line 8164
    iget-object p3, p1, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string v0, "for_face"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 917
    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    .line 918
    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockPassword$a;->b(I)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p1

    .line 919
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->e:Z

    if-eqz p2, :cond_0

    .line 920
    iget-wide p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->f:J

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/password/ChooseLockPassword$a;->a(J)Lcom/android/settings/password/ChooseLockPassword$a;

    .line 922
    :cond_0
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->o:[B

    if-eqz p2, :cond_1

    .line 923
    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockPassword$a;->a([B)Lcom/android/settings/password/ChooseLockPassword$a;

    .line 8174
    :cond_1
    iget-object p1, p1, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    return-object p1
.end method

.method private a(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V
    .locals 7

    .line 1078
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->q:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->q:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->q:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 1083
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 1084
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->q:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V

    invoke-virtual {v1, v0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void

    .line 1107
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V

    return-void

    .line 1114
    :cond_1
    invoke-virtual {p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;->a()V

    return-void
.end method

.method private synthetic a(ILjava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1451
    iget-object p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c:Lcom/coloros/settings/feature/password/a;

    const p4, 0x7f120c9a

    .line 1452
    invoke-virtual {p0, p4}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    const/4 v1, 0x1

    .line 1451
    invoke-virtual {p3, p1, p4, v1, v0}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1454
    invoke-direct {p0, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private a(IZ)V
    .locals 3

    .line 993
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->i:Z

    if-eqz v0, :cond_3

    .line 997
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->w:Lcom/android/settings/password/a;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/a;->a(I)I

    move-result p1

    .line 998
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->d(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1001
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->u:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->e:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x67

    .line 1002
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/high16 p1, 0x2000000

    .line 1006
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1007
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 1008
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 1016
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->o:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZ[B)V

    .line 1018
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c:Lcom/coloros/settings/feature/password/a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/a;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->o:[B

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock([BI)Z

    .line 1019
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c:Lcom/coloros/settings/feature/password/a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/a;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 1020
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 1021
    iget p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c(I)V

    .line 1022
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g()Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->sendUnspecifiedBroadcast(Z)V

    return-void

    .line 1024
    :cond_2
    iget p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c(I)V

    return-void

    .line 994
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Tried to update password without confirming it"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1460
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->f()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1458
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->f()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)V
    .locals 5

    .line 16412
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "ChooseLockGenericFragment"

    const-string p1, "showDeleteFingerprintsDialog context is null"

    .line 16414
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16417
    :cond_0
    invoke-static {v0}, Lcom/coloros/settings/custom/b;->b(Landroid/content/Context;)Z

    move-result v1

    .line 16418
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120751

    .line 16419
    invoke-virtual {v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f120f4d

    .line 16420
    new-instance v4, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$5;

    invoke-direct {v4, p0, v1, p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$5;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f120fb4

    .line 16429
    new-instance v3, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$6;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$6;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;ZLjava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 16435
    invoke-virtual {v2}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 16436
    new-instance v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$7;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 16443
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 619
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 623
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g()Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isFDE()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ChooseLockGenericFragment"

    const-string v3, "Ignoring PASSWORD_TYPE_KEY because device is not file encrypted"

    .line 628
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "lockscreen.password_type"

    .line 624
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_1
    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    const-string p1, "minimum_quality"

    .line 633
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 634
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->w:Lcom/android/settings/password/a;

    invoke-virtual {v1, p1}, Lcom/android/settings/password/a;->a(I)I

    const-string p1, "hide_disabled_prefs"

    .line 635
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 637
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 639
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 642
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g()Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isEnable()Z

    const p1, 0x7f1500cb

    .line 653
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 654
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->e()V

    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 659
    invoke-direct {p0, v1, v3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const v0, 0x16058

    .line 1292
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1293
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g()Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1297
    :cond_0
    invoke-static {p1}, Lcom/android/settings/password/f;->a(Ljava/lang/String;)Lcom/android/settings/password/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1299
    sget-object v2, Lcom/android/settings/password/ChooseLockGeneric$1;->a:[I

    invoke-virtual {v0}, Lcom/android/settings/password/f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1311
    :pswitch_0
    iget p1, v0, Lcom/android/settings/password/f;->g:I

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(I)V

    return v3

    .line 1302
    :pswitch_1
    iget p1, v0, Lcom/android/settings/password/f;->g:I

    sget-object v2, Lcom/android/settings/password/f;->a:Lcom/android/settings/password/f;

    if-ne v0, v2, :cond_1

    move v1, v3

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    return v3

    .line 1315
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Encountered unknown unlock method to set: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChooseLockGenericFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    return p0
.end method

.method private b(I)V
    .locals 4

    const-string v0, "device_policy"

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    .line 480
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 481
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iput p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->k:I

    .line 485
    iput-boolean v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->l:Z

    .line 488
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->d(I)Landroid/content/Intent;

    move-result-object v0

    .line 489
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->n:Z

    const-string v2, "for_cred_req_boot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 496
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    .line 497
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v2

    .line 498
    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 500
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a:Z

    const-string v1, "for_fingerprint"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 502
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b:Z

    const-string v1, "for_face"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 503
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g()Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->u:Z

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->e:Z

    const/16 v3, 0x67

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->startActivityForResult(Landroid/content/Intent;ZZI)V

    return-void

    .line 507
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->n:Z

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    .line 513
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->m:Z

    .line 3975
    invoke-direct {p0, p1, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    return-void
.end method

.method private b(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V
    .locals 6

    .line 1120
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->q:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->q:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->v:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1126
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->v:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 1127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1129
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1130
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1131
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1132
    iget p1, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 1139
    invoke-virtual {p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;->a()V

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->d(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)V
    .locals 3

    .line 16447
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1207fa

    .line 16448
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 16449
    new-instance v1, Lcom/android/settings/password/-$$Lambda$ChooseLockGeneric$ChooseLockGenericFragment$1BnfUubtuvP6powssgIgZi_c4YU;

    const/16 v2, 0x69

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/password/-$$Lambda$ChooseLockGeneric$ChooseLockGenericFragment$1BnfUubtuvP6powssgIgZi_c4YU;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;ILjava/lang/String;)V

    const p1, 0x7f120f57

    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 16457
    new-instance p1, Lcom/android/settings/password/-$$Lambda$ChooseLockGeneric$ChooseLockGenericFragment$YzEOZ1c088UPDQVU9bNCLdMfjmM;

    invoke-direct {p1, p0}, Lcom/android/settings/password/-$$Lambda$ChooseLockGeneric$ChooseLockGenericFragment$YzEOZ1c088UPDQVU9bNCLdMfjmM;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V

    const v1, 0x7f120491

    invoke-virtual {v0, v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 16459
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 16460
    new-instance v0, Lcom/android/settings/password/-$$Lambda$ChooseLockGeneric$ChooseLockGenericFragment$YZs8TcfcqG5QDrnr6iWeXZppO3k;

    invoke-direct {v0, p0}, Lcom/android/settings/password/-$$Lambda$ChooseLockGeneric$ChooseLockGenericFragment$YZs8TcfcqG5QDrnr6iWeXZppO3k;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 16461
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "unlock_set_off"

    .line 1322
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 9975
    invoke-direct {p0, v2, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    goto :goto_0

    :cond_0
    const-string v0, "unlock_set_none"

    .line 1325
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10975
    invoke-direct {p0, v2, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    goto :goto_0

    :cond_1
    const-string v0, "unlock_set_managed"

    .line 1328
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p1, 0x80000

    .line 1329
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(I)V

    goto :goto_0

    :cond_2
    const-string v0, "unlock_set_pattern"

    .line 1330
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p1, 0x10000

    .line 1331
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(I)V

    goto :goto_0

    :cond_3
    const-string v0, "unlock_set_pin"

    .line 1333
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 p1, 0x20000

    .line 1334
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(I)V

    goto :goto_0

    :cond_4
    const-string v0, "unlock_set_password"

    .line 1336
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 p1, 0x40000

    .line 1337
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(I)V

    :goto_0
    return v1

    .line 1340
    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Encountered unknown unlock method to set: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChooseLockGenericFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic c(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/coloros/settings/feature/password/a;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c:Lcom/coloros/settings/feature/password/a;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    .line 1029
    new-instance v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;B)V

    .line 1030
    invoke-direct {p0, p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V

    .line 1031
    invoke-direct {p0, p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V

    return-void
.end method

.method private c(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V
    .locals 5

    .line 1145
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->r:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1146
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->r:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1147
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->r:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->setActiveUser(I)V

    .line 1148
    new-instance v0, Landroid/hardware/face/Face;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 1149
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/q;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/q;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1150
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->r:Landroid/hardware/face/FaceManager;

    invoke-virtual {v1, p1}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1151
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1152
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    .line 1155
    :cond_1
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->r:Landroid/hardware/face/FaceManager;

    new-instance v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V

    invoke-virtual {v1, v0, p1, v2}, Landroid/hardware/face/FaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    return-void

    .line 1172
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->d(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V

    return-void

    .line 1175
    :cond_3
    invoke-virtual {p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;->b()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "unlock_set_off"

    .line 1466
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1467
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f120e83

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1468
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 11975
    invoke-direct {p0, v2, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    goto :goto_0

    :cond_0
    const-string v0, "unlock_set_none"

    .line 1471
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12975
    invoke-direct {p0, v2, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    goto :goto_0

    :cond_1
    const-string v0, "unlock_set_pattern"

    .line 1474
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p1, 0x10000

    .line 13975
    invoke-direct {p0, p1, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    goto :goto_0

    :cond_2
    const-string v0, "unlock_set_pin"

    .line 1477
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p1, 0x20000

    .line 14975
    invoke-direct {p0, p1, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    goto :goto_0

    :cond_3
    const-string v0, "unlock_set_password"

    .line 1480
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/high16 p1, 0x40000

    .line 15975
    invoke-direct {p0, p1, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1
.end method

.method private d(I)Landroid/content/Intent;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v2, p1

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 1038
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const/4 v1, 0x0

    const-string v3, "change_title_for_fingerprint"

    .line 1039
    invoke-virtual {v15, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    const-string v3, "change_title_for_face"

    .line 1040
    invoke-virtual {v15, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    const-string v1, "change_head_type"

    const/4 v3, 0x1

    .line 1041
    invoke-virtual {v15, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const-string v1, "start_type"

    .line 1042
    invoke-virtual {v15, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/4 v1, 0x0

    const/high16 v3, 0x80000

    if-lt v2, v3, :cond_0

    move/from16 v29, v14

    move-object/from16 v30, v15

    goto/16 :goto_1

    :cond_0
    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_3

    .line 1047
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->d:Landroid/app/admin/DevicePolicyManager;

    iget v4, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-virtual {v3, v1, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1051
    :goto_0
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->d:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 1052
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g()Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1054
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g()Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    move-result-object v1

    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->m:Z

    iget-object v6, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->o:[B

    iget-boolean v7, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->e:Z

    iget-wide v8, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->f:J

    iget-boolean v10, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g:Z

    iget-wide v11, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->h:J

    iget v13, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    move/from16 v2, p1

    move/from16 v29, v14

    move/from16 v14, v26

    move-object/from16 v30, v15

    move/from16 v15, v27

    move-object/from16 v16, v28

    invoke-virtual/range {v1 .. v16}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->getLockPasswordIntent(IIIZ[BZJZJIZILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    :cond_2
    move/from16 v29, v14

    move-object/from16 v30, v15

    .line 1058
    invoke-direct {v0, v2, v3, v4}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(III)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    :cond_3
    move/from16 v29, v14

    move-object/from16 v30, v15

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_5

    .line 1061
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g()Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1063
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g()Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    move-result-object v16

    iget-boolean v1, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->m:Z

    iget-object v2, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->o:[B

    iget-boolean v3, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->e:Z

    iget-wide v4, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->f:J

    iget-boolean v6, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g:Z

    iget-wide v7, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->h:J

    iget v9, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-wide/from16 v20, v4

    move/from16 v22, v6

    move-wide/from16 v23, v7

    move/from16 v25, v9

    invoke-virtual/range {v16 .. v28}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->getLockPatternIntent(Z[BZJZJIZILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 1067
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->d()Landroid/content/Intent;

    move-result-object v1

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 1071
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g()Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    move-result-object v2

    move/from16 v4, v29

    move-object/from16 v3, v30

    invoke-virtual {v2, v1, v3, v4}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->putExtraData(Landroid/content/Intent;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    :cond_6
    return-object v1
.end method

.method private d(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V
    .locals 6

    .line 1182
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->r:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->r:Landroid/hardware/face/FaceManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->setActiveUser(I)V

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->v:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1188
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->v:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 1189
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1191
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1192
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1193
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1194
    iget p1, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 1201
    invoke-virtual {p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;->b()V

    :cond_3
    return-void
.end method

.method static synthetic d(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->f()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private e()V
    .locals 2

    const-string v0, "lock_screen_password_state"

    .line 1347
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->B:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string v0, "change_password"

    .line 1348
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->C:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 1349
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->f()V

    .line 1350
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->B:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1378
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->C:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    new-instance v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$4;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private f()V
    .locals 5

    .line 1393
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c:Lcom/coloros/settings/feature/password/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/a;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1397
    :cond_0
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 1398
    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    .line 1399
    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 1400
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "storedQuality="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isLockScreenDisabled="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSecure="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ChooseLockGenericFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->B:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->C:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1406
    :goto_0
    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 1407
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->C:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private g()Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;
    .locals 1

    .line 1551
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez v0, :cond_0

    .line 1552
    const-class v0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 1553
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {v0, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast v0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    return-object v0
.end method

.method public static synthetic lambda$1BnfUubtuvP6powssgIgZi_c4YU(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;ILjava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(ILjava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$YZs8TcfcqG5QDrnr6iWeXZppO3k(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$YzEOZ1c088UPDQVU9bNCLdMfjmM(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 595
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 945
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/EncryptionInterstitial;->a(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method final a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 975
    invoke-direct {p0, p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;",
            ">;"
        }
    .end annotation

    .line 419
    const-class v0, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    return-object v0
.end method

.method protected c()V
    .locals 2

    .line 423
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0061

    .line 424
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setHeaderView(I)V

    .line 425
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->u:Z

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getHeaderView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v0

    const v1, 0x7f0a029c

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1209ee

    .line 427
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 429
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0d0060

    .line 430
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setHeaderView(I)V

    .line 431
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->u:Z

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getHeaderView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v0

    const v1, 0x7f0a0281

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120986

    .line 433
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method protected d()Landroid/content/Intent;
    .locals 4

    .line 929
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$a;

    .line 930
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$a;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a:Z

    .line 9136
    iget-object v2, v0, Lcom/android/settings/password/ChooseLockPattern$a;->a:Landroid/content/Intent;

    const-string v3, "for_fingerprint"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 931
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b:Z

    .line 9141
    iget-object v2, v0, Lcom/android/settings/password/ChooseLockPattern$a;->a:Landroid/content/Intent;

    const-string v3, "for_face"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 932
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    .line 933
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$a;->a(I)Lcom/android/settings/password/ChooseLockPattern$a;

    move-result-object v0

    .line 934
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->e:Z

    if-eqz v1, :cond_0

    .line 935
    iget-wide v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockPattern$a;->a(J)Lcom/android/settings/password/ChooseLockPattern$a;

    .line 937
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->o:[B

    if-eqz v1, :cond_1

    .line 938
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$a;->a([B)Lcom/android/settings/password/ChooseLockPattern$a;

    .line 9146
    :cond_1
    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$a;->a:Landroid/content/Intent;

    return-object v0
.end method

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
    .locals 5

    .line 521
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    .line 522
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->j:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v3, 0x64

    if-ne p1, v3, :cond_2

    if-ne p2, v2, :cond_2

    .line 524
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->i:Z

    if-eqz p3, :cond_0

    const-string p2, "password"

    .line 526
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->o:[B

    .line 530
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->n:Z

    if-eqz p2, :cond_f

    .line 531
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->o:[B

    if-eqz p2, :cond_1

    array-length p2, p2

    if-eqz p2, :cond_1

    .line 532
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    .line 533
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    .line 532
    invoke-direct {p0, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(I)V

    goto/16 :goto_3

    .line 535
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_3

    :cond_2
    const/16 v3, 0x66

    if-eq p1, v3, :cond_c

    const/16 v3, 0x65

    if-ne p1, v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0x67

    if-ne p1, v3, :cond_5

    if-ne p2, v1, :cond_5

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p3, :cond_4

    .line 557
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 560
    :cond_4
    iget p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_3

    :cond_5
    const/16 v4, 0x68

    if-ne p1, v4, :cond_7

    if-eqz p2, :cond_f

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-ne p2, v1, :cond_6

    move p2, v2

    :cond_6
    invoke-virtual {v0, p2, p3}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_3

    :cond_7
    const/16 p3, 0x1f5

    if-ne p1, p3, :cond_8

    return-void

    :cond_8
    if-ne p1, v3, :cond_9

    if-ne p2, v2, :cond_9

    .line 574
    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->A:I

    .line 4975
    invoke-direct {p0, p2, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    goto :goto_3

    :cond_9
    if-ne p1, v4, :cond_a

    if-ne p2, v2, :cond_a

    .line 5975
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    goto :goto_3

    :cond_a
    const/16 p3, 0x69

    if-ne p1, p3, :cond_b

    if-ne p2, v2, :cond_b

    .line 6975
    invoke-direct {p0, v0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(IZ)V

    goto :goto_3

    .line 586
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 587
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_3

    :cond_c
    :goto_1
    if-nez p2, :cond_e

    .line 540
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->n:Z

    if-eqz v1, :cond_d

    goto :goto_2

    .line 547
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v1, "lockscreen.password_type"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v2, :cond_f

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0, p3}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_3

    .line 541
    :cond_e
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 542
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :cond_f
    :goto_3
    if-nez p1, :cond_10

    .line 589
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->n:Z

    if-eqz p1, :cond_10

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :cond_10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 287
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 289
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g()Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    move-result-object v1

    invoke-static {v0}, Lcom/android/settings/m;->g(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 289
    :goto_0
    invoke-virtual {v1, v2}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->shouldProvisioned(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "ChooseLockGenericFragment"

    const-string v1, "Refusing to start because device is not provisioned"

    .line 291
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->q:Landroid/hardware/fingerprint/FingerprintManager;

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/m;->j(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->r:Landroid/hardware/face/FaceManager;

    const-string v1, "device_policy"

    .line 299
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->d:Landroid/app/admin/DevicePolicyManager;

    .line 300
    new-instance v1, Lcom/coloros/settings/feature/password/a;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coloros/settings/feature/password/a;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c:Lcom/coloros/settings/feature/password/a;

    .line 301
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    const-string v1, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    if-nez v1, :cond_3

    .line 303
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->u:Z

    .line 306
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v1}, Lcom/coloros/b/a;->a(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "confirm_credentials"

    .line 311
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    instance-of v5, v5, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    const-string v6, "password"

    if-eqz v5, :cond_4

    xor-int/2addr v1, v3

    .line 313
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->i:Z

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->o:[B

    .line 317
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g()Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->onCreate()V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "has_challenge"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->e:Z

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-wide/16 v7, 0x0

    const-string v5, "challenge"

    invoke-virtual {v1, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->f:J

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getDefaultPasswordType(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->A:I

    .line 325
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x30001

    .line 326
    iput v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->A:I

    .line 328
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "has_face_challenge"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->g:Z

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "face_challenge"

    invoke-virtual {v1, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->h:J

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "for_fingerprint"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a:Z

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "for_face"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b:Z

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "requested_min_complexity"

    .line 339
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->x:I

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "caller_app_name"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->y:Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "is_calling_app_admin"

    .line 343
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->z:Z

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "for_cred_req_boot"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v4

    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->n:Z

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->v:Landroid/os/UserManager;

    if-eqz p1, :cond_7

    const-string v1, "password_confirmed"

    .line 349
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->i:Z

    const-string v1, "waiting_for_confirmation"

    .line 350
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->j:Z

    const-string v1, "encrypt_requested_quality"

    .line 351
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->k:I

    const-string v1, "encrypt_requested_disabled"

    .line 352
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->l:Z

    .line 354
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->o:[B

    if-nez v1, :cond_7

    .line 355
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->o:[B

    .line 365
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 364
    invoke-static {v1, v5, v6, v7}, Lcom/android/settings/m;->a(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    .line 369
    new-instance v1, Lcom/android/settings/password/a;

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    iget v7, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->x:I

    iget-object v8, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/android/settings/password/a;-><init>(Landroid/content/Context;IILcom/android/internal/widget/LockPatternUtils;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->w:Lcom/android/settings/password/a;

    .line 371
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    .line 373
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120c73

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 377
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Lcom/android/settings/password/d;->a()Lcom/android/settings/password/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->t:Lcom/android/settings/password/d;

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "other_lock"

    .line 381
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 382
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->i:Z

    .line 385
    :cond_9
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->i:Z

    if-eqz v1, :cond_b

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    move v3, v4

    .line 386
    :goto_4
    invoke-direct {p0, v3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(Z)V

    .line 387
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->n:Z

    if-eqz p1, :cond_11

    .line 388
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(I)V

    goto :goto_9

    .line 391
    :cond_b
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->j:Z

    if-nez v1, :cond_11

    .line 392
    new-instance v1, Lcom/coloros/settings/feature/password/a;

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/coloros/settings/feature/password/a;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const-string v2, "start_type"

    .line 395
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2194
    iput-object v0, v1, Lcom/coloros/settings/feature/password/a;->d:Ljava/lang/String;

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    .line 400
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v3

    goto :goto_5

    :cond_c
    move v0, v4

    :goto_5
    if-eqz v0, :cond_d

    .line 401
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->u:Z

    if-nez v0, :cond_d

    move v0, v3

    goto :goto_6

    :cond_d
    move v0, v4

    :goto_6
    if-nez v0, :cond_f

    const/16 v0, 0x64

    const v2, 0x7f12177e

    .line 404
    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    .line 403
    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/CharSequence;ZI)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    .line 408
    :cond_e
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->j:Z

    goto :goto_9

    .line 405
    :cond_f
    :goto_7
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->i:Z

    if-eqz p1, :cond_10

    goto :goto_8

    :cond_10
    move v3, v4

    .line 406
    :goto_8
    invoke-direct {p0, v3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(Z)V

    .line 411
    :cond_11
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1207
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1212
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0}, Lcom/coloros/b/a;->a(Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 440
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "unlock_set_off"

    .line 2287
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "unlock_set_none"

    .line 2288
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_12

    .line 442
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3222
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f121770

    goto :goto_1

    :cond_1
    const v0, 0x7f12176f

    .line 3229
    :goto_1
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->q:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3230
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->q:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-virtual {v1, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    .line 3234
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    .line 3235
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->p:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

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

    .line 2494
    :goto_2
    invoke-static {v0, v1, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->a(IILjava/lang/String;)Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object p1

    .line 2496
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "frp_warning_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v2

    :cond_12
    const-string v0, "unlock_skip_fingerprint"

    .line 447
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "unlock_skip_face"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3

    .line 464
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 448
    :cond_14
    :goto_3
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->s:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->i:Z

    xor-int/2addr v0, v2

    const-string v1, "confirm_credentials"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->x:I

    const-string v1, "requested_min_complexity"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->y:Ljava/lang/String;

    const-string v1, "caller_app_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->o:[B

    if-eqz v0, :cond_15

    const-string v1, "password"

    .line 458
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_15
    const/16 v0, 0x68

    .line 461
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 606
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 608
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->i:Z

    const-string v1, "password_confirmed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 609
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->j:Z

    const-string v1, "waiting_for_confirmation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 610
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->k:I

    const-string v1, "encrypt_requested_quality"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->l:Z

    const-string v1, "encrypt_requested_disabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 612
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->o:[B

    if-eqz v0, :cond_0

    const-string v1, "password"

    .line 613
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method
