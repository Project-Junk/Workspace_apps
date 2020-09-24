.class public final Lcom/coloros/settings/privacy/a/j;
.super Ljava/lang/Object;
.source "ScreenLockResetController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/privacy/a/j$b;,
        Lcom/coloros/settings/privacy/a/j$a;
    }
.end annotation


# instance fields
.field public a:I

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/coloros/settings/privacy/a/j;->b:Landroid/content/Context;

    const/4 p1, 0x2

    .line 71
    iput p1, p0, Lcom/coloros/settings/privacy/a/j;->a:I

    return-void
.end method

.method private static a(I)I
    .locals 2

    const/4 v0, 0x2

    if-eqz p0, :cond_3

    const/high16 v1, 0x10000

    if-eq p0, v1, :cond_2

    const/high16 v1, 0x20000

    if-eq p0, v1, :cond_4

    const/high16 v1, 0x30000

    if-eq p0, v1, :cond_1

    const/high16 v1, 0x40000

    if-eq p0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method private a()Z
    .locals 4

    const-string v0, "ScreenLockResetController"

    .line 76
    new-instance v1, Lcom/coloros/settings/privacy/a/d;

    sget-object v2, Lcom/coloros/settings/privacy/a/f;->f:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v1, v2}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 77
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v3, p0, Lcom/coloros/settings/privacy/a/j;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 78
    invoke-virtual {v1}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object v1

    .line 80
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object v1

    .line 81
    invoke-static {v1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object v1

    .line 82
    sget-object v2, Lcom/coloros/settings/privacy/a/f;->f:Lcom/coloros/settings/privacy/a/f;

    invoke-static {v1, v2}, Lcom/coloros/settings/privacy/a/j;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 86
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getScreenLockInfo e = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 88
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, " isScreenLockGetInfoSuccess = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;[BI)Z
    .locals 4

    const-string v0, "ScreenLockResetController"

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 355
    :try_start_0
    array-length v3, p2

    if-lez v3, :cond_3

    const-string v3, "user"

    .line 356
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 357
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    .line 358
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p0, :cond_3

    .line 360
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const/high16 v1, 0x10000

    if-ne p0, v1, :cond_2

    .line 362
    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object p0

    .line 363
    invoke-virtual {p1, p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;I)Z

    move-result v1

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword([BI)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 374
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "isCheckSuccess error = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 376
    :cond_3
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "isCheckSuccess = "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v1
.end method

.method public static a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z
    .locals 5

    .line 319
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isMethodPasswordExecuteSuccess methodType = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenLockResetController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "isMethodPasswordExecuteSuccess resultSummary is null"

    .line 321
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "isMethodPasswordExecuteSuccess methodType is null"

    .line 325
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 3171
    :cond_1
    iget-object v2, p0, Lcom/coloros/settings/privacy/a/i$b;->a:Lcom/coloros/settings/privacy/a/f;

    if-nez v2, :cond_2

    const-string p0, "isMethodPasswordExecuteSuccess resultMethodType is null"

    .line 330
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 4044
    :cond_2
    iget v3, v2, Lcom/coloros/settings/privacy/a/f;->j:I

    .line 5044
    iget v4, p1, Lcom/coloros/settings/privacy/a/f;->j:I

    if-eq v3, v4, :cond_3

    .line 334
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "isMethodPasswordExecuteSuccess resultMethodType = "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", methodType = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5175
    :cond_3
    iget-boolean p0, p0, Lcom/coloros/settings/privacy/a/i$b;->b:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const-string p0, "isMethodPasswordExecuteSuccess isExeSuccess = false"

    .line 341
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final a([BILjava/lang/String;)V
    .locals 4

    .line 260
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    const-string v1, "ScreenLockResetController"

    if-eqz v0, :cond_0

    const-string p1, "modifyPasswordInTeeByChallenge only main user need do this"

    .line 261
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 264
    array-length v0, p1

    const/16 v2, 0x40

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 268
    :cond_1
    new-instance v0, Lcom/coloros/settings/privacy/a/d;

    sget-object v2, Lcom/coloros/settings/privacy/a/f;->d:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v0, v2}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 269
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v3, p0, Lcom/coloros/settings/privacy/a/j;->a:I

    invoke-virtual {v0, v2, v3}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 270
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->g:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v0, v2, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 271
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->h:Lcom/coloros/settings/privacy/a/e;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 272
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->k:Lcom/coloros/settings/privacy/a/e;

    invoke-static {p2}, Lcom/coloros/settings/privacy/a/j;->a(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 273
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->i:Lcom/coloros/settings/privacy/a/e;

    invoke-static {p3}, Lcom/coloros/settings/privacy/a/k;->b(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 274
    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    .line 276
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    .line 277
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    .line 278
    sget-object p2, Lcom/coloros/settings/privacy/a/f;->d:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/j;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 279
    sget-object p2, Lcom/coloros/settings/privacy/a/e;->j:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object p1

    .line 2234
    iget-object p1, p1, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 281
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "modifyPasswordInTeeByChallenge succeed"

    .line 282
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 287
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "modifyPasswordInTeeByChallenge e = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "modifyPasswordInTeeByChallenge fail"

    .line 289
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "modifyPasswordInTeeByChallenge challenge null"

    .line 265
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a([BLcom/coloros/settings/privacy/a/j$a;)V
    .locals 6

    .line 93
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    const-string v1, "ScreenLockResetController"

    if-eqz v0, :cond_0

    const-string p1, "checkToken only main user need do this"

    .line 94
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 97
    iget v3, p0, Lcom/coloros/settings/privacy/a/j;->a:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/privacy/a/j;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    new-instance v3, Lcom/coloros/settings/privacy/a/d;

    sget-object v4, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v3, v4}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 106
    sget-object v4, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v5, p0, Lcom/coloros/settings/privacy/a/j;->a:I

    invoke-virtual {v3, v4, v5}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 107
    sget-object v4, Lcom/coloros/settings/privacy/a/e;->e:Lcom/coloros/settings/privacy/a/e;

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 108
    sget-object v4, Lcom/coloros/settings/privacy/a/e;->f:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v3, v4, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 109
    invoke-virtual {v3}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    .line 111
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    const-string v3, "processCmdV2 ok"

    .line 112
    invoke-static {v1, v3}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    const-string v3, "RpmbResultParser.parse ok"

    .line 114
    invoke-static {v1, v3}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v3, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, v3}, Lcom/coloros/settings/privacy/a/j;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    sget-object v3, Lcom/coloros/settings/privacy/a/e;->g:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p1, v3}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object p1

    const-string v3, "getResultParam ok"

    .line 117
    invoke-static {v1, v3}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iget-object p1, p1, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 119
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "checkToken succeed"

    .line 120
    invoke-static {v1, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 122
    invoke-interface {p2, v3, p1}, Lcom/coloros/settings/privacy/a/j$a;->a(Z[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 128
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "checkToken e = "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "checkToken fail"

    .line 130
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-interface {p2, v2, v0}, Lcom/coloros/settings/privacy/a/j$a;->a(Z[B)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p1, "checkToken Illegal"

    .line 98
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {p2, v2, v0}, Lcom/coloros/settings/privacy/a/j$a;->a(Z[B)V

    return-void
.end method
