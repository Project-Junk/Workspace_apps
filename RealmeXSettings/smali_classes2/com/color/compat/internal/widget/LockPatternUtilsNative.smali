.class public Lcom/color/compat/internal/widget/LockPatternUtilsNative;
.super Ljava/lang/Object;
.source "LockPatternUtilsNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative;
    }
.end annotation


# static fields
.field public static MIN_LOCK_PATTERN_SIZE:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation
.end field

.field public static PASSWORD_TYPE_KEY:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsNative"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x4

    const-string v2, "lockscreen.password_type"

    if-eqz v0, :cond_0

    .line 44
    :try_start_1
    sput-object v2, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->PASSWORD_TYPE_KEY:Ljava/lang/String;

    .line 45
    sput v1, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->MIN_LOCK_PATTERN_SIZE:I

    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    sput-object v2, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->PASSWORD_TYPE_KEY:Ljava/lang/String;

    .line 48
    sput v1, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->MIN_LOCK_PATTERN_SIZE:I

    return-void

    .line 50
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockPatternUtilsNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    return-void

    .line 70
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void

    .line 73
    :cond_1
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockPatternUtilsNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearLock([BI)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, p1, p2, v0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->clearLock([BIZ)Z

    move-result p1

    return p1
.end method

.method public clearLock([BIZ)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 197
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->clearLock([BIZ)Z

    move-result p1

    return p1

    .line 202
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockPatternUtilsNative"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 316
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    return p1

    .line 320
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    return p1

    .line 325
    :cond_1
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 328
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockPatternUtilsNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 106
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0

    .line 107
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockPatternUtilsNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLockPatternUtilsWrapper()Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 87
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockPatternUtilsNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isLockScreenDisabled(I)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 133
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isLockScreenDisabled(I)Z

    move-result p1

    return p1

    .line 135
    :cond_0
    invoke-static {}, Lcom/color/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    return p1

    .line 138
    :cond_1
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockPatternUtilsNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSecure(I)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x16
    .end annotation

    .line 157
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isSecure(I)Z

    move-result p1

    return p1

    .line 161
    :cond_0
    invoke-static {}, Lcom/color/util/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    return p1

    .line 166
    :cond_1
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockPatternUtilsNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 433
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isTactileFeedbackEnabled()Z

    move-result v0

    return v0

    .line 437
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    return v0

    .line 442
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockPatternUtilsNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVisiblePatternEnabled(I)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 405
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isVisiblePatternEnabled(I)Z

    move-result p1

    return p1

    .line 409
    :cond_0
    invoke-static {}, Lcom/color/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result p1

    return p1

    .line 414
    :cond_1
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 417
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockPatternUtilsNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 345
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->reportSuccessfulPasswordAttempt(I)V

    return-void

    .line 350
    :cond_0
    invoke-static {}, Lcom/color/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    return-void

    .line 356
    :cond_1
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 359
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockPatternUtilsNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 231
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p1

    return p1

    .line 236
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockPatternUtilsNative"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveLockPassword([B[BII)Z
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 263
    invoke-virtual/range {v0 .. v5}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->saveLockPassword([B[BIIZ)Z

    move-result p1

    return p1
.end method

.method public saveLockPassword([B[BIIZ)Z
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 289
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_1

    .line 291
    iget-object v1, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->saveLockPassword([B[BIIZ)Z

    move-result p1

    return p1

    .line 295
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 298
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockPatternUtilsNative"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveLockPattern([B[BI)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 502
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->saveLockPattern([B[BI)Z

    move-result p1

    return p1

    .line 507
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 510
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockPatternUtilsNative"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveLockPattern([B[BIZ)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 535
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->saveLockPattern([B[BIZ)Z

    move-result p1

    return p1

    .line 540
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 543
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockPatternUtilsNative"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLockScreenDisabled(ZI)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 465
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->setLockScreenDisabled(ZI)V

    return-void

    .line 470
    :cond_0
    invoke-static {}, Lcom/color/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    return-void

    .line 476
    :cond_1
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 479
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockPatternUtilsNative"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 377
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    return-wide p1

    .line 381
    :cond_0
    invoke-static {}, Lcom/color/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    return-wide p1

    .line 386
    :cond_1
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 389
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockPatternUtilsNative"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyPattern([BJI)[B
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative;
        }
    .end annotation

    .line 565
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->verifyPattern([BJI)[B

    move-result-object p1

    return-object p1

    .line 570
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Lcom/color/inner/internal/widget/LockPatternUtilsWrapper$RequestThrottledExceptionWrapper; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 575
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockPatternUtilsNative"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "have construct LockPatternUtilsNative with context parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 573
    new-instance p2, Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative;-><init>(Lcom/color/inner/internal/widget/LockPatternUtilsWrapper$RequestThrottledExceptionWrapper;Lcom/color/compat/internal/widget/LockPatternUtilsNative$1;)V

    throw p2
.end method
