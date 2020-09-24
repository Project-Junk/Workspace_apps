.class public final Lcom/coloros/settings/privacy/a/g;
.super Ljava/lang/Object;
.source "PrivacyPasswordController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/privacy/a/g$d;,
        Lcom/coloros/settings/privacy/a/g$c;,
        Lcom/coloros/settings/privacy/a/g$a;,
        Lcom/coloros/settings/privacy/a/g$b;
    }
.end annotation


# instance fields
.field public a:I

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/a/g;->c:Z

    .line 96
    iput-object p1, p0, Lcom/coloros/settings/privacy/a/g;->b:Landroid/content/Context;

    .line 97
    iput v0, p0, Lcom/coloros/settings/privacy/a/g;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    .line 93
    iput-boolean p2, p0, Lcom/coloros/settings/privacy/a/g;->c:Z

    .line 101
    iput-object p1, p0, Lcom/coloros/settings/privacy/a/g;->b:Landroid/content/Context;

    const/4 p1, 0x2

    .line 102
    iput p1, p0, Lcom/coloros/settings/privacy/a/g;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/a/g;->c:Z

    .line 106
    iput-object p1, p0, Lcom/coloros/settings/privacy/a/g;->b:Landroid/content/Context;

    .line 107
    iput p2, p0, Lcom/coloros/settings/privacy/a/g;->a:I

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lcom/coloros/settings/privacy/a/g;->c:Z

    return-void
.end method

.method public static a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z
    .locals 5

    .line 605
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isMethodExecuteSuccess methodType = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyPasswordController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "isMethodExecuteSuccess resultSummary is null"

    .line 607
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "isMethodExecuteSuccess methodType is null"

    .line 611
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 12171
    :cond_1
    iget-object v2, p0, Lcom/coloros/settings/privacy/a/i$b;->a:Lcom/coloros/settings/privacy/a/f;

    if-nez v2, :cond_2

    const-string p0, "isMethodExecuteSuccess resultMethodType is null"

    .line 616
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 13044
    :cond_2
    iget v3, v2, Lcom/coloros/settings/privacy/a/f;->j:I

    .line 14044
    iget v4, p1, Lcom/coloros/settings/privacy/a/f;->j:I

    if-eq v3, v4, :cond_3

    .line 620
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "isMethodExecuteSuccess resultMethodType = "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", methodType = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 14175
    :cond_3
    iget-boolean p0, p0, Lcom/coloros/settings/privacy/a/i$b;->b:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const-string p0, "isMethodExecuteSuccess isExeSuccess = false"

    .line 627
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final a()Lcom/coloros/settings/privacy/a/g$d;
    .locals 5

    const-string v0, "PrivacyPasswordController"

    .line 112
    new-instance v1, Lcom/coloros/settings/privacy/a/g$d;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/a/g$d;-><init>(Lcom/coloros/settings/privacy/a/g;)V

    .line 113
    new-instance v2, Lcom/coloros/settings/privacy/a/d;

    sget-object v3, Lcom/coloros/settings/privacy/a/f;->f:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v2, v3}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 114
    sget-object v3, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v4, p0, Lcom/coloros/settings/privacy/a/g;->a:I

    invoke-virtual {v2, v3, v4}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 115
    sget-object v3, Lcom/coloros/settings/privacy/a/e;->r:Lcom/coloros/settings/privacy/a/e;

    iget-boolean v4, p0, Lcom/coloros/settings/privacy/a/g;->c:Z

    invoke-virtual {v2, v3, v4}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 116
    invoke-virtual {v2}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object v2

    .line 118
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object v2

    .line 119
    invoke-static {v2}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object v2

    .line 120
    sget-object v3, Lcom/coloros/settings/privacy/a/f;->f:Lcom/coloros/settings/privacy/a/f;

    invoke-static {v2, v3}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 121
    sget-object v3, Lcom/coloros/settings/privacy/a/e;->k:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v2, v3}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1234
    iget-object v3, v3, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 124
    invoke-static {v3}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    invoke-static {v3}, Lcom/coloros/settings/privacy/a/k;->a([B)I

    move-result v3

    iput v3, v1, Lcom/coloros/settings/privacy/a/g$d;->a:I

    .line 128
    :cond_0
    sget-object v3, Lcom/coloros/settings/privacy/a/e;->j:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v2, v3}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2234
    iget-object v3, v3, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 130
    iput-object v3, v1, Lcom/coloros/settings/privacy/a/g$d;->b:[B

    .line 132
    :cond_1
    sget-object v3, Lcom/coloros/settings/privacy/a/e;->l:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v2, v3}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3234
    iget-object v3, v3, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 135
    invoke-static {v3}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 136
    invoke-static {v3}, Lcom/coloros/settings/privacy/a/k;->a([B)I

    move-result v3

    iput v3, v1, Lcom/coloros/settings/privacy/a/g$d;->c:I

    .line 139
    :cond_2
    sget-object v3, Lcom/coloros/settings/privacy/a/e;->m:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v2, v3}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4234
    iget-object v3, v3, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 142
    invoke-static {v3}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 143
    invoke-static {v3}, Lcom/coloros/settings/privacy/a/k;->a([B)I

    move-result v3

    iput v3, v1, Lcom/coloros/settings/privacy/a/g$d;->d:I

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PrivacyInfo getLockTime = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/coloros/settings/privacy/a/g$d;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_3
    sget-object v3, Lcom/coloros/settings/privacy/a/e;->r:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v2, v3}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5234
    iget-object v2, v2, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 150
    invoke-static {v2}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v3

    if-nez v3, :cond_4

    .line 151
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, v1, Lcom/coloros/settings/privacy/a/g$d;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 156
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPrivcyIno e = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PrivacyInfo,lockTime = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/coloros/settings/privacy/a/g$d;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/mRetryCountLeft = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/coloros/settings/privacy/a/g$d;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final a(ILjava/lang/String;Lcom/coloros/settings/privacy/a/g$b;[B)V
    .locals 6

    const-string v0, "PrivacyPasswordController"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    .line 313
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "checkPassword type : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 318
    :cond_0
    new-instance p1, Lcom/coloros/settings/privacy/a/d;

    sget-object v2, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {p1, v2}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 319
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v3, p0, Lcom/coloros/settings/privacy/a/g;->a:I

    invoke-virtual {p1, v2, v3}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 320
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->e:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p1, v2, v1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 322
    invoke-static {p2}, Lcom/coloros/settings/privacy/a/k;->a(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x28

    .line 332
    new-array v4, v4, [B

    .line 333
    array-length v5, p2

    invoke-static {p2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 334
    array-length p2, p2

    array-length v5, p4

    invoke-static {p4, v3, v4, p2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 336
    sget-object p2, Lcom/coloros/settings/privacy/a/e;->f:Lcom/coloros/settings/privacy/a/e;

    invoke-static {v4}, Lcom/coloros/settings/privacy/a/k;->c([B)[B

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 338
    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    .line 340
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    .line 341
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    .line 342
    sget-object p2, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 343
    sget-object p2, Lcom/coloros/settings/privacy/a/e;->g:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object p1

    .line 8234
    iget-object p1, p1, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 345
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "checkPassword succeed"

    .line 346
    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 348
    invoke-interface {p3, v1, p1}, Lcom/coloros/settings/privacy/a/g$b;->a(Z[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 354
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "checkPassword e = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "checkPassword fail"

    .line 356
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 358
    invoke-interface {p3, v3, v2}, Lcom/coloros/settings/privacy/a/g$b;->a(Z[B)V

    :cond_3
    return-void

    .line 325
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "checkPassword Illegal Argument sha256 : "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    move p2, v1

    goto :goto_1

    :cond_5
    move p2, v3

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", handler "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_7

    .line 327
    invoke-interface {p3, v3, v2}, Lcom/coloros/settings/privacy/a/g$b;->a(Z[B)V

    :cond_7
    return-void
.end method

.method public final a(Lcom/coloros/settings/privacy/a/g$d;ILjava/lang/String;Lcom/coloros/settings/privacy/a/g$b;)V
    .locals 0

    .line 300
    iget-object p1, p1, Lcom/coloros/settings/privacy/a/g$d;->b:[B

    .line 301
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/coloros/settings/privacy/a/g;->a(ILjava/lang/String;Lcom/coloros/settings/privacy/a/g$b;[B)V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "savePassword type : "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 174
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "PrivacyPasswordController"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const-string p1, "password is null!"

    .line 175
    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 178
    :cond_2
    new-instance v2, Lcom/coloros/settings/privacy/a/d;

    sget-object v5, Lcom/coloros/settings/privacy/a/f;->b:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v2, v5}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 179
    sget-object v5, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v6, p0, Lcom/coloros/settings/privacy/a/g;->a:I

    invoke-virtual {v2, v5, v6}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 180
    sget-object v5, Lcom/coloros/settings/privacy/a/e;->k:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v2, v5, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 181
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->c:Lcom/coloros/settings/privacy/a/e;

    invoke-static {p2}, Lcom/coloros/settings/privacy/a/k;->a(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 182
    invoke-static {v0}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object p1

    const/16 p2, 0x20

    .line 183
    invoke-static {p2}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object p2

    .line 184
    invoke-static {p3}, Lcom/coloros/settings/privacy/a/k;->a(Ljava/lang/String;)[B

    move-result-object p3

    .line 186
    array-length v0, p1

    array-length v5, p2

    add-int/2addr v0, v5

    new-array v0, v0, [B

    .line 187
    array-length v5, p1

    invoke-static {p1, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 188
    array-length p1, p1

    array-length v5, p2

    invoke-static {p2, v4, v0, p1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 p1, 0x28

    .line 190
    new-array p1, p1, [B

    .line 191
    array-length p2, v0

    invoke-static {v0, v4, p1, v4, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 192
    array-length p2, v0

    array-length v0, p3

    invoke-static {p3, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 194
    sget-object p2, Lcom/coloros/settings/privacy/a/e;->d:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v2, p2, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 196
    invoke-virtual {v2}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    .line 198
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    .line 199
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    .line 200
    sget-object p2, Lcom/coloros/settings/privacy/a/f;->b:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 201
    sget-object p2, Lcom/coloros/settings/privacy/a/e;->j:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object p1

    .line 6234
    iget-object p1, p1, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 203
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result p2

    if-nez p2, :cond_3

    .line 204
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->a([B)I

    move-result p1

    const-string p2, "savePassword result = "

    .line 205
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->setPrivacySecure(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 211
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "savePassword e = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "savePassword false"

    .line 213
    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "PrivacyPasswordController"

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_1

    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "savePassword type : "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 229
    :cond_1
    :goto_0
    new-instance v4, Lcom/coloros/settings/privacy/a/d;

    sget-object v5, Lcom/coloros/settings/privacy/a/f;->b:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v4, v5}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 230
    sget-object v5, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v6, p0, Lcom/coloros/settings/privacy/a/g;->a:I

    invoke-virtual {v4, v5, v6}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 231
    sget-object v5, Lcom/coloros/settings/privacy/a/e;->k:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v4, v5, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 232
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->c:Lcom/coloros/settings/privacy/a/e;

    invoke-static {p2}, Lcom/coloros/settings/privacy/a/k;->a(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 233
    invoke-static {v1}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object p1

    const/16 p2, 0x20

    .line 234
    invoke-static {p2}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object v1

    .line 235
    invoke-static {p3}, Lcom/coloros/settings/privacy/a/k;->a(Ljava/lang/String;)[B

    move-result-object p3

    .line 237
    invoke-static {p1, v1}, Lcom/coloros/settings/privacy/a/k;->a([B[B)[B

    move-result-object p1

    .line 238
    invoke-static {p1, p3}, Lcom/coloros/settings/privacy/a/k;->a([B[B)[B

    move-result-object p1

    .line 240
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x0

    if-le p3, p2, :cond_2

    .line 241
    invoke-virtual {p4, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 242
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    .line 243
    invoke-static {v2}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object v2

    .line 244
    array-length v5, p3

    invoke-static {v5}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object v5

    .line 245
    new-array v6, p2, [B

    .line 246
    array-length v7, p3

    invoke-static {p3, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 247
    invoke-static {v2, v5}, Lcom/coloros/settings/privacy/a/k;->a([B[B)[B

    move-result-object p3

    .line 248
    invoke-static {p3, v6}, Lcom/coloros/settings/privacy/a/k;->a([B[B)[B

    move-result-object p3

    .line 250
    invoke-virtual {p4, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    .line 251
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    const/16 v2, 0xa

    .line 252
    invoke-static {v2}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object v2

    .line 253
    array-length v5, p4

    invoke-static {v5}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object v5

    .line 254
    new-array p2, p2, [B

    .line 255
    array-length v6, p4

    invoke-static {p4, v1, p2, v1, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 256
    invoke-static {v2, v5}, Lcom/coloros/settings/privacy/a/k;->a([B[B)[B

    move-result-object p4

    .line 258
    invoke-static {p4, p2}, Lcom/coloros/settings/privacy/a/k;->a([B[B)[B

    move-result-object p2

    .line 259
    invoke-static {p3, p2}, Lcom/coloros/settings/privacy/a/k;->a([B[B)[B

    move-result-object p2

    .line 260
    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/k;->a([B[B)[B

    move-result-object p1

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    .line 263
    invoke-static {v2}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object p4

    .line 264
    array-length v2, p3

    invoke-static {v2}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object v2

    .line 265
    new-array p2, p2, [B

    .line 266
    array-length v5, p3

    invoke-static {p3, v1, p2, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 267
    invoke-static {p4, v2}, Lcom/coloros/settings/privacy/a/k;->a([B[B)[B

    move-result-object p3

    .line 268
    invoke-static {p3, p2}, Lcom/coloros/settings/privacy/a/k;->a([B[B)[B

    move-result-object p2

    .line 269
    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/k;->a([B[B)[B

    move-result-object p1

    .line 271
    :goto_1
    sget-object p2, Lcom/coloros/settings/privacy/a/e;->d:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v4, p2, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 273
    invoke-virtual {v4}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    .line 275
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    .line 276
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    .line 277
    sget-object p2, Lcom/coloros/settings/privacy/a/f;->b:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 278
    sget-object p2, Lcom/coloros/settings/privacy/a/e;->j:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object p1

    .line 7234
    iget-object p1, p1, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 280
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "savePassword succeed"

    .line 281
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {v3}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->setPrivacySecure(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 287
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "savePassword e = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "savePassword fail"

    .line 289
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final a([B)Z
    .locals 4

    const-string v0, "PrivacyPasswordController"

    if-eqz p1, :cond_1

    .line 548
    array-length v1, p1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 551
    new-instance v1, Lcom/coloros/settings/privacy/a/d;

    sget-object v2, Lcom/coloros/settings/privacy/a/f;->e:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v1, v2}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 552
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v3, p0, Lcom/coloros/settings/privacy/a/g;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 553
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->g:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v1, v2, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 555
    invoke-virtual {v1}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    const/4 v1, 0x0

    .line 557
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    .line 558
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    .line 559
    sget-object v2, Lcom/coloros/settings/privacy/a/f;->e:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, v2}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "deletePassword succeed"

    .line 560
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->setPrivacySecure(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 565
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "deletePassword e = "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "deletePassword fail"

    .line 567
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 549
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deletePassword challenge null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a([BILjava/lang/String;)Z
    .locals 5

    const-string v0, "PrivacyPasswordController"

    if-eqz p1, :cond_3

    .line 455
    array-length v1, p1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "modifyPasswordByChallenge passwordType : "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 469
    :cond_1
    :goto_0
    new-instance v2, Lcom/coloros/settings/privacy/a/d;

    sget-object v3, Lcom/coloros/settings/privacy/a/f;->d:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v2, v3}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 470
    sget-object v3, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v4, p0, Lcom/coloros/settings/privacy/a/g;->a:I

    invoke-virtual {v2, v3, v4}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 471
    sget-object v3, Lcom/coloros/settings/privacy/a/e;->g:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v2, v3, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 472
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->k:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v2, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 473
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->h:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v2, p1, v1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 474
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->i:Lcom/coloros/settings/privacy/a/e;

    invoke-static {p3}, Lcom/coloros/settings/privacy/a/k;->a(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 476
    invoke-virtual {v2}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    .line 478
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    .line 479
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    .line 480
    sget-object p2, Lcom/coloros/settings/privacy/a/f;->d:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 481
    sget-object p2, Lcom/coloros/settings/privacy/a/e;->j:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object p1

    .line 10234
    iget-object p1, p1, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 483
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "modifyPasswordByChallenge succeed"

    .line 484
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 489
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "modifyPasswordByChallenge e = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "modifyPasswordByChallenge fail"

    .line 491
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 456
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "modifyPasswordByChallenge challenge null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILjava/lang/String;)[B
    .locals 4

    const-string v0, "PrivacyPasswordController"

    const/4 v1, 0x2

    .line 429
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 430
    new-instance v1, Lcom/coloros/settings/privacy/a/d;

    sget-object v2, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v1, v2}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 431
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v3, p0, Lcom/coloros/settings/privacy/a/g;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 432
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->e:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v1, v2, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 433
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->f:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v1, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 435
    invoke-virtual {v1}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    .line 437
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    .line 438
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    .line 439
    sget-object p2, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 440
    sget-object p2, Lcom/coloros/settings/privacy/a/e;->g:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object p1

    .line 9234
    iget-object p1, p1, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 442
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "checkReset succeed"

    .line 443
    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 448
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "checkReset e = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "checkReset fail"

    .line 450
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "PrivacyPasswordController"

    .line 573
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 574
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version"

    .line 575
    invoke-virtual {v1, v2, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const-string p2, "email"

    .line 577
    invoke-virtual {v1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 580
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 581
    new-instance p3, Lcom/coloros/settings/privacy/a/d;

    sget-object v1, Lcom/coloros/settings/privacy/a/f;->g:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {p3, v1}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 582
    sget-object v1, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v2, p0, Lcom/coloros/settings/privacy/a/g;->a:I

    invoke-virtual {p3, v1, v2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 583
    sget-object v1, Lcom/coloros/settings/privacy/a/e;->e:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p3, v1, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 584
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->n:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 585
    invoke-virtual {p3}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    const/4 p2, 0x0

    .line 587
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    .line 588
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    .line 589
    sget-object p3, Lcom/coloros/settings/privacy/a/f;->g:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, p3}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 590
    sget-object p3, Lcom/coloros/settings/privacy/a/e;->s:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object p1

    .line 11234
    iget-object p1, p1, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 592
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p3, 0x2

    .line 593
    invoke-static {p1, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string p1, "encryptRequest succeed"

    .line 594
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 598
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "encryptRequest e = "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "encryptRequest "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public final b([BILjava/lang/String;)Z
    .locals 4

    const-string v0, "PrivacyPasswordController"

    if-eqz p1, :cond_1

    .line 496
    array-length v1, p1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 499
    new-instance v1, Lcom/coloros/settings/privacy/a/d;

    sget-object v2, Lcom/coloros/settings/privacy/a/f;->d:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v1, v2}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 500
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v3, p0, Lcom/coloros/settings/privacy/a/g;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 501
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->g:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v1, v2, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 502
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->k:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v1, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 503
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->h:Lcom/coloros/settings/privacy/a/e;

    const/4 p2, 0x2

    invoke-virtual {v1, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 504
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->i:Lcom/coloros/settings/privacy/a/e;

    invoke-static {p3}, Lcom/coloros/settings/privacy/a/k;->a(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 506
    invoke-virtual {v1}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    .line 508
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    .line 509
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    .line 510
    sget-object p2, Lcom/coloros/settings/privacy/a/f;->d:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "modifyPasswordByChallenge true"

    .line 511
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 515
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "modifyPasswordByChallenge e = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "modifyPasswordByChallenge false"

    .line 517
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 497
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "modifyPasswordByChallenge challenge null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c([BILjava/lang/String;)Z
    .locals 4

    const-string v0, "PrivacyPasswordController"

    if-eqz p1, :cond_1

    .line 522
    array-length v1, p1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 525
    new-instance v1, Lcom/coloros/settings/privacy/a/d;

    sget-object v2, Lcom/coloros/settings/privacy/a/f;->d:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v1, v2}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 526
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v3, p0, Lcom/coloros/settings/privacy/a/g;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 527
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->g:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v1, v2, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 528
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->k:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v1, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 529
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->h:Lcom/coloros/settings/privacy/a/e;

    const/4 p2, 0x4

    invoke-virtual {v1, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 530
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->i:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 532
    invoke-virtual {v1}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    .line 534
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    .line 535
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    .line 536
    sget-object p2, Lcom/coloros/settings/privacy/a/f;->d:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "modifyEmailByChallenge true"

    .line 537
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 541
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "modifyEmailByChallenge e = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "modifyEmailByChallenge false"

    .line 543
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 523
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "modifyPasswordByChallenge challenge null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
