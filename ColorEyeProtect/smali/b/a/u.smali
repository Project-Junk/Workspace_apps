.class public final enum Lb/a/u;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/a/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/u;

.field public static final enum b:Lb/a/u;

.field public static final enum c:Lb/a/u;

.field public static final enum d:Lb/a/u;

.field private static final synthetic e:[Lb/a/u;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lb/a/u;

    new-instance v1, Lb/a/u;

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lb/a/u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/a/u;->a:Lb/a/u;

    aput-object v1, v0, v3

    new-instance v1, Lb/a/u;

    const-string v2, "LAZY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lb/a/u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/a/u;->b:Lb/a/u;

    aput-object v1, v0, v3

    new-instance v1, Lb/a/u;

    const-string v2, "ATOMIC"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lb/a/u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/a/u;->c:Lb/a/u;

    aput-object v1, v0, v3

    new-instance v1, Lb/a/u;

    const-string v2, "UNDISPATCHED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lb/a/u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/a/u;->d:Lb/a/u;

    aput-object v1, v0, v3

    sput-object v0, Lb/a/u;->e:[Lb/a/u;

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

.method public static valueOf(Ljava/lang/String;)Lb/a/u;
    .locals 1

    const-class v0, Lb/a/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/a/u;

    return-object p0
.end method

.method public static values()[Lb/a/u;
    .locals 1

    sget-object v0, Lb/a/u;->e:[Lb/a/u;

    invoke-virtual {v0}, [Lb/a/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/u;

    return-object v0
.end method


# virtual methods
.method public final a(La/d/a/m;Ljava/lang/Object;La/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "La/d/a/m<",
            "-TR;-",
            "La/b/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "La/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb/a/v;->b:[I

    invoke-virtual {p0}, Lb/a/u;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, La/i;

    invoke-direct {p0}, La/i;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p1, p2, p3}, Lb/a/b/b;->a(La/d/a/m;Ljava/lang/Object;La/b/c;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2, p3}, La/b/e;->a(La/d/a/m;Ljava/lang/Object;La/b/c;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2, p3}, Lb/a/b/a;->a(La/d/a/m;Ljava/lang/Object;La/b/c;)V

    :goto_0
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a()Z
    .locals 1

    check-cast p0, Lb/a/u;

    sget-object v0, Lb/a/u;->b:Lb/a/u;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
