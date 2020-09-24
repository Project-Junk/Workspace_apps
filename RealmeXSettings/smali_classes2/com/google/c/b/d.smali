.class public final enum Lcom/google/c/b/d;
.super Ljava/lang/Enum;
.source "CharacterSetECI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/c/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/google/c/b/d;

.field private static final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/c/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/c/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic F:[Lcom/google/c/b/d;

.field public static final enum a:Lcom/google/c/b/d;

.field public static final enum b:Lcom/google/c/b/d;

.field public static final enum c:Lcom/google/c/b/d;

.field public static final enum d:Lcom/google/c/b/d;

.field public static final enum e:Lcom/google/c/b/d;

.field public static final enum f:Lcom/google/c/b/d;

.field public static final enum g:Lcom/google/c/b/d;

.field public static final enum h:Lcom/google/c/b/d;

.field public static final enum i:Lcom/google/c/b/d;

.field public static final enum j:Lcom/google/c/b/d;

.field public static final enum k:Lcom/google/c/b/d;

.field public static final enum l:Lcom/google/c/b/d;

.field public static final enum m:Lcom/google/c/b/d;

.field public static final enum n:Lcom/google/c/b/d;

.field public static final enum o:Lcom/google/c/b/d;

.field public static final enum p:Lcom/google/c/b/d;

.field public static final enum q:Lcom/google/c/b/d;

.field public static final enum r:Lcom/google/c/b/d;

.field public static final enum s:Lcom/google/c/b/d;

.field public static final enum t:Lcom/google/c/b/d;

.field public static final enum u:Lcom/google/c/b/d;

.field public static final enum v:Lcom/google/c/b/d;

.field public static final enum w:Lcom/google/c/b/d;

.field public static final enum x:Lcom/google/c/b/d;

.field public static final enum y:Lcom/google/c/b/d;

.field public static final enum z:Lcom/google/c/b/d;


# instance fields
.field public final B:[I

.field private final E:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 33
    new-instance v0, Lcom/google/c/b/d;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "Cp437"

    invoke-direct {v0, v5, v3, v2, v4}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->a:Lcom/google/c/b/d;

    .line 34
    new-instance v0, Lcom/google/c/b/d;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const-string v4, "ISO-8859-1"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "ISO8859_1"

    invoke-direct {v0, v6, v5, v2, v4}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->b:Lcom/google/c/b/d;

    .line 35
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const-string v6, "ISO8859_2"

    invoke-direct {v0, v6, v1, v4, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->c:Lcom/google/c/b/d;

    .line 36
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-3"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    const-string v7, "ISO8859_3"

    const/4 v8, 0x3

    invoke-direct {v0, v7, v8, v6, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->d:Lcom/google/c/b/d;

    .line 37
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-4"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x6

    const-string v8, "ISO8859_4"

    invoke-direct {v0, v8, v4, v7, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->e:Lcom/google/c/b/d;

    .line 38
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-5"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x7

    const-string v9, "ISO8859_5"

    invoke-direct {v0, v9, v6, v8, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->f:Lcom/google/c/b/d;

    .line 39
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-6"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x8

    const-string v10, "ISO8859_6"

    invoke-direct {v0, v10, v7, v9, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->g:Lcom/google/c/b/d;

    .line 40
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-7"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x9

    const-string v11, "ISO8859_7"

    invoke-direct {v0, v11, v8, v10, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->h:Lcom/google/c/b/d;

    .line 41
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-8"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xa

    const-string v12, "ISO8859_8"

    invoke-direct {v0, v12, v9, v11, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->i:Lcom/google/c/b/d;

    .line 42
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-9"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0xb

    const-string v13, "ISO8859_9"

    invoke-direct {v0, v13, v10, v12, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->j:Lcom/google/c/b/d;

    .line 43
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-10"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0xc

    const-string v14, "ISO8859_10"

    invoke-direct {v0, v14, v11, v13, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->k:Lcom/google/c/b/d;

    .line 44
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-11"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0xd

    const-string v15, "ISO8859_11"

    invoke-direct {v0, v15, v12, v14, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->l:Lcom/google/c/b/d;

    .line 45
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-13"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xf

    const-string v12, "ISO8859_13"

    invoke-direct {v0, v12, v13, v15, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->m:Lcom/google/c/b/d;

    .line 46
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-14"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x10

    const-string v13, "ISO8859_14"

    invoke-direct {v0, v13, v14, v12, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->n:Lcom/google/c/b/d;

    .line 47
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-15"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v13, "ISO8859_15"

    const/16 v14, 0xe

    const/16 v11, 0x11

    invoke-direct {v0, v13, v14, v11, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->o:Lcom/google/c/b/d;

    .line 48
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "ISO-8859-16"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v11, "ISO8859_16"

    const/16 v13, 0x12

    invoke-direct {v0, v11, v15, v13, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->p:Lcom/google/c/b/d;

    .line 49
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "Shift_JIS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v11, "SJIS"

    const/16 v13, 0x14

    invoke-direct {v0, v11, v12, v13, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->q:Lcom/google/c/b/d;

    .line 50
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "windows-1250"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v11, "Cp1250"

    const/16 v13, 0x11

    const/16 v14, 0x15

    invoke-direct {v0, v11, v13, v14, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->r:Lcom/google/c/b/d;

    .line 51
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "windows-1251"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v11, "Cp1251"

    const/16 v13, 0x12

    const/16 v14, 0x16

    invoke-direct {v0, v11, v13, v14, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->s:Lcom/google/c/b/d;

    .line 52
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "windows-1252"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v11, "Cp1252"

    const/16 v13, 0x13

    const/16 v14, 0x17

    invoke-direct {v0, v11, v13, v14, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->t:Lcom/google/c/b/d;

    .line 53
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "windows-1256"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v11, "Cp1256"

    const/16 v13, 0x14

    const/16 v14, 0x18

    invoke-direct {v0, v11, v13, v14, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->u:Lcom/google/c/b/d;

    .line 54
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "UTF-16BE"

    const-string v11, "UnicodeBig"

    filled-new-array {v2, v11}, [Ljava/lang/String;

    move-result-object v2

    const-string v11, "UnicodeBigUnmarked"

    const/16 v13, 0x15

    const/16 v14, 0x19

    invoke-direct {v0, v11, v13, v14, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->v:Lcom/google/c/b/d;

    .line 55
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "UTF-8"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v11, "UTF8"

    const/16 v13, 0x16

    const/16 v14, 0x1a

    invoke-direct {v0, v11, v13, v14, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->w:Lcom/google/c/b/d;

    .line 56
    new-instance v0, Lcom/google/c/b/d;

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const-string v11, "US-ASCII"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const-string v13, "ASCII"

    const/16 v14, 0x17

    invoke-direct {v0, v13, v14, v2, v11}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->x:Lcom/google/c/b/d;

    .line 57
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "Big5"

    invoke-direct {v0, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->y:Lcom/google/c/b/d;

    .line 58
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "GB2312"

    const-string v11, "EUC_CN"

    const-string v13, "GBK"

    filled-new-array {v2, v11, v13}, [Ljava/lang/String;

    move-result-object v2

    const-string v11, "GB18030"

    const/16 v13, 0x19

    const/16 v14, 0x1d

    invoke-direct {v0, v11, v13, v14, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->z:Lcom/google/c/b/d;

    .line 59
    new-instance v0, Lcom/google/c/b/d;

    const-string v2, "EUC-KR"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v11, "EUC_KR"

    const/16 v13, 0x1a

    const/16 v14, 0x1e

    invoke-direct {v0, v11, v13, v14, v2}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/d;->A:Lcom/google/c/b/d;

    const/16 v0, 0x1b

    .line 30
    new-array v0, v0, [Lcom/google/c/b/d;

    sget-object v2, Lcom/google/c/b/d;->a:Lcom/google/c/b/d;

    aput-object v2, v0, v3

    sget-object v2, Lcom/google/c/b/d;->b:Lcom/google/c/b/d;

    aput-object v2, v0, v5

    sget-object v2, Lcom/google/c/b/d;->c:Lcom/google/c/b/d;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/c/b/d;->d:Lcom/google/c/b/d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->e:Lcom/google/c/b/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/c/b/d;->f:Lcom/google/c/b/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/c/b/d;->g:Lcom/google/c/b/d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/c/b/d;->h:Lcom/google/c/b/d;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/c/b/d;->i:Lcom/google/c/b/d;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/c/b/d;->j:Lcom/google/c/b/d;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/c/b/d;->k:Lcom/google/c/b/d;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->l:Lcom/google/c/b/d;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->m:Lcom/google/c/b/d;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->n:Lcom/google/c/b/d;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->o:Lcom/google/c/b/d;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->p:Lcom/google/c/b/d;

    aput-object v1, v0, v15

    sget-object v1, Lcom/google/c/b/d;->q:Lcom/google/c/b/d;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/c/b/d;->r:Lcom/google/c/b/d;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->s:Lcom/google/c/b/d;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->t:Lcom/google/c/b/d;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->u:Lcom/google/c/b/d;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->v:Lcom/google/c/b/d;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->w:Lcom/google/c/b/d;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->x:Lcom/google/c/b/d;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->y:Lcom/google/c/b/d;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->z:Lcom/google/c/b/d;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/d;->A:Lcom/google/c/b/d;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/c/b/d;->F:[Lcom/google/c/b/d;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/c/b/d;->C:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/c/b/d;->D:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcom/google/c/b/d;->values()[Lcom/google/c/b/d;

    move-result-object v0

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 65
    iget-object v5, v4, Lcom/google/c/b/d;->B:[I

    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    .line 66
    sget-object v9, Lcom/google/c/b/d;->C:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 68
    :cond_0
    sget-object v5, Lcom/google/c/b/d;->D:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/c/b/d;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v5, v4, Lcom/google/c/b/d;->E:[Ljava/lang/String;

    array-length v6, v5

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 70
    sget-object v9, Lcom/google/c/b/d;->D:Ljava/util/Map;

    invoke-interface {v9, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1b
        0xaa
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    aput v2, v0, v1

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x18

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/c/b/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 83
    new-array p1, p1, [I

    const/4 p2, 0x0

    aput p3, p1, p2

    iput-object p1, p0, Lcom/google/c/b/d;->B:[I

    .line 84
    iput-object p4, p0, Lcom/google/c/b/d;->E:[Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-object p3, p0, Lcom/google/c/b/d;->B:[I

    .line 89
    iput-object p4, p0, Lcom/google/c/b/d;->E:[Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/google/c/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-ge p0, v0, :cond_0

    .line 106
    sget-object v0, Lcom/google/c/b/d;->C:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/c/b/d;

    return-object p0

    .line 104
    :cond_0
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/c/b/d;
    .locals 1

    .line 115
    sget-object v0, Lcom/google/c/b/d;->D:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/c/b/d;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/b/d;
    .locals 1

    .line 30
    const-class v0, Lcom/google/c/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/c/b/d;

    return-object p0
.end method

.method public static values()[Lcom/google/c/b/d;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/c/b/d;->F:[Lcom/google/c/b/d;

    invoke-virtual {v0}, [Lcom/google/c/b/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/b/d;

    return-object v0
.end method
