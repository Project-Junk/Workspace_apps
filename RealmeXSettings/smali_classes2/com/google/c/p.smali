.class public final enum Lcom/google/c/p;
.super Ljava/lang/Enum;
.source "ResultMetadataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/c/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/c/p;

.field public static final enum b:Lcom/google/c/p;

.field public static final enum c:Lcom/google/c/p;

.field public static final enum d:Lcom/google/c/p;

.field public static final enum e:Lcom/google/c/p;

.field public static final enum f:Lcom/google/c/p;

.field public static final enum g:Lcom/google/c/p;

.field public static final enum h:Lcom/google/c/p;

.field public static final enum i:Lcom/google/c/p;

.field private static final synthetic j:[Lcom/google/c/p;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 30
    new-instance v0, Lcom/google/c/p;

    const/4 v1, 0x0

    const-string v2, "OTHER"

    invoke-direct {v0, v2, v1}, Lcom/google/c/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/p;->a:Lcom/google/c/p;

    .line 39
    new-instance v0, Lcom/google/c/p;

    const/4 v2, 0x1

    const-string v3, "ORIENTATION"

    invoke-direct {v0, v3, v2}, Lcom/google/c/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/p;->b:Lcom/google/c/p;

    .line 50
    new-instance v0, Lcom/google/c/p;

    const/4 v3, 0x2

    const-string v4, "BYTE_SEGMENTS"

    invoke-direct {v0, v4, v3}, Lcom/google/c/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/p;->c:Lcom/google/c/p;

    .line 56
    new-instance v0, Lcom/google/c/p;

    const/4 v4, 0x3

    const-string v5, "ERROR_CORRECTION_LEVEL"

    invoke-direct {v0, v5, v4}, Lcom/google/c/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/p;->d:Lcom/google/c/p;

    .line 61
    new-instance v0, Lcom/google/c/p;

    const/4 v5, 0x4

    const-string v6, "ISSUE_NUMBER"

    invoke-direct {v0, v6, v5}, Lcom/google/c/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/p;->e:Lcom/google/c/p;

    .line 67
    new-instance v0, Lcom/google/c/p;

    const/4 v6, 0x5

    const-string v7, "SUGGESTED_PRICE"

    invoke-direct {v0, v7, v6}, Lcom/google/c/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/p;->f:Lcom/google/c/p;

    .line 73
    new-instance v0, Lcom/google/c/p;

    const/4 v7, 0x6

    const-string v8, "POSSIBLE_COUNTRY"

    invoke-direct {v0, v8, v7}, Lcom/google/c/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/p;->g:Lcom/google/c/p;

    .line 78
    new-instance v0, Lcom/google/c/p;

    const/4 v8, 0x7

    const-string v9, "UPC_EAN_EXTENSION"

    invoke-direct {v0, v9, v8}, Lcom/google/c/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/p;->h:Lcom/google/c/p;

    .line 83
    new-instance v0, Lcom/google/c/p;

    const/16 v9, 0x8

    const-string v10, "PDF417_EXTRA_METADATA"

    invoke-direct {v0, v10, v9}, Lcom/google/c/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/p;->i:Lcom/google/c/p;

    const/16 v0, 0x9

    .line 25
    new-array v0, v0, [Lcom/google/c/p;

    sget-object v10, Lcom/google/c/p;->a:Lcom/google/c/p;

    aput-object v10, v0, v1

    sget-object v1, Lcom/google/c/p;->b:Lcom/google/c/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/p;->c:Lcom/google/c/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/c/p;->d:Lcom/google/c/p;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/c/p;->e:Lcom/google/c/p;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/c/p;->f:Lcom/google/c/p;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/c/p;->g:Lcom/google/c/p;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/c/p;->h:Lcom/google/c/p;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/c/p;->i:Lcom/google/c/p;

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/c/p;->j:[Lcom/google/c/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/p;
    .locals 1

    .line 25
    const-class v0, Lcom/google/c/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/c/p;

    return-object p0
.end method

.method public static values()[Lcom/google/c/p;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/c/p;->j:[Lcom/google/c/p;

    invoke-virtual {v0}, [Lcom/google/c/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/p;

    return-object v0
.end method
