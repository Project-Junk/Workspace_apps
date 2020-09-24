.class public final Lcom/android/a/a/a/k$b;
.super Lcom/android/a/a/a/c;
.source "ProtobufEccData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/a/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/a/a/a/c<",
        "Lcom/android/a/a/a/k$b;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lcom/android/a/a/a/k$b;


# instance fields
.field public c:Ljava/lang/String;

.field public d:[Lcom/android/a/a/a/k$c;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 239
    invoke-direct {p0}, Lcom/android/a/a/a/c;-><init>()V

    const-string v0, ""

    .line 1244
    iput-object v0, p0, Lcom/android/a/a/a/k$b;->c:Ljava/lang/String;

    .line 1245
    invoke-static {}, Lcom/android/a/a/a/k$c;->e()[Lcom/android/a/a/a/k$c;

    move-result-object v1

    iput-object v1, p0, Lcom/android/a/a/a/k$b;->d:[Lcom/android/a/a/a/k$c;

    .line 1246
    iput-object v0, p0, Lcom/android/a/a/a/k$b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1247
    iput-object v0, p0, Lcom/android/a/a/a/k$b;->a:Lcom/android/a/a/a/e;

    const/4 v0, -0x1

    .line 1248
    iput v0, p0, Lcom/android/a/a/a/k$b;->b:I

    return-void
.end method

.method public static e()[Lcom/android/a/a/a/k$b;
    .locals 2

    .line 219
    sget-object v0, Lcom/android/a/a/a/k$b;->f:[Lcom/android/a/a/a/k$b;

    if-nez v0, :cond_1

    .line 220
    sget-object v0, Lcom/android/a/a/a/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    sget-object v1, Lcom/android/a/a/a/k$b;->f:[Lcom/android/a/a/a/k$b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 223
    new-array v1, v1, [Lcom/android/a/a/a/k$b;

    sput-object v1, Lcom/android/a/a/a/k$b;->f:[Lcom/android/a/a/a/k$b;

    .line 225
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 227
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/a/a/a/k$b;->f:[Lcom/android/a/a/a/k$b;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .line 274
    invoke-super {p0}, Lcom/android/a/a/a/c;->a()I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/android/a/a/a/k$b;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/a/a/a/k$b;->c:Ljava/lang/String;

    const/4 v3, 0x1

    .line 277
    invoke-static {v3, v1}, Lcom/android/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/a/a/a/k$b;->d:[Lcom/android/a/a/a/k$c;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 280
    :goto_0
    iget-object v3, p0, Lcom/android/a/a/a/k$b;->d:[Lcom/android/a/a/a/k$c;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 281
    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    .line 284
    invoke-static {v4, v3}, Lcom/android/a/a/a/b;->b(ILcom/android/a/a/a/i;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/android/a/a/a/k$b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 289
    iget-object v2, p0, Lcom/android/a/a/a/k$b;->e:Ljava/lang/String;

    .line 290
    invoke-static {v1, v2}, Lcom/android/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final synthetic a(Lcom/android/a/a/a/a;)Lcom/android/a/a/a/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1300
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->a()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 1305
    invoke-virtual {p0, p1, v0}, Lcom/android/a/a/a/k$b;->a(Lcom/android/a/a/a/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1335
    :cond_1
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/a/a/a/k$b;->e:Ljava/lang/String;

    goto :goto_0

    .line 1316
    :cond_2
    invoke-static {p1, v1}, Lcom/android/a/a/a/m;->a(Lcom/android/a/a/a/a;I)I

    move-result v0

    .line 1317
    iget-object v1, p0, Lcom/android/a/a/a/k$b;->d:[Lcom/android/a/a/a/k$c;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 1318
    new-array v0, v0, [Lcom/android/a/a/a/k$c;

    if-eqz v1, :cond_4

    .line 1321
    iget-object v3, p0, Lcom/android/a/a/a/k$b;->d:[Lcom/android/a/a/a/k$c;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1323
    :cond_4
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    .line 1324
    new-instance v2, Lcom/android/a/a/a/k$c;

    invoke-direct {v2}, Lcom/android/a/a/a/k$c;-><init>()V

    aput-object v2, v0, v1

    .line 1325
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/android/a/a/a/a;->a(Lcom/android/a/a/a/i;)V

    .line 1326
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1329
    :cond_5
    new-instance v2, Lcom/android/a/a/a/k$c;

    invoke-direct {v2}, Lcom/android/a/a/a/k$c;-><init>()V

    aput-object v2, v0, v1

    .line 1330
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/android/a/a/a/a;->a(Lcom/android/a/a/a/i;)V

    .line 1331
    iput-object v0, p0, Lcom/android/a/a/a/k$b;->d:[Lcom/android/a/a/a/k$c;

    goto :goto_0

    .line 1311
    :cond_6
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/a/a/a/k$b;->c:Ljava/lang/String;

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final a(Lcom/android/a/a/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/android/a/a/a/k$b;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/a/a/a/k$b;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/android/a/a/a/b;->a(ILjava/lang/String;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/a/a/a/k$b;->d:[Lcom/android/a/a/a/k$c;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 259
    :goto_0
    iget-object v2, p0, Lcom/android/a/a/a/k$b;->d:[Lcom/android/a/a/a/k$c;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 260
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {p1, v2}, Lcom/android/a/a/a/b;->a(Lcom/android/a/a/a/i;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/a/a/a/k$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    .line 267
    iget-object v1, p0, Lcom/android/a/a/a/k$b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/a/a/a/b;->a(ILjava/lang/String;)V

    .line 269
    :cond_3
    invoke-super {p0, p1}, Lcom/android/a/a/a/c;->a(Lcom/android/a/a/a/b;)V

    return-void
.end method
