.class public final enum Lcom/coloros/anim/d/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/anim/d/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/coloros/anim/d/a;

.field public static final enum b:Lcom/coloros/anim/d/a;

.field private static final synthetic d:[Lcom/coloros/anim/d/a;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/coloros/anim/d/a;

    const-string v1, "JSON"

    const-string v2, ".json"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/coloros/anim/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coloros/anim/d/a;->a:Lcom/coloros/anim/d/a;

    new-instance v0, Lcom/coloros/anim/d/a;

    const-string v1, "ZIP"

    const-string v2, ".zip"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/coloros/anim/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coloros/anim/d/a;->b:Lcom/coloros/anim/d/a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coloros/anim/d/a;

    sget-object v1, Lcom/coloros/anim/d/a;->a:Lcom/coloros/anim/d/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coloros/anim/d/a;->b:Lcom/coloros/anim/d/a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coloros/anim/d/a;->d:[Lcom/coloros/anim/d/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/coloros/anim/d/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/anim/d/a;
    .locals 1

    const-class v0, Lcom/coloros/anim/d/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/d/a;

    return-object p0
.end method

.method public static values()[Lcom/coloros/anim/d/a;
    .locals 1

    sget-object v0, Lcom/coloros/anim/d/a;->d:[Lcom/coloros/anim/d/a;

    invoke-virtual {v0}, [Lcom/coloros/anim/d/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/anim/d/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/anim/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/d/a;->c:Ljava/lang/String;

    return-object p0
.end method
