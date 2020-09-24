.class public final enum La/f/l;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/f/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/f/l;

.field public static final enum b:La/f/l;

.field public static final enum c:La/f/l;

.field public static final enum d:La/f/l;

.field private static final synthetic e:[La/f/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [La/f/l;

    new-instance v1, La/f/l;

    const-string v2, "PUBLIC"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, La/f/l;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/f/l;->a:La/f/l;

    aput-object v1, v0, v3

    new-instance v1, La/f/l;

    const-string v2, "PROTECTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, La/f/l;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/f/l;->b:La/f/l;

    aput-object v1, v0, v3

    new-instance v1, La/f/l;

    const-string v2, "INTERNAL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, La/f/l;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/f/l;->c:La/f/l;

    aput-object v1, v0, v3

    new-instance v1, La/f/l;

    const-string v2, "PRIVATE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, La/f/l;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/f/l;->d:La/f/l;

    aput-object v1, v0, v3

    sput-object v0, La/f/l;->e:[La/f/l;

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

.method public static valueOf(Ljava/lang/String;)La/f/l;
    .locals 1

    const-class v0, La/f/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/f/l;

    return-object p0
.end method

.method public static values()[La/f/l;
    .locals 1

    sget-object v0, La/f/l;->e:[La/f/l;

    invoke-virtual {v0}, [La/f/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/f/l;

    return-object v0
.end method
