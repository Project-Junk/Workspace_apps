.class public Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;
.super Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;
.source "EnrollGuideForBootActivity.java"


# static fields
.field private static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x66

.field private static final CONFIRM_REQUEST:I = 0x65

.field private static final KEY_SETTINGS_WAKE_UP_AROUSE:Ljava/lang/String; = "oppo_gesture_wake_up_arouse"

.field private static final START_ENROLL_FINGERPRINT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoEnrollGuideForBoot"


# instance fields
.field private mChallenge:J

.field private mFaceChallenge:J

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFaceToken:[B

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIsStartFaceActivity:Z

.field private mIsStartFingerprintActivity:Z

.field private mNeedEnrollFace:Z

.field private mNeedJumpSmartLock:Z

.field private mOpenFingerprintUnlock:Z

.field private mSupportFingerprint:Z

.field private mToken:[B

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startFingerEnrollOrSmartLock(I)V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 9

    .line 341
    new-instance v0, Lcom/coloros/settings/feature/password/a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/a;-><init>(Landroid/app/Activity;)V

    .line 342
    iget-wide v3, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mChallenge:J

    iget-boolean v5, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedEnrollFace:Z

    iget-wide v6, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceChallenge:J

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mUserId:I

    .line 344
    invoke-static {p0, v1}, Lcom/android/settings/m;->b(Landroid/content/Context;I)I

    move-result v8

    const/16 v1, 0x65

    const/4 v2, 0x1

    .line 342
    invoke-virtual/range {v0 .. v8}, Lcom/coloros/settings/feature/password/a;->a(IZJZJI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->pushUpTransition()V

    .line 348
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "launchChooseOrConfirmLock launched = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoEnrollGuideForBoot"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private postEnroll()V
    .locals 6

    .line 359
    iget-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mChallenge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "OppoEnrollGuideForBoot"

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const-string v0, "fingerprint"

    .line 361
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    const-string v4, "postEnroll"

    .line 365
    invoke-static {v1, v4}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_1

    .line 367
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "postEnroll failed: result = "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_1
    iput-wide v2, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mChallenge:J

    .line 372
    :cond_2
    iget-wide v4, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceChallenge:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    .line 373
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_3

    const-string v0, "face"

    .line 374
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->revokeChallenge()I

    move-result v0

    const-string v4, "postFaceEnroll"

    .line 377
    invoke-static {v1, v4}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_4

    .line 379
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "face postEnroll failed: result = "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_4
    iput-wide v2, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceChallenge:J

    :cond_5
    return-void
.end method

.method private showWakeUpArouseDialog(I)V
    .locals 2

    .line 300
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1218e7

    .line 301
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$4;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$4;-><init>(Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;)V

    .line 302
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$3;-><init>(Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;I)V

    .line 308
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$2;-><init>(Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;)V

    const v1, 0x7f1218e6

    .line 315
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$1;-><init>(Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;)V

    const v1, 0x7f120491

    .line 331
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 337
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private startEnrollGuideActivity(I)V
    .locals 5

    .line 138
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mSupportFingerprint:Z

    const-string v1, "OppoEnrollGuideForBoot"

    if-nez v0, :cond_0

    const-string v0, "donot need face enroll"

    .line 139
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->setResult(I)V

    .line 141
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->finish()V

    return-void

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "hasEnrolledFingerprints"

    .line 145
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 146
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->setResult(I)V

    .line 147
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->finish()V

    return-void

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mToken:[B

    if-nez p1, :cond_2

    const-string p1, "mToken == null finish"

    .line 153
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->finish()V

    return-void

    .line 157
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "startEnrollActivity "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mIsStartFingerprintActivity:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mIsStartFingerprintActivity:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mIsStartFingerprintActivity:Z

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedJumpSmartLock:Z

    const-string v2, "extra_allow_skip_enroll"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mOpenFingerprintUnlock:Z

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    const-string v4, "start_enroll_source"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_boot_register_fingerprint"

    .line 167
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "has_fingerprint"

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 170
    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mOpenFingerprintUnlock:Z

    if-eqz p1, :cond_5

    const/4 v3, 0x4

    :cond_5
    invoke-static {p0, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onAddFinger(Landroid/content/Context;I)V

    return-void
.end method

.method private startFaceEnroll()V
    .locals 7

    .line 194
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mIsStartFaceActivity:Z

    const-string v1, "OppoEnrollGuideForBoot"

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "startFaceEnroll mIsStartFaceActivity "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mIsStartFaceActivity:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mIsStartFaceActivity:Z

    .line 199
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 200
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->e(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0}, Lcom/coloros/settings/utils/q;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 201
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/16 v3, 0xbba

    const-string v4, "start_enroll_source"

    .line 205
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    iget-boolean v4, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mSupportFingerprint:Z

    const/4 v5, 0x0

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedJumpSmartLock:Z

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v0

    :goto_3
    const-string v6, "extra_allow_skip_register"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "extra_boot_register_face"

    .line 208
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    iget v4, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mUserId:I

    const-string v6, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceToken:[B

    const-string v6, "face_hw_auth__token"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "startFaceEnroll mFaceToken "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceToken:[B

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    move v0, v5

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0, v2, v3}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startFaceEnrollOrFinish()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceToken:[B

    const-string v1, "OppoEnrollGuideForBoot"

    if-nez v0, :cond_0

    const-string v0, "mFaceToken == null finish"

    .line 179
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->setResult(I)V

    .line 181
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->finish()V

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hasEnrolledFaces"

    .line 185
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 186
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->setResult(I)V

    .line 187
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->finish()V

    return-void

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startFaceEnroll()V

    return-void
.end method

.method private startFingerActivity(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x10000000

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startFingerEnrollOrSmartLock(I)V
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mSupportFingerprint:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startEnrollGuideActivity(I)V

    return-void

    .line 295
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startSmartLock(I)V

    return-void
.end method

.method private startSmartLock(I)V
    .locals 2

    .line 216
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedJumpSmartLock:Z

    if-eqz v0, :cond_0

    .line 217
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    const-string v1, "fromBootReg"

    .line 218
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.coloros.smartlock"

    const-string v1, "com.coloros.smartlock.MainActivity"

    .line 219
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xbbe

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 222
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->setResult(I)V

    .line 223
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    const-string v0, "OppoEnrollGuideForBoot"

    const-string v1, "finish"

    .line 353
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->postEnroll()V

    .line 355
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoEnrollGuideForBoot"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x66

    if-eq p1, v4, :cond_7

    const/16 v4, 0x65

    if-ne p1, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0xbba

    if-ne p1, v4, :cond_5

    if-ne p2, v0, :cond_1

    .line 259
    invoke-static {p0, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockAppEnabled(Landroid/content/Context;Z)V

    .line 261
    :cond_1
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnLockSwitchOpen(Landroid/content/Context;)Z

    move-result v4

    .line 262
    iget-boolean v5, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedEnrollFace:Z

    if-eqz v5, :cond_2

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v4, :cond_2

    .line 263
    invoke-virtual {v4}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates()Z

    move-result v4

    .line 264
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hasEnrolledFaces = "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    .line 266
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceUnlockEnabled(Landroid/content/Context;)V

    .line 267
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceRemainUnlockEnabled(Landroid/content/Context;)V

    .line 268
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceScreenLightEnabled(Landroid/content/Context;)V

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "oppo_gesture_wake_up_arouse"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v2, v3

    .line 272
    :cond_3
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 273
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->l(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    if-ne p2, v0, :cond_4

    .line 276
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->showWakeUpArouseDialog(I)V

    goto/16 :goto_2

    .line 279
    :cond_4
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startFingerEnrollOrSmartLock(I)V

    goto/16 :goto_2

    :cond_5
    if-ne p1, v3, :cond_6

    .line 282
    invoke-static {p0, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->initStatusCombination(Landroid/content/Context;Z)V

    .line 283
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startSmartLock(I)V

    goto :goto_2

    :cond_6
    const/16 v1, 0xbbe

    if-ne p1, v1, :cond_e

    .line 285
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->setResult(I)V

    .line 286
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->finish()V

    goto :goto_2

    :cond_7
    :goto_0
    if-eq p2, v3, :cond_8

    if-ne p2, v0, :cond_b

    :cond_8
    if-eqz p3, :cond_b

    const-string v0, "hw_auth_token"

    .line 236
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mToken:[B

    const-string v0, "face_hw_auth__token"

    .line 238
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceToken:[B

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult mToken "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mToken:[B

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_1

    :cond_9
    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mFaceToken="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceToken:[B

    if-eqz v4, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_b
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mToken:[B

    if-nez v0, :cond_c

    const-string p1, "mToken == null finish"

    .line 245
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->finish()V

    return-void

    .line 249
    :cond_c
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 250
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedEnrollFace:Z

    if-eqz v0, :cond_d

    .line 251
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startFaceEnrollOrFinish()V

    goto :goto_2

    .line 253
    :cond_d
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startEnrollGuideActivity(I)V

    .line 288
    :cond_e
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 73
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "open_fingerprint_unlock"

    .line 77
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mOpenFingerprintUnlock:Z

    const-string v3, "extra_face_enroll"

    .line 79
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedEnrollFace:Z

    .line 80
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mUserId:I

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    :cond_1
    iput-boolean v2, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedEnrollFace:Z

    .line 85
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedEnrollFace:Z

    if-eqz v0, :cond_3

    const-string v0, "face"

    .line 86
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceChallenge:J

    .line 89
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onCreate mOpenFingerprintUnlock "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mOpenFingerprintUnlock:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mNeedEnrollFace="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedEnrollFace:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mFaceChallenge"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceChallenge:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OppoEnrollGuideForBoot"

    invoke-static {v3, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mSupportFingerprint:Z

    .line 93
    iput-boolean v2, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedJumpSmartLock:Z

    .line 94
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mSupportFingerprint:Z

    if-eqz v0, :cond_4

    const-string v0, "fingerprint"

    .line 95
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mChallenge:J

    .line 100
    :cond_4
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "onCreate FingerprintUtils.isSecure() false"

    .line 101
    invoke-static {v3, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-boolean v7, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedEnrollFace:Z

    if-eqz v7, :cond_5

    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mSupportFingerprint:Z

    if-nez v0, :cond_5

    const/16 v1, 0x66

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 103
    iget v4, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mUserId:I

    iget-wide v8, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceChallenge:J

    move-object v0, p0

    move-wide v5, v8

    invoke-static/range {v0 .. v9}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setPasswordForResult(Landroid/app/Activity;IZZIJZJ)V

    goto :goto_0

    :cond_5
    const/16 v3, 0x66

    .line 107
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mSupportFingerprint:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedEnrollFace:Z

    if-eqz v0, :cond_6

    move v2, v1

    :cond_6
    iget-boolean v4, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mSupportFingerprint:Z

    iget v5, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mUserId:I

    iget-wide v6, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mChallenge:J

    iget-boolean v8, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mNeedEnrollFace:Z

    iget-wide v10, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mFaceChallenge:J

    move-object v0, p0

    move v1, v3

    move v3, v4

    move v4, v5

    move-wide v5, v6

    move v7, v8

    move-wide v8, v10

    invoke-static/range {v0 .. v9}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setPasswordForResult(Landroid/app/Activity;IZZIJZJ)V

    .line 112
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->mOpenFingerprintUnlock:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_1

    :cond_7
    const/4 v0, 0x7

    :goto_1
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOpenPassword(Landroid/content/Context;I)V

    return-void

    :cond_8
    const-string v0, "onCreate FingerprintUtils.isSecure() true"

    .line 116
    invoke-static {v3, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->launchConfirmLock()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->finish()V

    .line 126
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->setIntent(Landroid/content/Intent;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startFingerActivity(Landroid/content/Intent;)V

    return-void
.end method
