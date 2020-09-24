.class public final Lcom/google/c/b/b/a;
.super Ljava/lang/Object;
.source "GenericGF.java"


# static fields
.field public static final a:Lcom/google/c/b/b/a;

.field public static final b:Lcom/google/c/b/b/a;

.field public static final c:Lcom/google/c/b/b/a;

.field public static final d:Lcom/google/c/b/b/a;

.field public static final e:Lcom/google/c/b/b/a;

.field public static final f:Lcom/google/c/b/b/a;

.field public static final g:Lcom/google/c/b/b/a;

.field public static final h:Lcom/google/c/b/b/a;


# instance fields
.field final i:I

.field final j:I

.field private k:[I

.field private l:[I

.field private m:Lcom/google/c/b/b/b;

.field private n:Lcom/google/c/b/b/b;

.field private final o:I

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Lcom/google/c/b/b/a;

    const/4 v1, 0x1

    const/16 v2, 0x1069

    const/16 v3, 0x1000

    invoke-direct {v0, v2, v3, v1}, Lcom/google/c/b/b/a;-><init>(III)V

    sput-object v0, Lcom/google/c/b/b/a;->a:Lcom/google/c/b/b/a;

    .line 33
    new-instance v0, Lcom/google/c/b/b/a;

    const/16 v2, 0x409

    const/16 v3, 0x400

    invoke-direct {v0, v2, v3, v1}, Lcom/google/c/b/b/a;-><init>(III)V

    sput-object v0, Lcom/google/c/b/b/a;->b:Lcom/google/c/b/b/a;

    .line 34
    new-instance v0, Lcom/google/c/b/b/a;

    const/16 v2, 0x43

    const/16 v3, 0x40

    invoke-direct {v0, v2, v3, v1}, Lcom/google/c/b/b/a;-><init>(III)V

    sput-object v0, Lcom/google/c/b/b/a;->c:Lcom/google/c/b/b/a;

    .line 35
    new-instance v0, Lcom/google/c/b/b/a;

    const/16 v2, 0x13

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lcom/google/c/b/b/a;-><init>(III)V

    sput-object v0, Lcom/google/c/b/b/a;->d:Lcom/google/c/b/b/a;

    .line 36
    new-instance v0, Lcom/google/c/b/b/a;

    const/16 v2, 0x100

    const/16 v3, 0x11d

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Lcom/google/c/b/b/a;-><init>(III)V

    sput-object v0, Lcom/google/c/b/b/a;->e:Lcom/google/c/b/b/a;

    .line 37
    new-instance v0, Lcom/google/c/b/b/a;

    const/16 v3, 0x12d

    invoke-direct {v0, v3, v2, v1}, Lcom/google/c/b/b/a;-><init>(III)V

    .line 38
    sput-object v0, Lcom/google/c/b/b/a;->f:Lcom/google/c/b/b/a;

    sput-object v0, Lcom/google/c/b/b/a;->g:Lcom/google/c/b/b/a;

    .line 39
    sget-object v0, Lcom/google/c/b/b/a;->c:Lcom/google/c/b/b/a;

    sput-object v0, Lcom/google/c/b/b/a;->h:Lcom/google/c/b/b/a;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/google/c/b/b/a;->p:Z

    .line 64
    iput p1, p0, Lcom/google/c/b/b/a;->o:I

    .line 65
    iput p2, p0, Lcom/google/c/b/b/a;->i:I

    .line 66
    iput p3, p0, Lcom/google/c/b/b/a;->j:I

    if-gtz p2, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/google/c/b/b/a;->c()V

    :cond_0
    return-void
.end method

.method static b(II)I
    .locals 0

    xor-int/2addr p0, p1

    return p0
.end method

.method private c()V
    .locals 6

    .line 74
    iget v0, p0, Lcom/google/c/b/b/a;->i:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/c/b/b/a;->k:[I

    .line 75
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/c/b/b/a;->l:[I

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 77
    :goto_0
    iget v4, p0, Lcom/google/c/b/b/a;->i:I

    if-ge v2, v4, :cond_1

    .line 78
    iget-object v5, p0, Lcom/google/c/b/b/a;->k:[I

    aput v3, v5, v2

    shl-int/2addr v3, v1

    if-lt v3, v4, :cond_0

    .line 81
    iget v5, p0, Lcom/google/c/b/b/a;->o:I

    xor-int/2addr v3, v5

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 85
    :goto_1
    iget v3, p0, Lcom/google/c/b/b/a;->i:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 86
    iget-object v3, p0, Lcom/google/c/b/b/a;->l:[I

    iget-object v4, p0, Lcom/google/c/b/b/a;->k:[I

    aget v4, v4, v2

    aput v2, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :cond_2
    new-instance v2, Lcom/google/c/b/b/b;

    new-array v3, v1, [I

    aput v0, v3, v0

    invoke-direct {v2, p0, v3}, Lcom/google/c/b/b/b;-><init>(Lcom/google/c/b/b/a;[I)V

    iput-object v2, p0, Lcom/google/c/b/b/a;->m:Lcom/google/c/b/b/b;

    .line 90
    new-instance v2, Lcom/google/c/b/b/b;

    new-array v3, v1, [I

    aput v1, v3, v0

    invoke-direct {v2, p0, v3}, Lcom/google/c/b/b/b;-><init>(Lcom/google/c/b/b/a;[I)V

    iput-object v2, p0, Lcom/google/c/b/b/a;->n:Lcom/google/c/b/b/b;

    .line 91
    iput-boolean v1, p0, Lcom/google/c/b/b/a;->p:Z

    return-void
.end method

.method private d()V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/google/c/b/b/a;->p:Z

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/google/c/b/b/a;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/google/c/b/b/a;->d()V

    .line 144
    iget-object v0, p0, Lcom/google/c/b/b/a;->k:[I

    aget p1, v0, p1

    return p1
.end method

.method final a()Lcom/google/c/b/b/b;
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/google/c/b/b/a;->d()V

    .line 103
    iget-object v0, p0, Lcom/google/c/b/b/a;->m:Lcom/google/c/b/b/b;

    return-object v0
.end method

.method final a(II)Lcom/google/c/b/b/b;
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/google/c/b/b/a;->d()V

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    .line 122
    iget-object p1, p0, Lcom/google/c/b/b/a;->m:Lcom/google/c/b/b/b;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 124
    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 125
    aput p2, p1, v0

    .line 126
    new-instance p2, Lcom/google/c/b/b/b;

    invoke-direct {p2, p0, p1}, Lcom/google/c/b/b/b;-><init>(Lcom/google/c/b/b/a;[I)V

    return-object p2

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method final b(I)I
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/google/c/b/b/a;->d()V

    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/c/b/b/a;->l:[I

    aget p1, v0, p1

    return p1

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method final b()Lcom/google/c/b/b/b;
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/google/c/b/b/a;->d()V

    .line 109
    iget-object v0, p0, Lcom/google/c/b/b/a;->n:Lcom/google/c/b/b/b;

    return-object v0
.end method

.method final c(I)I
    .locals 3

    .line 163
    invoke-direct {p0}, Lcom/google/c/b/b/a;->d()V

    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/c/b/b/a;->k:[I

    iget v1, p0, Lcom/google/c/b/b/a;->i:I

    iget-object v2, p0, Lcom/google/c/b/b/a;->l:[I

    aget p1, v2, p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget p1, v0, v1

    return p1

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    throw p1
.end method

.method final c(II)I
    .locals 2

    .line 175
    invoke-direct {p0}, Lcom/google/c/b/b/a;->d()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/google/c/b/b/a;->k:[I

    iget-object v1, p0, Lcom/google/c/b/b/a;->l:[I

    aget p1, v1, p1

    aget p2, v1, p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/google/c/b/b/a;->i:I

    add-int/lit8 p2, p2, -0x1

    rem-int/2addr p1, p2

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GF(0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/c/b/b/a;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/c/b/b/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
