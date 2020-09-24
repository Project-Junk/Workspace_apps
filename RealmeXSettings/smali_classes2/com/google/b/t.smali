.class public abstract enum Lcom/google/b/t;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/b/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/b/t;

.field public static final enum b:Lcom/google/b/t;

.field private static final synthetic c:[Lcom/google/b/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/google/b/t$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1}, Lcom/google/b/t$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/t;->a:Lcom/google/b/t;

    .line 45
    new-instance v0, Lcom/google/b/t$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1}, Lcom/google/b/t$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/t;->b:Lcom/google/b/t;

    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [Lcom/google/b/t;

    sget-object v1, Lcom/google/b/t;->a:Lcom/google/b/t;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/b/t;->b:Lcom/google/b/t;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/b/t;->c:[Lcom/google/b/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/b/t;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/b/t;
    .locals 1

    .line 27
    const-class v0, Lcom/google/b/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/b/t;

    return-object p0
.end method

.method public static values()[Lcom/google/b/t;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/b/t;->c:[Lcom/google/b/t;

    invoke-virtual {v0}, [Lcom/google/b/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/b/t;

    return-object v0
.end method
