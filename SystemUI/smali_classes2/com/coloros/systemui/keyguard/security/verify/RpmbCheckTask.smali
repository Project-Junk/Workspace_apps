.class public Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;
.super Ljava/lang/Object;
.source "RpmbCheckTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "RpmbCheckTask"


# instance fields
.field private mIsPattern:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRequestedQuality:I

.field private mUserId:I

.field private mVerifyEntry:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZILcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mVerifyEntry:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mRequestedQuality:I

    .line 32
    iput-boolean p3, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mIsPattern:Z

    .line 33
    iput p4, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mUserId:I

    .line 34
    iput-object p5, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private verifyCredential(Ljava/lang/String;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    const-string v0, "RpmbCheckTask"

    const/4 v1, 0x0

    .line 63
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 64
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mIsPattern:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    move v5, p1

    :goto_0
    const-wide/16 v6, 0x0

    iget v8, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mUserId:I

    .line 65
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/ILockSettings;->verifyCredential([BIJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyCredential(), responseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object p0

    return-object p0

    :cond_1
    if-eq p1, v2, :cond_2

    return-object v1

    .line 71
    :cond_2
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result p0

    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyCredential(), return null, e="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 84
    :cond_0
    instance-of v1, p1, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

    if-nez v1, :cond_1

    return v0

    .line 85
    :cond_1
    check-cast p1, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

    .line 86
    iget-object v1, p1, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mVerifyEntry:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mVerifyEntry:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mRequestedQuality:I

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mRequestedQuality:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mIsPattern:Z

    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mIsPattern:Z

    if-ne v1, v2, :cond_2

    iget p1, p1, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mUserId:I

    iget p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mUserId:I

    if-ne p1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method isSystemUserTask()Z
    .locals 0

    .line 99
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mUserId:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$null$0$RpmbCheckTask(Z[B)V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkRpmbWhenInput(), checkToken, matched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RpmbCheckTask"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 49
    iget p1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mRequestedQuality:I

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mVerifyEntry:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->modifyPasswordPrivacyByChallenge([BILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$run$1$RpmbCheckTask([BZ[BLjava/lang/String;)V
    .locals 1

    .line 43
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkRpmbWhenInput(), matched="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "RpmbCheckTask"

    invoke-static {v0, p3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mVerifyEntry:Ljava/lang/String;

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 46
    new-instance p2, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$RpmbCheckTask$3SBMpUUEVQWlcW35YZ1f5bd-Sjs;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$RpmbCheckTask$3SBMpUUEVQWlcW35YZ1f5bd-Sjs;-><init>(Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;)V

    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->checkToken([BLcom/coloros/systemui/keyguard/security/verify/RpmbChecker$OnCheckTokenCallback;)V

    goto :goto_0

    :cond_1
    const-string p0, "checkRpmbWhenInput(), checkPassword over."

    .line 53
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    const-string v0, "RpmbCheckTask"

    .line 40
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRpmbWhenInput(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mVerifyEntry:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->verifyCredential(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 42
    new-instance v3, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$RpmbCheckTask$oseaHG8m7hQEMrO36L-UGapOjxI;

    invoke-direct {v3, p0, v1}, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$RpmbCheckTask$oseaHG8m7hQEMrO36L-UGapOjxI;-><init>(Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;[B)V

    invoke-static {v1, v2, v3}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->checkPassword([BZLcom/coloros/systemui/keyguard/security/verify/RpmbChecker$OnCheckPasswordCallback;)V
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRpmbWhenInput(), e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RpmbCheckTask{entry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mVerifyEntry:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mRequestedQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mIsPattern:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
