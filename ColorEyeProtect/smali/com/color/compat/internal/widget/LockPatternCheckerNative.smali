.class public Lcom/color/compat/internal/widget/LockPatternCheckerNative;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPassword(Lcom/color/compat/internal/widget/LockPatternUtilsNative;Ljava/lang/String;ILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;
    .locals 0
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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/color/compat/internal/widget/LockPatternCheckerNative;->checkPassword(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static checkPassword(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;
    .locals 1
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

    new-instance v0, Lcom/color/compat/internal/widget/LockPatternCheckerNative$1;

    invoke-direct {v0, p3}, Lcom/color/compat/internal/widget/LockPatternCheckerNative$1;-><init>(Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)V

    invoke-virtual {p0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->getLockPatternUtils()Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    move-result-object p0

    invoke-static {p0, p1, p2, v0}, Lcom/color/inner/internal/widget/LockPatternCheckerWrapper;->checkPassword(Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;[BILcom/color/inner/internal/widget/LockPatternCheckerWrapper$OnCheckCallbackWrapper;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static checkPattern(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;
    .locals 1
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

    invoke-virtual {p0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->getLockPatternUtils()Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    move-result-object p0

    new-instance v0, Lcom/color/compat/internal/widget/LockPatternCheckerNative$2;

    invoke-direct {v0, p3}, Lcom/color/compat/internal/widget/LockPatternCheckerNative$2;-><init>(Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)V

    invoke-static {p0, p1, p2, v0}, Lcom/color/inner/internal/widget/LockPatternCheckerWrapper;->checkPattern(Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;[BILcom/color/inner/internal/widget/LockPatternCheckerWrapper$OnCheckCallbackWrapper;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static verifyPattern(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BJILcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)Landroid/os/AsyncTask;
    .locals 6
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

    invoke-virtual {p0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->getLockPatternUtils()Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    move-result-object v0

    new-instance v5, Lcom/color/compat/internal/widget/LockPatternCheckerNative$3;

    invoke-direct {v5, p5}, Lcom/color/compat/internal/widget/LockPatternCheckerNative$3;-><init>(Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)V

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/color/inner/internal/widget/LockPatternCheckerWrapper;->verifyPattern(Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;[BJILcom/color/inner/internal/widget/LockPatternCheckerWrapper$OnVerifyCallbackWrapper;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static verifyTiedProfileChallenge(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BZJILcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)Landroid/os/AsyncTask;
    .locals 7
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

    invoke-virtual {p0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->getLockPatternUtils()Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    move-result-object v0

    new-instance v6, Lcom/color/compat/internal/widget/LockPatternCheckerNative$4;

    invoke-direct {v6, p6}, Lcom/color/compat/internal/widget/LockPatternCheckerNative$4;-><init>(Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)V

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/color/inner/internal/widget/LockPatternCheckerWrapper;->verifyTiedProfileChallenge(Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;[BZJILcom/color/inner/internal/widget/LockPatternCheckerWrapper$OnVerifyCallbackWrapper;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method
