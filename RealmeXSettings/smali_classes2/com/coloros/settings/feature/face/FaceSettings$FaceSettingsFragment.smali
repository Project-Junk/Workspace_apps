.class public Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;
.super Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;
.source "FaceSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/FaceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceSettingsFragment"
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:[B

.field private e:[B

.field private f:[B

.field private g:Landroidx/preference/PreferenceScreen;

.field private h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

.field private i:Landroid/hardware/fingerprint/FingerprintManager;

.field private j:Landroid/hardware/face/FaceManager;

.field private k:Z

.field private l:Lcom/coloros/settings/feature/c/a;

.field private m:Lcom/android/internal/widget/LockPatternUtils;

.field private n:Lcom/coloros/settings/feature/password/a;

.field private o:Landroid/app/admin/DevicePolicyManager;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Lcom/coloros/settings/feature/face/FaceSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 647
    new-instance v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$3;

    invoke-direct {v0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$3;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 128
    iput-wide v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->b:J

    .line 129
    iput-wide v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->c:J

    const/4 v0, -0x1

    .line 145
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->r:I

    .line 146
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->s:I

    const/high16 v0, 0x10000

    .line 147
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->t:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;)Lcom/coloros/settings/feature/c/a;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->l:Lcom/coloros/settings/feature/c/a;

    return-object p0
.end method

.method private a(IZLjava/lang/String;)V
    .locals 15

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    .line 472
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mPasswordConfirmed = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->u:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FaceSettings"

    invoke-static {v3, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x80000

    if-ge v2, v1, :cond_9

    const/high16 v1, 0x20000

    const-string v14, "start_type"

    if-lt v2, v1, :cond_3

    .line 476
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->o:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    iget v4, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    invoke-virtual {v1, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 480
    :goto_0
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->o:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 481
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->v:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 485
    :cond_1
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->q:Z

    iget-object v6, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->f:[B

    iget v7, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    move/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPasswordIntent(Landroid/content/Context;IIIZ[BI)Landroid/content/Intent;

    move-result-object v1

    goto :goto_2

    .line 482
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->q:Z

    iget-object v6, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->f:[B

    iget-wide v7, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->b:J

    iget-wide v9, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->c:J

    iget v11, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    move/from16 v2, p1

    invoke-static/range {v1 .. v11}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPasswordIntent(Landroid/content/Context;IIIZ[BJJI)Landroid/content/Intent;

    move-result-object v1

    .line 488
    :goto_2
    invoke-virtual {v1, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    invoke-direct {p0, v1, v12}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a(Landroid/content/Intent;Z)V

    return-void

    :cond_3
    const/high16 v1, 0x10000

    if-ne v2, v1, :cond_6

    const-string v1, "onPreferenceChange.PASSWORD_QUALITY_SOMETHING"

    .line 491
    invoke-static {v3, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->v:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    if-eqz v1, :cond_4

    goto :goto_3

    .line 496
    :cond_4
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->q:Z

    iget-object v3, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->f:[B

    iget v4, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    invoke-static {v1, v2, v3, v4}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPatternIntent(Landroid/content/Context;Z[BI)Landroid/content/Intent;

    move-result-object v1

    goto :goto_4

    .line 493
    :cond_5
    :goto_3
    iget-object v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v3, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->q:Z

    iget-object v4, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->f:[B

    iget-wide v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->b:J

    iget-wide v7, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->c:J

    iget v9, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    invoke-static/range {v2 .. v9}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPatternIntent(Landroid/content/Context;Z[BJJI)Landroid/content/Intent;

    move-result-object v1

    .line 499
    :goto_4
    invoke-virtual {v1, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    invoke-direct {p0, v1, v12}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a(Landroid/content/Intent;Z)V

    return-void

    :cond_6
    if-nez v2, :cond_8

    const-string v1, "onPreferenceChange.PASSWORD_QUALITY_UNSPECIFIED"

    .line 502
    invoke-static {v3, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->m:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    iget-object v3, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->f:[B

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZ[B)V

    .line 504
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->n:Lcom/coloros/settings/feature/password/a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/password/a;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->f:[B

    iget v3, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock([BI)Z

    .line 505
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->n:Lcom/coloros/settings/feature/password/a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/password/a;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 507
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->b()V

    const/4 v1, -0x1

    .line 508
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->setResult(I)V

    .line 510
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v1, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from_fingerprint_ui"

    .line 512
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    iget-object v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 515
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "skip_swipe_screen"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 517
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->v:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    if-eqz v1, :cond_9

    .line 518
    :cond_7
    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a(Z)V

    return-void

    .line 521
    :cond_8
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->finish()V

    :cond_9
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_4

    const-string v0, "password"

    .line 407
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->f:[B

    const-string v0, "hw_auth_token"

    .line 408
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->d:[B

    const-string v0, "face_hw_auth__token"

    .line 410
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->e:[B

    .line 411
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->w:Lcom/coloros/settings/feature/face/FaceSettingsController;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Landroid/content/Intent;)V

    .line 414
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mToken "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->d:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mUserPassword "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->f:[B

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mFaceToken "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->e:[B

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceSettings"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private a(Landroid/content/Intent;Z)V
    .locals 1

    const/16 v0, 0x6a

    .line 634
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    if-eqz p2, :cond_0

    .line 637
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->pushUpTransitionInFragment(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 9

    .line 570
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "destroyChallage "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceSettings"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->v:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_7

    .line 572
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-nez v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v7, "fingerprint"

    invoke-virtual {v0, v7}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_1
    xor-int/lit8 v0, p1, 0x1

    if-eqz p1, :cond_4

    .line 582
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 583
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 584
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
    if-eqz v0, :cond_7

    .line 587
    iget-wide v7, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->b:J

    cmp-long v0, v7, v4

    if-eqz v0, :cond_7

    .line 589
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isTouchSensor(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 590
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v2

    .line 592
    :goto_2
    iput-object v3, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->d:[B

    .line 593
    iput-wide v4, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->b:J

    if-gez v0, :cond_6

    .line 595
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "postEnroll Fingerprint failed: result = "

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 597
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "postEnroll Fingerprint result = "

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    if-eqz v0, :cond_e

    .line 603
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_9

    .line 604
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-nez v0, :cond_8

    .line 605
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 607
    :cond_8
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const-string v7, "face"

    invoke-virtual {v0, v7}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    :cond_9
    xor-int/lit8 v0, p1, 0x1

    if-eqz p1, :cond_c

    .line 612
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 613
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 614
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    :goto_4
    move v0, v6

    :cond_c
    :goto_5
    if-eqz v0, :cond_e

    .line 617
    iget-wide v6, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->c:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_e

    .line 618
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager;->revokeChallenge()I

    move-result p1

    .line 619
    iput-object v3, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->e:[B

    .line 620
    iput-wide v4, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->c:J

    if-gez p1, :cond_d

    .line 623
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "postEnroll mFace failed: result = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 625
    :cond_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "postEnroll mFace result = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_e
    :goto_6
    iput-object v3, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->f:[B

    return-void
.end method

.method private a()Z
    .locals 3

    .line 420
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 421
    iget v1, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 422
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isKeyGuardDisable isSecure: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceSettings"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private b()V
    .locals 1

    .line 530
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->w:Lcom/coloros/settings/feature/face/FaceSettingsController;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFingerprintPreferences()V
    .locals 0

    return-void
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
    .locals 6

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceSettings"

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

    .line 331
    :cond_1
    invoke-direct {p0, p3}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a(Landroid/content/Intent;)V

    .line 332
    iget-object v4, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->l:Lcom/coloros/settings/feature/c/a;

    .line 8054
    iput-boolean v2, v4, Lcom/coloros/settings/feature/c/a;->a:Z

    :cond_2
    if-ne p1, v0, :cond_3

    if-eq p2, v3, :cond_3

    .line 336
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->finish()V

    return-void

    :cond_3
    const/16 v0, 0x6a

    const-string v4, "oppo_key_guard_switch_value"

    const/4 v5, 0x0

    if-ne p1, v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v0, p2}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->setResult(I)V

    if-eqz p3, :cond_4

    .line 343
    invoke-direct {p0, p3}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v0, "EXTRA_KEY_PASSWORD data is null "

    .line 345
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "onActivityResult KEY_GUARD_SWITCH: "

    .line 348
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x6b

    if-ne p1, v0, :cond_6

    .line 350
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_7

    if-ne p2, v3, :cond_7

    .line 353
    iput-boolean v2, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->u:Z

    .line 354
    iget v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->t:I

    const-string v2, "change"

    invoke-direct {p0, v0, v5, v2}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a(IZLjava/lang/String;)V

    goto :goto_1

    :cond_7
    const/16 v0, 0x69

    if-ne p1, v0, :cond_8

    if-ne p2, v3, :cond_8

    const-string v0, "close"

    .line 359
    invoke-direct {p0, v5, v2, v0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a(IZLjava/lang/String;)V

    goto :goto_1

    :cond_8
    const/16 v0, 0x64

    if-ne p1, v0, :cond_9

    if-ne p2, v3, :cond_9

    .line 362
    iput-boolean v2, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->u:Z

    .line 363
    invoke-direct {p0, p3}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a(Landroid/content/Intent;)V

    goto :goto_1

    :cond_9
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_a

    if-ne p2, v3, :cond_a

    .line 365
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.oppo.safe.privacy.PrivacyProtectTopActivity"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "PrivacyProtectTopActivity NotFoundException"

    .line 369
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const/16 v0, 0x6d

    if-ne p1, v0, :cond_c

    if-ne p2, v3, :cond_c

    if-eqz p3, :cond_b

    .line 372
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->f:[B

    if-nez v0, :cond_b

    .line 373
    invoke-direct {p0, p3}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a(Landroid/content/Intent;)V

    goto :goto_1

    :cond_b
    const-string v0, "START_FACE data is null "

    .line 375
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_d

    .line 380
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 381
    invoke-virtual {v2, v0}, Landroid/app/Activity;->setResult(I)V

    .line 382
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    const-string v0, "resultCode == RESULT_TIMEOUT finish"

    .line 383
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_d
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->w:Lcom/coloros/settings/feature/face/FaceSettingsController;

    if-eqz v0, :cond_e

    .line 386
    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 387
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onActivityResult intent="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a(Landroid/content/Intent;)V

    .line 390
    :cond_e
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 155
    invoke-super/range {p0 .. p1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    const/4 v3, -0x1

    const-string v4, "key_ui_mode"

    .line 159
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_0

    if-eq v4, v2, :cond_0

    .line 160
    iget-object v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v2}, Lcom/coloros/settings/utils/q;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->finish()V

    return-void

    .line 165
    :cond_0
    iget-object v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 166
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    .line 167
    iget-object v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v2}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    .line 168
    iget-object v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->v:Z

    .line 169
    new-instance v2, Lcom/coloros/settings/feature/c/a;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/coloros/settings/feature/c/a;-><init>(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Landroid/os/Bundle;)V

    iput-object v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->l:Lcom/coloros/settings/feature/c/a;

    .line 170
    iget-boolean v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->v:Z

    iget-boolean v3, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    .line 1227
    iget-object v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v5}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 1228
    invoke-virtual {v6}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v6

    iget-object v7, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v7}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1227
    invoke-static {v5, v6, v7}, Lcom/coloros/settings/utils/az;->a(Landroid/content/Context;Landroidx/appcompat/app/ActionBar;Landroid/content/Intent;)V

    const v5, 0x7f1500b6

    .line 1229
    invoke-virtual {v0, v5}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->addPreferencesFromResource(I)V

    .line 1230
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->addFingerprintPreferences()V

    .line 1231
    new-instance v5, Lcom/coloros/settings/feature/password/a;

    iget-object v6, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v5, v6}, Lcom/coloros/settings/feature/password/a;-><init>(Landroid/app/Activity;)V

    iput-object v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->n:Lcom/coloros/settings/feature/password/a;

    .line 1232
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->m:Lcom/android/internal/widget/LockPatternUtils;

    const-string v5, "fingerprint"

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_1

    .line 1235
    iget-object v8, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v8, v5}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v8, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_0

    .line 1238
    :cond_1
    iput-wide v6, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->b:J

    .line 1239
    iget-object v8, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v8}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnterSecureLock(Landroid/content/Context;)V

    :goto_0
    const-string v8, "face"

    if-eqz v3, :cond_2

    .line 1243
    iget-object v9, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v9, v8}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/face/FaceManager;

    iput-object v9, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    goto :goto_1

    .line 1245
    :cond_2
    iput-wide v6, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->c:J

    .line 1248
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v9

    iput-object v9, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->g:Landroidx/preference/PreferenceScreen;

    const/4 v9, 0x0

    if-eqz v3, :cond_4

    .line 1250
    new-instance v3, Lcom/coloros/settings/feature/face/FaceSettingsController;

    iget-object v10, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-boolean v11, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->v:Z

    iget-object v12, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->e:[B

    iget v13, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    invoke-direct {v3, v10, v11, v12, v13}, Lcom/coloros/settings/feature/face/FaceSettingsController;-><init>(Landroid/app/Activity;Z[BI)V

    iput-object v3, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->w:Lcom/coloros/settings/feature/face/FaceSettingsController;

    .line 1251
    iget-object v3, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->w:Lcom/coloros/settings/feature/face/FaceSettingsController;

    iget-object v10, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->l:Lcom/coloros/settings/feature/c/a;

    .line 2152
    iget-object v11, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "param_setup_face"

    invoke-virtual {v11, v12, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->o:Z

    .line 2153
    iget-object v11, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v11}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->g:Z

    const v11, 0x7f1500d0

    .line 2154
    invoke-virtual {v0, v11}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->addPreferencesFromResource(I)V

    const-string v11, "face_category"

    .line 2155
    invoke-virtual {v0, v11}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Landroidx/preference/PreferenceCategory;

    iput-object v12, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->k:Landroidx/preference/PreferenceCategory;

    const-string v12, "keyguard_method_category"

    .line 2156
    invoke-virtual {v0, v12}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Landroidx/preference/PreferenceCategory;

    iput-object v12, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->l:Landroidx/preference/PreferenceCategory;

    const-string v12, "face_recognize_type"

    .line 2157
    invoke-virtual {v0, v12}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v12, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->m:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 2158
    iget-object v12, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->m:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v12, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v12, "face_screen_light"

    .line 2160
    invoke-virtual {v0, v12}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v12, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 2161
    iget-object v12, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v12, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v12, "dont_recongnize_while_eyes_closed"

    .line 2162
    invoke-virtual {v0, v12}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v12, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 2163
    iget-object v12, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v12, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v12, "face_usage"

    .line 2164
    invoke-virtual {v0, v12}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v12, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 2166
    sget-boolean v12, Lcom/coloros/settings/a;->a:Z

    if-eqz v12, :cond_3

    invoke-static {}, Lcom/coloros/settings/utils/as;->a()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2167
    new-instance v12, Lcom/color/support/preference/ColorSpannablePreference;

    iget-object v13, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-direct {v12, v13}, Lcom/color/support/preference/ColorSpannablePreference;-><init>(Landroid/content/Context;)V

    const v13, 0x7f0d007f

    .line 2168
    invoke-virtual {v12, v13}, Lcom/color/support/preference/ColorSpannablePreference;->setLayoutResource(I)V

    const-string v13, "face_statement"

    .line 2169
    invoke-virtual {v12, v13}, Lcom/color/support/preference/ColorSpannablePreference;->setKey(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {v12, v9}, Lcom/color/support/preference/ColorSpannablePreference;->setPersistent(Z)V

    .line 2172
    iget-object v13, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const v14, 0x7f1204e1

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2173
    new-instance v14, Landroid/text/SpannableString;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const v7, 0x7f12003a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2174
    new-instance v6, Lcom/color/support/widget/ColorClickableSpan;

    iget-object v7, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-direct {v6, v7}, Lcom/color/support/widget/ColorClickableSpan;-><init>(Landroid/content/Context;)V

    .line 2175
    new-instance v7, Lcom/coloros/settings/feature/face/FaceSettingsController$1;

    invoke-direct {v7, v3}, Lcom/coloros/settings/feature/face/FaceSettingsController$1;-><init>(Lcom/coloros/settings/feature/face/FaceSettingsController;)V

    invoke-virtual {v6, v7}, Lcom/color/support/widget/ColorClickableSpan;->setStatusBarClickListener(Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;)V

    .line 2188
    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v7, v13

    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v13

    const/16 v15, 0x21

    invoke-virtual {v14, v6, v7, v13, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2189
    invoke-virtual {v12, v14}, Lcom/color/support/preference/ColorSpannablePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2190
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 2193
    :cond_3
    iget-object v6, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/face/FaceManager;

    iput-object v6, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->f:Landroid/hardware/face/FaceManager;

    .line 2194
    new-instance v6, Lcom/coloros/settings/feature/face/FaceSettingsController$2;

    invoke-direct {v6, v3, v10, v0}, Lcom/coloros/settings/feature/face/FaceSettingsController$2;-><init>(Lcom/coloros/settings/feature/face/FaceSettingsController;Lcom/coloros/settings/feature/c/a;Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;)V

    iput-object v6, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->n:Lcom/coloros/settings/feature/c/a$a;

    .line 2203
    iget-object v6, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->n:Lcom/coloros/settings/feature/c/a$a;

    invoke-virtual {v10, v11, v6}, Lcom/coloros/settings/feature/c/a;->a(Ljava/lang/String;Lcom/coloros/settings/feature/c/a$a;)V

    .line 2205
    new-instance v6, Lcom/coloros/settings/feature/face/FaceSettingsController$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lcom/coloros/settings/feature/face/FaceSettingsController$a;-><init>(Lcom/coloros/settings/feature/face/FaceSettingsController;Landroid/os/Looper;)V

    iput-object v6, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->d:Lcom/coloros/settings/feature/face/FaceSettingsController$a;

    .line 2206
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "face_main_asyn_looper"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2207
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 2208
    new-instance v7, Lcom/coloros/settings/feature/face/FaceSettingsController$a;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v7, v3, v6}, Lcom/coloros/settings/feature/face/FaceSettingsController$a;-><init>(Lcom/coloros/settings/feature/face/FaceSettingsController;Landroid/os/Looper;)V

    iput-object v7, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->e:Lcom/coloros/settings/feature/face/FaceSettingsController$a;

    .line 2209
    iget-object v6, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v6}, Lcom/coloros/settings/custom/b;->m(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->h:Z

    .line 2210
    iget-boolean v6, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->g:Z

    if-nez v6, :cond_4

    iget-boolean v6, v3, Lcom/coloros/settings/feature/face/FaceSettingsController;->o:Z

    if-eqz v6, :cond_4

    .line 2211
    invoke-virtual {v3}, Lcom/coloros/settings/feature/face/FaceSettingsController;->c()V

    .line 1253
    :cond_4
    iget-object v3, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->m:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    const/4 v7, 0x1

    invoke-virtual {v3, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1254
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "key_is_from_finger_settings"

    .line 1255
    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "FaceSettings"

    if-eqz v10, :cond_5

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1256
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_5
    if-nez v1, :cond_11

    .line 2268
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2269
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->d:[B

    if-nez v1, :cond_11

    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->p:Z

    if-nez v1, :cond_11

    .line 2270
    iput-boolean v7, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->p:Z

    .line 2271
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->l:Lcom/coloros/settings/feature/c/a;

    .line 3054
    iput-boolean v9, v1, Lcom/coloros/settings/feature/c/a;->a:Z

    if-eqz v2, :cond_8

    .line 3537
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_7

    .line 3538
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-nez v1, :cond_6

    .line 3539
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 3541
    :cond_6
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v1, v5}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    .line 3544
    :cond_7
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isTouchSensor(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3545
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->i:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->b:J

    goto :goto_2

    :cond_8
    const-wide/16 v5, 0x0

    .line 3549
    iput-wide v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->b:J

    .line 3552
    :cond_9
    :goto_2
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    if-eqz v1, :cond_c

    .line 3553
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    if-nez v1, :cond_b

    .line 3554
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-nez v1, :cond_a

    .line 3555
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iput-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 3558
    :cond_a
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v1, v8}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceManager;

    iput-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    .line 3560
    :cond_b
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->j:Landroid/hardware/face/FaceManager;

    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->c:J

    .line 3561
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mFaceChallenge afeter preEnroll = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->c:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const-wide/16 v5, 0x0

    .line 3563
    iput-wide v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->c:J

    .line 3566
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "initChallage mFaceChallenge = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->c:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mChallenge "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->b:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4452
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->n:Lcom/coloros/settings/feature/password/a;

    const-string v3, ""

    .line 5194
    iput-object v3, v1, Lcom/coloros/settings/feature/password/a;->d:Ljava/lang/String;

    .line 6057
    iput-boolean v7, v1, Lcom/coloros/settings/feature/password/a;->e:Z

    .line 4455
    iget-boolean v3, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->v:Z

    if-nez v3, :cond_e

    iget-boolean v3, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    const/16 v3, 0x65

    const/4 v5, 0x0

    .line 4459
    iget v6, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    invoke-virtual {v1, v3, v5, v7, v6}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/CharSequence;ZI)Z

    move-result v1

    goto :goto_5

    .line 4456
    :cond_e
    :goto_4
    iget-object v12, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->n:Lcom/coloros/settings/feature/password/a;

    const/16 v13, 0x65

    iget-wide v14, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->b:J

    iget-wide v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->c:J

    iget v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    move-wide/from16 v16, v5

    move/from16 v18, v1

    invoke-virtual/range {v12 .. v18}, Lcom/coloros/settings/feature/password/a;->a(IJJI)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_f

    .line 4463
    iget-object v3, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->pushUpTransitionInFragment(Landroid/app/Activity;)V

    .line 4465
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "launchConfirmationActivity "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mSupportFingerprint "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->v:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3431
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v5, "launchChooseOrConfirmLock launched = "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_11

    .line 3434
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3435
    const-class v3, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.android.settings"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    const-string v5, "minimum_quality"

    .line 3436
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "hide_disabled_prefs"

    .line 3438
    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "has_challenge"

    .line 3440
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3441
    iget v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3442
    iget-wide v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->b:J

    const-string v4, "challenge"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3444
    iget-boolean v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    const-string v3, "has_face_challenge"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3445
    iget-wide v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->c:J

    const-string v4, "face_challenge"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v2, 0x66

    .line 3446
    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    .line 2275
    :cond_10
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->l:Lcom/coloros/settings/feature/c/a;

    .line 7054
    iput-boolean v7, v1, Lcom/coloros/settings/feature/c/a;->a:Z

    :cond_11
    :goto_6
    const-string v1, "device_policy"

    .line 1263
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->o:Landroid/app/admin/DevicePolicyManager;

    .line 1264
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getDefaultPasswordType(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->t:I

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSupportFingerprint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->v:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSupportFace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->onDestroy()V

    const/4 v0, 0x1

    .line 178
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a(Z)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 183
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "encrypt_app"

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 185
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectState(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/16 v0, 0x3e9

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->launchEncryptComfirmationActivity(Landroid/app/Activity;IZ)V

    goto :goto_0

    .line 189
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oppo.safe.action.FIRST_USE_PROTECT_ACTIVITY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "FaceSettings"

    const-string v0, "PrivacyProtectTopActivity NotFoundException"

    .line 193
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_1
    const-string v0, "encrypt_file"

    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 198
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/4 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FileEncryptUtils;->launchFileManagerIntent(Landroid/app/Activity;IZ)V

    :cond_2
    return v2
.end method

.method public onResume()V
    .locals 5

    .line 286
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->onResume()V

    .line 287
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->w:Lcom/coloros/settings/feature/face/FaceSettingsController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 7222
    iput-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceSettingsController;->i:Z

    .line 7223
    invoke-virtual {v0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a()V

    goto :goto_0

    .line 290
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$1;-><init>(Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;)V

    .line 297
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->l:Lcom/coloros/settings/feature/c/a;

    const-string v2, "face_category"

    invoke-virtual {v1, v2, v0}, Lcom/coloros/settings/feature/c/a;->a(Ljava/lang/String;Lcom/coloros/settings/feature/c/a$a;)V

    .line 298
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$2;-><init>(Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;Lcom/coloros/settings/feature/c/a$a;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7394
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->m:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 7395
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectMode(Landroid/content/Context;)I

    move-result v1

    .line 7397
    iget-object v2, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, -0x1

    .line 7398
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->r:I

    goto :goto_1

    .line 7400
    :cond_1
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->r:I

    .line 7402
    :goto_1
    iput v1, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->s:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 316
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 317
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
