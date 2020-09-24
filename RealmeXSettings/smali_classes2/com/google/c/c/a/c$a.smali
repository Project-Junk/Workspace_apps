.class final Lcom/google/c/c/a/c$a;
.super Ljava/lang/Enum;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/c/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/c/c/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field private static final synthetic h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    .line 39
    new-array v0, v0, [I

    sget v1, Lcom/google/c/c/a/c$a;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/c/c/a/c$a;->b:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/c/c/a/c$a;->c:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/c/c/a/c$a;->d:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/google/c/c/a/c$a;->e:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/google/c/c/a/c$a;->f:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/google/c/c/a/c$a;->g:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sput-object v0, Lcom/google/c/c/a/c$a;->h:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .line 39
    sget-object v0, Lcom/google/c/c/a/c$a;->h:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
