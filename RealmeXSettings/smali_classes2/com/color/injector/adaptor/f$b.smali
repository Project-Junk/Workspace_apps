.class final enum Lcom/color/injector/adaptor/f$b;
.super Ljava/lang/Enum;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/injector/adaptor/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/color/injector/adaptor/f$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/color/injector/adaptor/f$b;

.field public static final enum b:Lcom/color/injector/adaptor/f$b;

.field public static final enum c:Lcom/color/injector/adaptor/f$b;

.field public static final enum d:Lcom/color/injector/adaptor/f$b;

.field public static final enum e:Lcom/color/injector/adaptor/f$b;

.field private static final synthetic f:[Lcom/color/injector/adaptor/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 56
    new-instance v0, Lcom/color/injector/adaptor/f$b;

    const/4 v1, 0x0

    const-string v2, "BOOLEAN"

    invoke-direct {v0, v2, v1}, Lcom/color/injector/adaptor/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/injector/adaptor/f$b;->a:Lcom/color/injector/adaptor/f$b;

    new-instance v0, Lcom/color/injector/adaptor/f$b;

    const/4 v2, 0x1

    const-string v3, "INTEGER"

    invoke-direct {v0, v3, v2}, Lcom/color/injector/adaptor/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/injector/adaptor/f$b;->b:Lcom/color/injector/adaptor/f$b;

    new-instance v0, Lcom/color/injector/adaptor/f$b;

    const/4 v3, 0x2

    const-string v4, "FLOAT"

    invoke-direct {v0, v4, v3}, Lcom/color/injector/adaptor/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/injector/adaptor/f$b;->c:Lcom/color/injector/adaptor/f$b;

    new-instance v0, Lcom/color/injector/adaptor/f$b;

    const/4 v4, 0x3

    const-string v5, "STRING"

    invoke-direct {v0, v5, v4}, Lcom/color/injector/adaptor/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/injector/adaptor/f$b;->d:Lcom/color/injector/adaptor/f$b;

    new-instance v0, Lcom/color/injector/adaptor/f$b;

    const/4 v5, 0x4

    const-string v6, "ARRAY"

    invoke-direct {v0, v6, v5}, Lcom/color/injector/adaptor/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/injector/adaptor/f$b;->e:Lcom/color/injector/adaptor/f$b;

    const/4 v0, 0x5

    .line 55
    new-array v0, v0, [Lcom/color/injector/adaptor/f$b;

    sget-object v6, Lcom/color/injector/adaptor/f$b;->a:Lcom/color/injector/adaptor/f$b;

    aput-object v6, v0, v1

    sget-object v1, Lcom/color/injector/adaptor/f$b;->b:Lcom/color/injector/adaptor/f$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/color/injector/adaptor/f$b;->c:Lcom/color/injector/adaptor/f$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/color/injector/adaptor/f$b;->d:Lcom/color/injector/adaptor/f$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/color/injector/adaptor/f$b;->e:Lcom/color/injector/adaptor/f$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/color/injector/adaptor/f$b;->f:[Lcom/color/injector/adaptor/f$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/color/injector/adaptor/f$b;
    .locals 1

    .line 55
    const-class v0, Lcom/color/injector/adaptor/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/color/injector/adaptor/f$b;

    return-object p0
.end method

.method public static values()[Lcom/color/injector/adaptor/f$b;
    .locals 1

    .line 55
    sget-object v0, Lcom/color/injector/adaptor/f$b;->f:[Lcom/color/injector/adaptor/f$b;

    invoke-virtual {v0}, [Lcom/color/injector/adaptor/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/color/injector/adaptor/f$b;

    return-object v0
.end method
