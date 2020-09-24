.class public Lcom/color/compat/internal/widget/LockPatternCheckerNative;
.super Ljava/lang/Object;
.source "LockPatternCheckerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;,
        Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockPatternCheckerNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPassword(Lcom/color/compat/internal/widget/LockPatternUtilsNative;Ljava/lang/String;ILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/color/compat/internal/widget/LockPatternUtilsNative;",
            "Ljava/lang/String;",
            "I",
            "Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 159
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 161
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/color/compat/internal/widget/LockPatternCheckerNative;->checkPassword(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0

    .line 162
    :cond_1
    invoke-static {}, Lcom/color/util/b;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    new-instance v1, Lcom/color/compat/internal/widget/LockPatternCheckerNative$3;

    invoke-direct {v1, p3}, Lcom/color/compat/internal/widget/LockPatternCheckerNative$3;-><init>(Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)V

    .line 179
    invoke-virtual {p0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-static {p0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0

    .line 181
    :cond_2
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockPatternCheckerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static checkPassword(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/color/compat/internal/widget/LockPatternUtilsNative;",
            "[BI",
            "Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 211
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lcom/color/compat/internal/widget/LockPatternCheckerNative$4;

    invoke-direct {v0, p3}, Lcom/color/compat/internal/widget/LockPatternCheckerNative$4;-><init>(Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)V

    .line 229
    invoke-virtual {p0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->getLockPatternUtilsWrapper()Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    move-result-object p0

    invoke-static {p0, p1, p2, v0}, Lcom/color/inner/internal/widget/LockPatternCheckerWrapper;->checkPassword(Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;[BILcom/color/inner/internal/widget/LockPatternCheckerWrapper$OnCheckCallbackWrapper;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0

    .line 232
    :cond_0
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockPatternCheckerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkPattern(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/color/compat/internal/widget/LockPatternUtilsNative;",
            "[BI",
            "Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 265
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->getLockPatternUtilsWrapper()Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    move-result-object p0

    .line 268
    new-instance v0, Lcom/color/compat/internal/widget/LockPatternCheckerNative$5;

    invoke-direct {v0, p3}, Lcom/color/compat/internal/widget/LockPatternCheckerNative$5;-><init>(Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)V

    .line 286
    invoke-static {p0, p1, p2, v0}, Lcom/color/inner/internal/widget/LockPatternCheckerWrapper;->checkPattern(Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;[BILcom/color/inner/internal/widget/LockPatternCheckerWrapper$OnCheckCallbackWrapper;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0

    .line 287
    :cond_0
    invoke-static {}, Lcom/color/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    .line 289
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object p1

    .line 290
    new-instance v0, Lcom/color/compat/internal/widget/LockPatternCheckerNative$6;

    invoke-direct {v0, p3}, Lcom/color/compat/internal/widget/LockPatternCheckerNative$6;-><init>(Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)V

    .line 307
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0

    .line 309
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 312
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockPatternCheckerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static verifyPattern(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BJILcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)Landroid/os/AsyncTask;
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/color/compat/internal/widget/LockPatternUtilsNative;",
            "[BJI",
            "Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 102
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->getLockPatternUtilsWrapper()Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    move-result-object v1

    .line 105
    new-instance v6, Lcom/color/compat/internal/widget/LockPatternCheckerNative$1;

    invoke-direct {v6, p5}, Lcom/color/compat/internal/widget/LockPatternCheckerNative$1;-><init>(Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)V

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    .line 113
    invoke-static/range {v1 .. v6}, Lcom/color/inner/internal/widget/LockPatternCheckerWrapper;->verifyPattern(Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;[BJILcom/color/inner/internal/widget/LockPatternCheckerWrapper$OnVerifyCallbackWrapper;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0

    .line 114
    :cond_0
    invoke-static {}, Lcom/color/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 116
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v2

    .line 117
    new-instance v6, Lcom/color/compat/internal/widget/LockPatternCheckerNative$2;

    invoke-direct {v6, p5}, Lcom/color/compat/internal/widget/LockPatternCheckerNative$2;-><init>(Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)V

    move-wide v3, p2

    move v5, p4

    .line 125
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0

    .line 127
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockPatternCheckerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static verifyTiedProfileChallenge(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BZJILcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)Landroid/os/AsyncTask;
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/color/compat/internal/widget/LockPatternUtilsNative;",
            "[BZJI",
            "Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 358
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->getLockPatternUtilsWrapper()Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    move-result-object v1

    .line 361
    new-instance v7, Lcom/color/compat/internal/widget/LockPatternCheckerNative$7;

    invoke-direct {v7, p6}, Lcom/color/compat/internal/widget/LockPatternCheckerNative$7;-><init>(Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)V

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    .line 369
    invoke-static/range {v1 .. v7}, Lcom/color/inner/internal/widget/LockPatternCheckerWrapper;->verifyTiedProfileChallenge(Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;[BZJILcom/color/inner/internal/widget/LockPatternCheckerWrapper$OnVerifyCallbackWrapper;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0

    .line 371
    :cond_0
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 374
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockPatternCheckerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
