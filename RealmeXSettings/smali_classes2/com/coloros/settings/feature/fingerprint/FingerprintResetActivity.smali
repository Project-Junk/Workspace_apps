.class public Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;
.super Landroid/app/Activity;
.source "FingerprintResetActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity$FingerprintHandler;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field private static final REQUEST_CONFIRM_REQUEST:I = 0x65

.field private static final RESULT_FINISHED:I = 0x1

.field public static final RESULT_TIMEOUT:I = 0x3

.field public static final TAG:Ljava/lang/String; = "FingerprintResetActivity"


# instance fields
.field private mAsyncHandler:Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity$FingerprintHandler;

.field protected mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/coloros/settings/feature/password/a;

.field protected mFaceChallenge:J

.field protected mFaceManager:Landroid/hardware/face/FaceManager;

.field protected mFaceToken:[B

.field protected mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mLaunchedConfirm:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mSupportFace:Z

.field private mSupportFingerprint:Z

.field protected mToken:[B

.field protected mUserId:I

.field protected mUserPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mChallenge:J

    .line 51
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceChallenge:J

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;Landroid/os/Message;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private checkPasswordIfneed(ZZ)V
    .locals 1

    .line 105
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 107
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mToken:[B

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mLaunchedConfirm:Z

    if-nez p2, :cond_2

    :cond_0
    const/4 p2, 0x1

    .line 108
    iput-boolean p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mLaunchedConfirm:Z

    .line 109
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->launchConfirmLock(Z)V

    return-void

    :cond_1
    const-string p1, "FingerprintResetActivity"

    const-string p2, "isSecure false"

    .line 112
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintResetActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f2

    if-eq v0, v1, :cond_1

    const/16 p1, 0x3f7

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->finish()V

    :goto_0
    return-void

    .line 290
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->resetFingerStatus(Z)V

    .line 291
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->startPasswordGuide()V

    return-void
.end method

.method private initPassCode(ZZ)V
    .locals 3

    .line 88
    new-instance v0, Lcom/coloros/settings/feature/password/a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mChooseLockSettingsHelper:Lcom/coloros/settings/feature/password/a;

    .line 89
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "fingerprint"

    .line 91
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_0

    .line 93
    :cond_0
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mChallenge:J

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, "face"

    .line 96
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/face/FaceManager;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    goto :goto_1

    .line 98
    :cond_1
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceChallenge:J

    .line 100
    :goto_1
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x1

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mUserId:I

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    const/4 p2, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->checkPasswordIfneed(ZZ)V

    return-void
.end method

.method private isKeyGuardSecure()Z
    .locals 3

    .line 267
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 268
    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 269
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isKeyGuardDisable isSecure: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintResetActivity"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private resetFingerStatus(Z)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 308
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->deleteLastFingerprintCompelete(Landroid/content/Context;)V

    .line 310
    :cond_1
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerprintCount(Landroid/content/Context;I)V

    .line 311
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->deleteAllCompelete(Landroid/content/Context;)V

    return-void
.end method

.method private startPasswordGuide()V
    .locals 2

    .line 315
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->hasFingerprints(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 316
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->startPasswordGuideSettings(Landroid/app/Activity;Z)V

    .line 317
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->finish()V

    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->finish()V

    const-string v0, "FingerprintResetActivity"

    const-string v1, "have old finger data"

    .line 320
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected deleteAllFingerprint()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->MY_USER_ID:I

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mAsyncHandler:Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity$FingerprintHandler;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->deleteAllFingerprints(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void

    .line 207
    :cond_1
    invoke-static {p0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->deleteAllCompelete(Landroid/content/Context;I)V

    .line 208
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->finish()V

    return-void

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->finish()V

    return-void
.end method

.method protected destroyChallage(Z)V
    .locals 8

    .line 227
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "destroyChallage "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintResetActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mSupportFingerprint:Z

    const-string v2, "postEnroll Fingerprint result = "

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const-string v0, "fingerprint"

    .line 230
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    if-eqz p1, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->isKeyGuardSecure()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->isFinishing()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 239
    iget-wide v6, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mChallenge:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    .line 241
    iput-object v3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mToken:[B

    .line 242
    iput-wide v4, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mChallenge:J

    .line 243
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mSupportFace:Z

    if-eqz v0, :cond_5

    .line 247
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_3

    const-string v0, "face"

    .line 248
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    :cond_3
    xor-int/lit8 v0, p1, 0x1

    if-eqz p1, :cond_4

    .line 252
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->isKeyGuardSecure()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 253
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->isFinishing()Z

    move-result v0

    :cond_4
    if-eqz v0, :cond_5

    .line 256
    iget-wide v6, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceChallenge:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_5

    .line 257
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager;->revokeChallenge()I

    move-result p1

    .line 258
    iput-object v3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceToken:[B

    .line 259
    iput-wide v4, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceChallenge:J

    .line 260
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_5
    iput-object v3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mUserPassword:Ljava/lang/String;

    return-void
.end method

.method protected initChallage(Z)V
    .locals 5

    const-wide/16 v0, 0x0

    const-string v2, "FingerprintResetActivity"

    if-eqz p1, :cond_2

    .line 127
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez p1, :cond_0

    const-string p1, "fingerprint"

    .line 128
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mChallenge:J

    .line 133
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "mChallenge after preEnroll = "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mChallenge:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mChallenge:J

    .line 137
    :goto_0
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mSupportFace:Z

    if-eqz p1, :cond_5

    .line 138
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez p1, :cond_3

    const-string p1, "face"

    .line 139
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 141
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p1, :cond_4

    .line 142
    invoke-virtual {p1}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceChallenge:J

    .line 144
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mFaceChallenge after preEnroll = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceChallenge:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_5
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceChallenge:J

    .line 148
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "initChallage mFaceChallenge = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceChallenge:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mChallenge "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mChallenge:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected launchConfirmLock(Z)V
    .locals 2

    .line 117
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->initChallage(Z)V

    const/16 p1, 0x65

    const-string v0, ""

    .line 118
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->launchConfirmationActivity(ILjava/lang/String;)Z

    move-result p1

    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "launchChooseOrConfirmLock launched = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintResetActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->finish()V

    :cond_0
    return-void
.end method

.method public launchConfirmationActivity(ILjava/lang/String;)Z
    .locals 7

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mChooseLockSettingsHelper:Lcom/coloros/settings/feature/password/a;

    .line 1194
    iput-object p2, v0, Lcom/coloros/settings/feature/password/a;->d:Ljava/lang/String;

    const/4 p2, 0x1

    .line 2057
    iput-boolean p2, v0, Lcom/coloros/settings/feature/password/a;->e:Z

    .line 155
    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mSupportFingerprint:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mSupportFace:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 159
    iget v2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mUserId:I

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    goto :goto_1

    .line 156
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mChooseLockSettingsHelper:Lcom/coloros/settings/feature/password/a;

    iget-wide v2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mChallenge:J

    iget-wide v4, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceChallenge:J

    iget v6, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mUserId:I

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/coloros/settings/feature/password/a;->a(IJJI)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_2

    const p2, 0x7f01006b

    const v0, 0x7f010074

    .line 163
    invoke-virtual {p0, p2, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->overridePendingTransition(II)V

    .line 165
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "launchConfirmationActivity "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mSupportFingerprint "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mSupportFingerprint:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mUserId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FingerprintResetActivity"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 172
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintResetActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->finish()V

    return-void

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 177
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->setPassword(Landroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->deleteAllFingerprint()V

    return-void

    :cond_2
    const-string p1, "data is null"

    .line 180
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 73
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mSupportFace:Z

    .line 74
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mSupportFingerprint:Z

    const-string p1, "FingerprintResetActivity"

    .line 75
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->isNeedClearFingerData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resetFinger = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->finish()V

    return-void

    .line 81
    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "finger_service_asyn_looper"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity$FingerprintHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity$FingerprintHandler;-><init>(Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mAsyncHandler:Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity$FingerprintHandler;

    .line 84
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mSupportFingerprint:Z

    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mSupportFace:Z

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->initPassCode(ZZ)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x1

    .line 218
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->destroyChallage(Z)V

    .line 219
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mAsyncHandler:Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity$FingerprintHandler;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity$FingerprintHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mAsyncHandler:Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity$FingerprintHandler;

    :cond_0
    return-void
.end method

.method protected setPassword(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "password"

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mUserPassword:Ljava/lang/String;

    const-string v0, "hw_auth_token"

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mToken:[B

    const-string v0, "face_hw_auth__token"

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceToken:[B

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mToken "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mToken:[B

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

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mUserPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mFaceToken "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->mFaceToken:[B

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FingerprintResetActivity"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
