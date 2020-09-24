.class public La/d/b/m;
.super La/d/b/l;


# instance fields
.field private final a:La/f/d;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/f/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, La/d/b/l;-><init>()V

    iput-object p1, p0, La/d/b/m;->a:La/f/d;

    iput-object p2, p0, La/d/b/m;->b:Ljava/lang/String;

    iput-object p3, p0, La/d/b/m;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, La/d/b/m;->a()La/f/j$a;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-interface {p0, v0}, La/f/j$a;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La/d/b/m;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getOwner()La/f/d;
    .locals 0

    iget-object p0, p0, La/d/b/m;->a:La/f/d;

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La/d/b/m;->c:Ljava/lang/String;

    return-object p0
.end method
