.class public final Lcom/coloros/anim/c/b/q$a;
.super Ljava/lang/Enum;
.source "ShapeTrimPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/anim/c/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/anim/c/b/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [I

    sget v1, Lcom/coloros/anim/c/b/q$a;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/coloros/anim/c/b/q$a;->b:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/coloros/anim/c/b/q$a;->c:[I

    return-void
.end method

.method public static a(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 74
    sget p0, Lcom/coloros/anim/c/b/q$a;->b:I

    return p0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown trim path type "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    sget p0, Lcom/coloros/anim/c/b/q$a;->a:I

    return p0
.end method
