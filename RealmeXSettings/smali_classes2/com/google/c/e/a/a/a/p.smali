.class final Lcom/google/c/e/a/a/a/p;
.super Lcom/google/c/e/a/a/a/q;
.source "DecodedNumeric.java"


# instance fields
.field final a:I

.field final b:I


# direct methods
.method constructor <init>(III)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/google/c/e/a/a/a/q;-><init>(I)V

    .line 43
    iput p2, p0, Lcom/google/c/e/a/a/a/p;->a:I

    .line 44
    iput p3, p0, Lcom/google/c/e/a/a/a/p;->b:I

    .line 46
    iget p1, p0, Lcom/google/c/e/a/a/a/p;->a:I

    if-ltz p1, :cond_1

    const/16 v0, 0xa

    if-gt p1, v0, :cond_1

    .line 50
    iget p1, p0, Lcom/google/c/e/a/a/a/p;->b:I

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Invalid secondDigit: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Invalid firstDigit: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final a()Z
    .locals 2

    .line 68
    iget v0, p0, Lcom/google/c/e/a/a/a/p;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final b()Z
    .locals 2

    .line 72
    iget v0, p0, Lcom/google/c/e/a/a/a/p;->b:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
