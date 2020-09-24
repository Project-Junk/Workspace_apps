.class public final enum Lb/a/c/a$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/a/c/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/c/a$c;

.field public static final enum b:Lb/a/c/a$c;

.field public static final enum c:Lb/a/c/a$c;

.field public static final enum d:Lb/a/c/a$c;

.field public static final enum e:Lb/a/c/a$c;

.field private static final synthetic f:[Lb/a/c/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lb/a/c/a$c;

    new-instance v1, Lb/a/c/a$c;

    const-string v2, "CPU_ACQUIRED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lb/a/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/a/c/a$c;->a:Lb/a/c/a$c;

    aput-object v1, v0, v3

    new-instance v1, Lb/a/c/a$c;

    const-string v2, "BLOCKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lb/a/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/a/c/a$c;->b:Lb/a/c/a$c;

    aput-object v1, v0, v3

    new-instance v1, Lb/a/c/a$c;

    const-string v2, "PARKING"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lb/a/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/a/c/a$c;->c:Lb/a/c/a$c;

    aput-object v1, v0, v3

    new-instance v1, Lb/a/c/a$c;

    const-string v2, "RETIRING"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lb/a/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/a/c/a$c;->d:Lb/a/c/a$c;

    aput-object v1, v0, v3

    new-instance v1, Lb/a/c/a$c;

    const-string v2, "TERMINATED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lb/a/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/a/c/a$c;->e:Lb/a/c/a$c;

    aput-object v1, v0, v3

    sput-object v0, Lb/a/c/a$c;->f:[Lb/a/c/a$c;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/c/a$c;
    .locals 1

    const-class v0, Lb/a/c/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/a/c/a$c;

    return-object p0
.end method

.method public static values()[Lb/a/c/a$c;
    .locals 1

    sget-object v0, Lb/a/c/a$c;->f:[Lb/a/c/a$c;

    invoke-virtual {v0}, [Lb/a/c/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/c/a$c;

    return-object v0
.end method
