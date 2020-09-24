.class public final enum Lcom/coloros/anim/d/a;
.super Ljava/lang/Enum;
.source "FileExtension.java"


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

    .line 9
    new-instance v0, Lcom/coloros/anim/d/a;

    const/4 v1, 0x0

    const-string v2, "JSON"

    const-string v3, ".json"

    invoke-direct {v0, v2, v1, v3}, Lcom/coloros/anim/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coloros/anim/d/a;->a:Lcom/coloros/anim/d/a;

    .line 10
    new-instance v0, Lcom/coloros/anim/d/a;

    const/4 v2, 0x1

    const-string v3, "ZIP"

    const-string v4, ".zip"

    invoke-direct {v0, v3, v2, v4}, Lcom/coloros/anim/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coloros/anim/d/a;->b:Lcom/coloros/anim/d/a;

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lcom/coloros/anim/d/a;

    sget-object v3, Lcom/coloros/anim/d/a;->a:Lcom/coloros/anim/d/a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/coloros/anim/d/a;->b:Lcom/coloros/anim/d/a;

    aput-object v1, v0, v2

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/coloros/anim/d/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/anim/d/a;
    .locals 1

    .line 8
    const-class v0, Lcom/coloros/anim/d/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/d/a;

    return-object p0
.end method

.method public static values()[Lcom/coloros/anim/d/a;
    .locals 1

    .line 8
    sget-object v0, Lcom/coloros/anim/d/a;->d:[Lcom/coloros/anim/d/a;

    invoke-virtual {v0}, [Lcom/coloros/anim/d/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/anim/d/a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/coloros/anim/d/a;->c:Ljava/lang/String;

    return-object v0
.end method
