.class public final Lcom/android/a/a/a/k$c;
.super Lcom/android/a/a/a/c;
.source "ProtobufEccData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/a/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/a/a/a/c<",
        "Lcom/android/a/a/a/k$c;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Lcom/android/a/a/a/k$c;


# instance fields
.field public c:Ljava/lang/String;

.field public d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/a/a/a/c;-><init>()V

    const-string v0, ""

    .line 1044
    iput-object v0, p0, Lcom/android/a/a/a/k$c;->c:Ljava/lang/String;

    .line 1045
    sget-object v0, Lcom/android/a/a/a/m;->a:[I

    iput-object v0, p0, Lcom/android/a/a/a/k$c;->d:[I

    const/4 v0, 0x0

    .line 1046
    iput-object v0, p0, Lcom/android/a/a/a/k$c;->a:Lcom/android/a/a/a/e;

    const/4 v0, -0x1

    .line 1047
    iput v0, p0, Lcom/android/a/a/a/k$c;->b:I

    return-void
.end method

.method public static e()[Lcom/android/a/a/a/k$c;
    .locals 2

    .line 22
    sget-object v0, Lcom/android/a/a/a/k$c;->e:[Lcom/android/a/a/a/k$c;

    if-nez v0, :cond_1

    .line 23
    sget-object v0, Lcom/android/a/a/a/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/android/a/a/a/k$c;->e:[Lcom/android/a/a/a/k$c;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 26
    new-array v1, v1, [Lcom/android/a/a/a/k$c;

    sput-object v1, Lcom/android/a/a/a/k$c;->e:[Lcom/android/a/a/a/k$c;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/a/a/a/k$c;->e:[Lcom/android/a/a/a/k$c;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .line 75
    invoke-super {p0}, Lcom/android/a/a/a/c;->a()I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/android/a/a/a/k$c;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/a/a/a/k$c;->c:Ljava/lang/String;

    .line 78
    invoke-static {v2, v1}, Lcom/android/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/a/a/a/k$c;->d:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v3, v1

    .line 82
    :goto_0
    iget-object v4, p0, Lcom/android/a/a/a/k$c;->d:[I

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 83
    aget v4, v4, v1

    .line 85
    invoke-static {v4}, Lcom/android/a/a/a/b;->a(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 90
    invoke-static {v3}, Lcom/android/a/a/a/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final synthetic a(Lcom/android/a/a/a/a;)Lcom/android/a/a/a/i;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->a()I

    move-result v0

    if-eqz v0, :cond_11

    const/16 v1, 0xa

    if-eq v0, v1, :cond_10

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v3, :cond_9

    const/16 v6, 0x12

    if-eq v0, v6, :cond_1

    .line 1105
    invoke-virtual {p0, p1, v0}, Lcom/android/a/a/a/k$c;->a(Lcom/android/a/a/a/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1154
    :cond_1
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->c()I

    move-result v0

    .line 1155
    invoke-virtual {p1, v0}, Lcom/android/a/a/a/a;->c(I)I

    move-result v0

    .line 1158
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->e()I

    move-result v6

    move v7, v5

    .line 1159
    :goto_1
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->d()I

    move-result v8

    if-lez v8, :cond_3

    .line 3169
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->c()I

    move-result v8

    if-eqz v8, :cond_2

    if-eq v8, v4, :cond_2

    if-eq v8, v2, :cond_2

    if-eq v8, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_8

    .line 1170
    invoke-virtual {p1, v6}, Lcom/android/a/a/a/a;->e(I)V

    .line 1171
    iget-object v6, p0, Lcom/android/a/a/a/k$c;->d:[I

    if-nez v6, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    array-length v6, v6

    :goto_2
    add-int/2addr v7, v6

    .line 1172
    new-array v7, v7, [I

    if-eqz v6, :cond_5

    .line 1174
    iget-object v8, p0, Lcom/android/a/a/a/k$c;->d:[I

    invoke-static {v8, v5, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1176
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->d()I

    move-result v5

    if-lez v5, :cond_7

    .line 1177
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->e()I

    move-result v5

    .line 4169
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->c()I

    move-result v8

    if-eqz v8, :cond_6

    if-eq v8, v4, :cond_6

    if-eq v8, v2, :cond_6

    if-eq v8, v1, :cond_6

    .line 1187
    invoke-virtual {p1, v5}, Lcom/android/a/a/a/a;->e(I)V

    .line 1188
    invoke-virtual {p0, p1, v3}, Lcom/android/a/a/a/k$c;->a(Lcom/android/a/a/a/a;I)Z

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v6, 0x1

    .line 1184
    aput v8, v7, v6

    move v6, v5

    goto :goto_3

    .line 1192
    :cond_7
    iput-object v7, p0, Lcom/android/a/a/a/k$c;->d:[I

    .line 1194
    :cond_8
    invoke-virtual {p1, v0}, Lcom/android/a/a/a/a;->d(I)V

    goto :goto_0

    .line 1116
    :cond_9
    invoke-static {p1, v3}, Lcom/android/a/a/a/m;->a(Lcom/android/a/a/a/a;I)I

    move-result v3

    .line 1117
    new-array v6, v3, [I

    move v7, v5

    move v8, v7

    :goto_4
    if-ge v7, v3, :cond_c

    if-eqz v7, :cond_a

    .line 1121
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->a()I

    .line 1123
    :cond_a
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->e()I

    move-result v9

    .line 2169
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->c()I

    move-result v10

    if-eqz v10, :cond_b

    if-eq v10, v4, :cond_b

    if-eq v10, v2, :cond_b

    if-eq v10, v1, :cond_b

    .line 1133
    invoke-virtual {p1, v9}, Lcom/android/a/a/a/a;->e(I)V

    .line 1134
    invoke-virtual {p0, p1, v0}, Lcom/android/a/a/a/k$c;->a(Lcom/android/a/a/a/a;I)Z

    goto :goto_5

    :cond_b
    add-int/lit8 v9, v8, 0x1

    .line 1130
    aput v10, v6, v8

    move v8, v9

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_c
    if-eqz v8, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/a/a/a/k$c;->d:[I

    if-nez v0, :cond_d

    move v0, v5

    goto :goto_6

    :cond_d
    array-length v0, v0

    :goto_6
    if-nez v0, :cond_e

    .line 1140
    array-length v1, v6

    if-ne v8, v1, :cond_e

    .line 1141
    iput-object v6, p0, Lcom/android/a/a/a/k$c;->d:[I

    goto/16 :goto_0

    :cond_e
    add-int v1, v0, v8

    .line 1143
    new-array v1, v1, [I

    if-eqz v0, :cond_f

    .line 1145
    iget-object v2, p0, Lcom/android/a/a/a/k$c;->d:[I

    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1147
    :cond_f
    invoke-static {v6, v5, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    iput-object v1, p0, Lcom/android/a/a/a/k$c;->d:[I

    goto/16 :goto_0

    .line 1111
    :cond_10
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/a/a/a/k$c;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    return-object p0
.end method

.method public final a(Lcom/android/a/a/a/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/a/a/a/k$c;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/a/a/a/k$c;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/a/a/a/b;->a(ILjava/lang/String;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/a/a/a/k$c;->d:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 59
    :goto_0
    iget-object v3, p0, Lcom/android/a/a/a/k$c;->d:[I

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 60
    aget v3, v3, v1

    .line 62
    invoke-static {v3}, Lcom/android/a/a/a/b;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    .line 64
    invoke-virtual {p1, v1}, Lcom/android/a/a/a/b;->c(I)V

    .line 65
    invoke-virtual {p1, v2}, Lcom/android/a/a/a/b;->c(I)V

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/android/a/a/a/k$c;->d:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 67
    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/a/a/a/b;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_2
    invoke-super {p0, p1}, Lcom/android/a/a/a/c;->a(Lcom/android/a/a/a/b;)V

    return-void
.end method
