.class public final enum Lcom/google/c/g/a/f;
.super Ljava/lang/Enum;
.source "ErrorCorrectionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/c/g/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/c/g/a/f;

.field public static final enum b:Lcom/google/c/g/a/f;

.field public static final enum c:Lcom/google/c/g/a/f;

.field public static final enum d:Lcom/google/c/g/a/f;

.field private static final f:[Lcom/google/c/g/a/f;

.field private static final synthetic g:[Lcom/google/c/g/a/f;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 28
    new-instance v0, Lcom/google/c/g/a/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "L"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/c/g/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/c/g/a/f;->a:Lcom/google/c/g/a/f;

    .line 30
    new-instance v0, Lcom/google/c/g/a/f;

    const-string v3, "M"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/c/g/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/c/g/a/f;->b:Lcom/google/c/g/a/f;

    .line 32
    new-instance v0, Lcom/google/c/g/a/f;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "Q"

    invoke-direct {v0, v5, v4, v3}, Lcom/google/c/g/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/c/g/a/f;->c:Lcom/google/c/g/a/f;

    .line 34
    new-instance v0, Lcom/google/c/g/a/f;

    const-string v5, "H"

    invoke-direct {v0, v5, v3, v4}, Lcom/google/c/g/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/c/g/a/f;->d:Lcom/google/c/g/a/f;

    const/4 v0, 0x4

    .line 25
    new-array v5, v0, [Lcom/google/c/g/a/f;

    sget-object v6, Lcom/google/c/g/a/f;->a:Lcom/google/c/g/a/f;

    aput-object v6, v5, v2

    sget-object v7, Lcom/google/c/g/a/f;->b:Lcom/google/c/g/a/f;

    aput-object v7, v5, v1

    sget-object v8, Lcom/google/c/g/a/f;->c:Lcom/google/c/g/a/f;

    aput-object v8, v5, v4

    sget-object v9, Lcom/google/c/g/a/f;->d:Lcom/google/c/g/a/f;

    aput-object v9, v5, v3

    sput-object v5, Lcom/google/c/g/a/f;->g:[Lcom/google/c/g/a/f;

    .line 36
    new-array v0, v0, [Lcom/google/c/g/a/f;

    aput-object v7, v0, v2

    aput-object v6, v0, v1

    aput-object v9, v0, v4

    aput-object v8, v0, v3

    sput-object v0, Lcom/google/c/g/a/f;->f:[Lcom/google/c/g/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/google/c/g/a/f;->e:I

    return-void
.end method

.method public static a(I)Lcom/google/c/g/a/f;
    .locals 2

    if-ltz p0, :cond_0

    .line 53
    sget-object v0, Lcom/google/c/g/a/f;->f:[Lcom/google/c/g/a/f;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 56
    aget-object p0, v0, p0

    return-object p0

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/g/a/f;
    .locals 1

    .line 25
    const-class v0, Lcom/google/c/g/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/c/g/a/f;

    return-object p0
.end method

.method public static values()[Lcom/google/c/g/a/f;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/c/g/a/f;->g:[Lcom/google/c/g/a/f;

    invoke-virtual {v0}, [Lcom/google/c/g/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/g/a/f;

    return-object v0
.end method
