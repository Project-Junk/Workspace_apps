.class final La/m;
.super Ljava/lang/Object;

# interfaces
.implements La/e;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/e<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private a:La/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/a/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La/d/a/a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/d/a/a<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/m;->a:La/d/a/a;

    sget-object p1, La/p;->a:La/p;

    iput-object p1, p0, La/m;->b:Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    iput-object p2, p0, La/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(La/d/a/a;Ljava/lang/Object;ILa/d/b/e;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, La/m;-><init>(La/d/a/a;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, La/m;->b:Ljava/lang/Object;

    sget-object v1, La/p;->a:La/p;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, La/m;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La/m;->b:Ljava/lang/Object;

    sget-object v2, La/p;->a:La/p;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, La/m;->a:La/d/a/a;

    if-nez v1, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    invoke-interface {v1}, La/d/a/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, La/m;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    check-cast v2, La/d/a/a;

    iput-object v2, p0, La/m;->a:La/d/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public b()Z
    .locals 1

    iget-object p0, p0, La/m;->b:Ljava/lang/Object;

    sget-object v0, La/p;->a:La/p;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, La/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/m;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Lazy value not initialized yet."

    :goto_0
    return-object p0
.end method
