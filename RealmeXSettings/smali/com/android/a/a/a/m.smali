.class public final Lcom/android/a/a/a/m;
.super Ljava/lang/Object;
.source "WireFormatNano.java"


# static fields
.field public static final a:[I

.field public static final b:[J

.field public static final c:[F

.field public static final d:[D

.field public static final e:[Z

.field public static final f:[Ljava/lang/String;

.field public static final g:[[B

.field public static final h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 75
    new-array v1, v0, [I

    sput-object v1, Lcom/android/a/a/a/m;->a:[I

    .line 76
    new-array v1, v0, [J

    sput-object v1, Lcom/android/a/a/a/m;->b:[J

    .line 77
    new-array v1, v0, [F

    sput-object v1, Lcom/android/a/a/a/m;->c:[F

    .line 78
    new-array v1, v0, [D

    sput-object v1, Lcom/android/a/a/a/m;->d:[D

    .line 79
    new-array v1, v0, [Z

    sput-object v1, Lcom/android/a/a/a/m;->e:[Z

    .line 80
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/a/a/a/m;->f:[Ljava/lang/String;

    .line 81
    new-array v1, v0, [[B

    sput-object v1, Lcom/android/a/a/a/m;->g:[[B

    .line 82
    new-array v0, v0, [B

    sput-object v0, Lcom/android/a/a/a/m;->h:[B

    return-void
.end method

.method static a(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static a(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static final a(Lcom/android/a/a/a/a;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/android/a/a/a/a;->e()I

    move-result v0

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/a/a/a/a;->b(I)Z

    const/4 v1, 0x1

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/android/a/a/a/a;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/a/a/a/a;->b(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/a/a/a/a;->e(I)V

    return v1
.end method

.method public static b(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method
