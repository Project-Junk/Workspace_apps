.class public final enum Lcom/oppo/a/a/a/b$a;
.super Ljava/lang/Enum;
.source "IDiracServiceCommonDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppo/a/a/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/oppo/a/a/a/b$a;

.field public static final enum b:Lcom/oppo/a/a/a/b$a;

.field public static final enum c:Lcom/oppo/a/a/a/b$a;

.field public static final enum d:Lcom/oppo/a/a/a/b$a;

.field public static final enum e:Lcom/oppo/a/a/a/b$a;

.field private static final synthetic f:[Lcom/oppo/a/a/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/oppo/a/a/a/b$a;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/oppo/a/a/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/a/a/a/b$a;->a:Lcom/oppo/a/a/a/b$a;

    new-instance v0, Lcom/oppo/a/a/a/b$a;

    const/4 v2, 0x1

    const-string v3, "MUSIC"

    invoke-direct {v0, v3, v2}, Lcom/oppo/a/a/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    new-instance v0, Lcom/oppo/a/a/a/b$a;

    const/4 v3, 0x2

    const-string v4, "MOIVE"

    invoke-direct {v0, v4, v3}, Lcom/oppo/a/a/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    new-instance v0, Lcom/oppo/a/a/a/b$a;

    const/4 v4, 0x3

    const-string v5, "GAME"

    invoke-direct {v0, v5, v4}, Lcom/oppo/a/a/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/a/a/a/b$a;->d:Lcom/oppo/a/a/a/b$a;

    new-instance v0, Lcom/oppo/a/a/a/b$a;

    const/4 v5, 0x4

    const-string v6, "AUTO"

    invoke-direct {v0, v6, v5}, Lcom/oppo/a/a/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/a/a/a/b$a;->e:Lcom/oppo/a/a/a/b$a;

    const/4 v0, 0x5

    .line 22
    new-array v0, v0, [Lcom/oppo/a/a/a/b$a;

    sget-object v6, Lcom/oppo/a/a/a/b$a;->a:Lcom/oppo/a/a/a/b$a;

    aput-object v6, v0, v1

    sget-object v1, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/a/a/a/b$a;->d:Lcom/oppo/a/a/a/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oppo/a/a/a/b$a;->e:Lcom/oppo/a/a/a/b$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oppo/a/a/a/b$a;->f:[Lcom/oppo/a/a/a/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/a/a/a/b$a;
    .locals 1

    .line 22
    const-class v0, Lcom/oppo/a/a/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppo/a/a/a/b$a;

    return-object p0
.end method

.method public static values()[Lcom/oppo/a/a/a/b$a;
    .locals 1

    .line 22
    sget-object v0, Lcom/oppo/a/a/a/b$a;->f:[Lcom/oppo/a/a/a/b$a;

    invoke-virtual {v0}, [Lcom/oppo/a/a/a/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/a/a/a/b$a;

    return-object v0
.end method
