.class public Lcom/color/compat/internal/widget/LockPatternUtilsNative;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative;
    }
.end annotation


# static fields
.field public static MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsNative"


# instance fields
.field private mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    return-void
.end method


# virtual methods
.method public clearLock([BI)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->clearLock([BIZ)Z

    move-result p0

    return p0
.end method

.method public clearLock([BIZ)Z
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->clearLock([BIZ)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLockPatternUtils()Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;
    .locals 0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    return-object p0
.end method

.method public getLockoutAttemptDeadline(I)J
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->getLockoutAttemptDeadline(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isLockPasswordEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isLockPasswordEnabled(I)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isLockScreenDisabled(Landroid/content/Context;I)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p2}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isLockScreenDisabled(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "LockPatternUtilsNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isSecure(I)Z
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isSecure(I)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isTactileFeedbackEnabled()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVisiblePatternEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isVisiblePatternEnabled(I)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->reportSuccessfulPasswordAttempt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveLockPassword([B[BII)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->saveLockPassword([B[BIIZ)Z

    move-result p0

    return p0
.end method

.method public saveLockPassword([B[BIIZ)Z
    .locals 7

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->saveLockPassword([B[BIIZ)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveLockPattern([B[BI)Z
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->saveLockPattern([B[BI)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveLockPattern([B[BIZ)Z
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->saveLockPattern([B[BIZ)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLockScreenDisabled(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->setLockScreenDisabled(ZI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->setLockoutAttemptDeadline(II)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verifyPattern([BJI)[B
    .locals 1

    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->verifyPattern([BJI)[B

    move-result-object p0
    :try_end_0
    .catch Lcom/color/inner/internal/widget/LockPatternUtilsWrapper$RequestThrottledExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative;-><init>(Lcom/color/inner/internal/widget/LockPatternUtilsWrapper$RequestThrottledExceptionWrapper;Lcom/color/compat/internal/widget/LockPatternUtilsNative$1;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
