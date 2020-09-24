.class public final enum Lcom/google/c/e;
.super Ljava/lang/Enum;
.source "DecodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/c/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/c/e;

.field public static final enum b:Lcom/google/c/e;

.field public static final enum c:Lcom/google/c/e;

.field public static final enum d:Lcom/google/c/e;

.field public static final enum e:Lcom/google/c/e;

.field public static final enum f:Lcom/google/c/e;

.field public static final enum g:Lcom/google/c/e;

.field public static final enum h:Lcom/google/c/e;

.field public static final enum i:Lcom/google/c/e;

.field public static final enum j:Lcom/google/c/e;

.field private static final synthetic l:[Lcom/google/c/e;


# instance fields
.field private final k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 35
    new-instance v0, Lcom/google/c/e;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/c/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/c/e;->a:Lcom/google/c/e;

    .line 41
    new-instance v0, Lcom/google/c/e;

    const-class v1, Ljava/lang/Void;

    const/4 v3, 0x1

    const-string v4, "PURE_BARCODE"

    invoke-direct {v0, v4, v3, v1}, Lcom/google/c/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/c/e;->b:Lcom/google/c/e;

    .line 47
    new-instance v0, Lcom/google/c/e;

    const-class v1, Ljava/util/List;

    const/4 v4, 0x2

    const-string v5, "POSSIBLE_FORMATS"

    invoke-direct {v0, v5, v4, v1}, Lcom/google/c/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/c/e;->c:Lcom/google/c/e;

    .line 53
    new-instance v0, Lcom/google/c/e;

    const-class v1, Ljava/lang/Void;

    const/4 v5, 0x3

    const-string v6, "TRY_HARDER"

    invoke-direct {v0, v6, v5, v1}, Lcom/google/c/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/c/e;->d:Lcom/google/c/e;

    .line 58
    new-instance v0, Lcom/google/c/e;

    const-class v1, Ljava/lang/String;

    const/4 v6, 0x4

    const-string v7, "CHARACTER_SET"

    invoke-direct {v0, v7, v6, v1}, Lcom/google/c/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/c/e;->e:Lcom/google/c/e;

    .line 63
    new-instance v0, Lcom/google/c/e;

    const-class v1, [I

    const/4 v7, 0x5

    const-string v8, "ALLOWED_LENGTHS"

    invoke-direct {v0, v8, v7, v1}, Lcom/google/c/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/c/e;->f:Lcom/google/c/e;

    .line 69
    new-instance v0, Lcom/google/c/e;

    const-class v1, Ljava/lang/Void;

    const/4 v8, 0x6

    const-string v9, "ASSUME_CODE_39_CHECK_DIGIT"

    invoke-direct {v0, v9, v8, v1}, Lcom/google/c/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/c/e;->g:Lcom/google/c/e;

    .line 76
    new-instance v0, Lcom/google/c/e;

    const-class v1, Ljava/lang/Void;

    const/4 v9, 0x7

    const-string v10, "ASSUME_GS1"

    invoke-direct {v0, v10, v9, v1}, Lcom/google/c/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/c/e;->h:Lcom/google/c/e;

    .line 83
    new-instance v0, Lcom/google/c/e;

    const-class v1, Ljava/lang/Void;

    const/16 v10, 0x8

    const-string v11, "RETURN_CODABAR_START_END"

    invoke-direct {v0, v11, v10, v1}, Lcom/google/c/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/c/e;->i:Lcom/google/c/e;

    .line 89
    new-instance v0, Lcom/google/c/e;

    const-class v1, Lcom/google/c/r;

    const/16 v11, 0x9

    const-string v12, "NEED_RESULT_POINT_CALLBACK"

    invoke-direct {v0, v12, v11, v1}, Lcom/google/c/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/c/e;->j:Lcom/google/c/e;

    const/16 v0, 0xa

    .line 30
    new-array v0, v0, [Lcom/google/c/e;

    sget-object v1, Lcom/google/c/e;->a:Lcom/google/c/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/e;->b:Lcom/google/c/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/c/e;->c:Lcom/google/c/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/c/e;->d:Lcom/google/c/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/c/e;->e:Lcom/google/c/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/c/e;->f:Lcom/google/c/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/c/e;->g:Lcom/google/c/e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/c/e;->h:Lcom/google/c/e;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/c/e;->i:Lcom/google/c/e;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/c/e;->j:Lcom/google/c/e;

    aput-object v1, v0, v11

    sput-object v0, Lcom/google/c/e;->l:[Lcom/google/c/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-object p3, p0, Lcom/google/c/e;->k:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/e;
    .locals 1

    .line 30
    const-class v0, Lcom/google/c/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/c/e;

    return-object p0
.end method

.method public static values()[Lcom/google/c/e;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/c/e;->l:[Lcom/google/c/e;

    invoke-virtual {v0}, [Lcom/google/c/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/e;

    return-object v0
.end method
