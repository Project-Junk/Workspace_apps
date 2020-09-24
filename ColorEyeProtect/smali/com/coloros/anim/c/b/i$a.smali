.class public final enum Lcom/coloros/anim/c/b/i$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/anim/c/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/anim/c/b/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/coloros/anim/c/b/i$a;

.field public static final enum b:Lcom/coloros/anim/c/b/i$a;

.field private static final synthetic d:[Lcom/coloros/anim/c/b/i$a;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/coloros/anim/c/b/i$a;

    const-string v1, "STAR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/coloros/anim/c/b/i$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/anim/c/b/i$a;->a:Lcom/coloros/anim/c/b/i$a;

    new-instance v0, Lcom/coloros/anim/c/b/i$a;

    const-string v1, "POLYGON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/coloros/anim/c/b/i$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/anim/c/b/i$a;->b:Lcom/coloros/anim/c/b/i$a;

    new-array v0, v4, [Lcom/coloros/anim/c/b/i$a;

    sget-object v1, Lcom/coloros/anim/c/b/i$a;->a:Lcom/coloros/anim/c/b/i$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/anim/c/b/i$a;->b:Lcom/coloros/anim/c/b/i$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/coloros/anim/c/b/i$a;->d:[Lcom/coloros/anim/c/b/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/coloros/anim/c/b/i$a;->c:I

    return-void
.end method

.method public static a(I)Lcom/coloros/anim/c/b/i$a;
    .locals 5

    invoke-static {}, Lcom/coloros/anim/c/b/i$a;->values()[Lcom/coloros/anim/c/b/i$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/coloros/anim/c/b/i$a;->c:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/anim/c/b/i$a;
    .locals 1

    const-class v0, Lcom/coloros/anim/c/b/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/c/b/i$a;

    return-object p0
.end method

.method public static values()[Lcom/coloros/anim/c/b/i$a;
    .locals 1

    sget-object v0, Lcom/coloros/anim/c/b/i$a;->d:[Lcom/coloros/anim/c/b/i$a;

    invoke-virtual {v0}, [Lcom/coloros/anim/c/b/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/anim/c/b/i$a;

    return-object v0
.end method
