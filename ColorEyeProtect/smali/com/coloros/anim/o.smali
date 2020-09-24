.class public final enum Lcom/coloros/anim/o;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/anim/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/coloros/anim/o;

.field public static final enum b:Lcom/coloros/anim/o;

.field public static final enum c:Lcom/coloros/anim/o;

.field private static final synthetic d:[Lcom/coloros/anim/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/coloros/anim/o;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coloros/anim/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/anim/o;->a:Lcom/coloros/anim/o;

    new-instance v0, Lcom/coloros/anim/o;

    const-string v1, "HARDWARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/coloros/anim/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/anim/o;->b:Lcom/coloros/anim/o;

    new-instance v0, Lcom/coloros/anim/o;

    const-string v1, "SOFTWARE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/coloros/anim/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/anim/o;->c:Lcom/coloros/anim/o;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/coloros/anim/o;

    sget-object v1, Lcom/coloros/anim/o;->a:Lcom/coloros/anim/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/anim/o;->b:Lcom/coloros/anim/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coloros/anim/o;->c:Lcom/coloros/anim/o;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coloros/anim/o;->d:[Lcom/coloros/anim/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/anim/o;
    .locals 1

    const-class v0, Lcom/coloros/anim/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/o;

    return-object p0
.end method

.method public static values()[Lcom/coloros/anim/o;
    .locals 1

    sget-object v0, Lcom/coloros/anim/o;->d:[Lcom/coloros/anim/o;

    invoke-virtual {v0}, [Lcom/coloros/anim/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/anim/o;

    return-object v0
.end method
