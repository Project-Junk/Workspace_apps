.class public abstract Lcom/android/a/a/a/i;
.super Ljava/lang/Object;
.source "MessageNano.java"


# instance fields
.field protected volatile b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/android/a/a/a/i;->b:I

    return-void
.end method

.method public static final a(Lcom/android/a/a/a/i;[BI)Lcom/android/a/a/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/a/a/a/i;",
            ">(TT;[BI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/a/a/a/h;
        }
    .end annotation

    .line 1060
    :try_start_0
    new-instance v0, Lcom/android/a/a/a/a;

    invoke-direct {v0, p1, p2}, Lcom/android/a/a/a/a;-><init>([BI)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/a/a/a/i;->a(Lcom/android/a/a/a/a;)Lcom/android/a/a/a/i;

    const/4 p1, 0x0

    .line 144
    invoke-virtual {v0, p1}, Lcom/android/a/a/a/a;->a(I)V
    :try_end_0
    .catch Lcom/android/a/a/a/h; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 149
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 147
    throw p0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Lcom/android/a/a/a/a;)Lcom/android/a/a/a/i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public a(Lcom/android/a/a/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public b()Lcom/android/a/a/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 196
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/a/a/i;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/android/a/a/a/i;->b:I

    if-gez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/a/a/a/i;->d()I

    .line 56
    :cond_0
    iget v0, p0, Lcom/android/a/a/a/i;->b:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/android/a/a/a/i;->b()Lcom/android/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/android/a/a/a/i;->a()I

    move-result v0

    .line 66
    iput v0, p0, Lcom/android/a/a/a/i;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 188
    invoke-static {p0}, Lcom/android/a/a/a/j;->a(Lcom/android/a/a/a/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
