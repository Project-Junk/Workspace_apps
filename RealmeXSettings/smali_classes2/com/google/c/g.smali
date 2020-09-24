.class public final enum Lcom/google/c/g;
.super Ljava/lang/Enum;
.source "EncodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/c/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/c/g;

.field public static final enum b:Lcom/google/c/g;

.field public static final enum c:Lcom/google/c/g;

.field public static final enum d:Lcom/google/c/g;

.field public static final enum e:Lcom/google/c/g;

.field public static final enum f:Lcom/google/c/g;

.field public static final enum g:Lcom/google/c/g;

.field public static final enum h:Lcom/google/c/g;

.field public static final enum i:Lcom/google/c/g;

.field public static final enum j:Lcom/google/c/g;

.field private static final synthetic k:[Lcom/google/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 33
    new-instance v0, Lcom/google/c/g;

    const/4 v1, 0x0

    const-string v2, "ERROR_CORRECTION"

    invoke-direct {v0, v2, v1}, Lcom/google/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/g;->a:Lcom/google/c/g;

    .line 38
    new-instance v0, Lcom/google/c/g;

    const/4 v2, 0x1

    const-string v3, "CHARACTER_SET"

    invoke-direct {v0, v3, v2}, Lcom/google/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/g;->b:Lcom/google/c/g;

    .line 43
    new-instance v0, Lcom/google/c/g;

    const/4 v3, 0x2

    const-string v4, "DATA_MATRIX_SHAPE"

    invoke-direct {v0, v4, v3}, Lcom/google/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/g;->c:Lcom/google/c/g;

    .line 48
    new-instance v0, Lcom/google/c/g;

    const/4 v4, 0x3

    const-string v5, "MIN_SIZE"

    invoke-direct {v0, v5, v4}, Lcom/google/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/g;->d:Lcom/google/c/g;

    .line 53
    new-instance v0, Lcom/google/c/g;

    const/4 v5, 0x4

    const-string v6, "MAX_SIZE"

    invoke-direct {v0, v6, v5}, Lcom/google/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/g;->e:Lcom/google/c/g;

    .line 60
    new-instance v0, Lcom/google/c/g;

    const/4 v6, 0x5

    const-string v7, "MARGIN"

    invoke-direct {v0, v7, v6}, Lcom/google/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/g;->f:Lcom/google/c/g;

    .line 65
    new-instance v0, Lcom/google/c/g;

    const/4 v7, 0x6

    const-string v8, "PDF417_COMPACT"

    invoke-direct {v0, v8, v7}, Lcom/google/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/g;->g:Lcom/google/c/g;

    .line 71
    new-instance v0, Lcom/google/c/g;

    const/4 v8, 0x7

    const-string v9, "PDF417_COMPACTION"

    invoke-direct {v0, v9, v8}, Lcom/google/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/g;->h:Lcom/google/c/g;

    .line 77
    new-instance v0, Lcom/google/c/g;

    const/16 v9, 0x8

    const-string v10, "PDF417_DIMENSIONS"

    invoke-direct {v0, v10, v9}, Lcom/google/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/g;->i:Lcom/google/c/g;

    .line 85
    new-instance v0, Lcom/google/c/g;

    const/16 v10, 0x9

    const-string v11, "AZTEC_LAYERS"

    invoke-direct {v0, v11, v10}, Lcom/google/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/g;->j:Lcom/google/c/g;

    const/16 v0, 0xa

    .line 24
    new-array v0, v0, [Lcom/google/c/g;

    sget-object v11, Lcom/google/c/g;->a:Lcom/google/c/g;

    aput-object v11, v0, v1

    sget-object v1, Lcom/google/c/g;->b:Lcom/google/c/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/g;->c:Lcom/google/c/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/c/g;->d:Lcom/google/c/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/c/g;->e:Lcom/google/c/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/c/g;->f:Lcom/google/c/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/c/g;->g:Lcom/google/c/g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/c/g;->h:Lcom/google/c/g;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/c/g;->i:Lcom/google/c/g;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/c/g;->j:Lcom/google/c/g;

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/c/g;->k:[Lcom/google/c/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/g;
    .locals 1

    .line 24
    const-class v0, Lcom/google/c/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/c/g;

    return-object p0
.end method

.method public static values()[Lcom/google/c/g;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/c/g;->k:[Lcom/google/c/g;

    invoke-virtual {v0}, [Lcom/google/c/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/g;

    return-object v0
.end method
