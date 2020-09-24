.class public final Lb/a/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lb/a/l;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "kotlinx.coroutines.scheduler"

    invoke-static {v0}, Lb/a/a/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0xddf

    if-eq v1, v2, :cond_1

    const v2, 0x1ad6f

    if-ne v1, v2, :cond_3

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lb/a/l;->b:Z

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System property \'kotlinx.coroutines.scheduler\' has unrecognized value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final a(Lb/a/s;La/b/f;)La/b/f;
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lb/a/s;->a()La/b/f;

    move-result-object p0

    invoke-interface {p0, p1}, La/b/f;->plus(La/b/f;)La/b/f;

    move-result-object p0

    invoke-static {}, Lb/a/w;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lb/a/q;

    sget-object v0, Lb/a/l;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lb/a/q;-><init>(J)V

    check-cast p1, La/b/f;

    invoke-interface {p0, p1}, La/b/f;->plus(La/b/f;)La/b/f;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    invoke-static {}, Lb/a/ad;->a()Lb/a/m;

    move-result-object v0

    if-eq p0, v0, :cond_1

    sget-object v0, La/b/d;->a:La/b/d$b;

    check-cast v0, La/b/f$c;

    invoke-interface {p0, v0}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lb/a/ad;->a()Lb/a/m;

    move-result-object p0

    check-cast p0, La/b/f;

    invoke-interface {p1, p0}, La/b/f;->plus(La/b/f;)La/b/f;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static final a()Lb/a/m;
    .locals 1

    sget-boolean v0, Lb/a/l;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lb/a/c/c;->b:Lb/a/c/c;

    :goto_0
    check-cast v0, Lb/a/m;

    goto :goto_1

    :cond_0
    sget-object v0, Lb/a/g;->b:Lb/a/g;

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static final a(La/b/f;)Ljava/lang/String;
    .locals 4

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lb/a/w;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lb/a/q;->a:Lb/a/q$a;

    check-cast v0, La/b/f$c;

    invoke-interface {p0, v0}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object v0

    check-cast v0, Lb/a/q;

    if-eqz v0, :cond_2

    sget-object v1, Lb/a/r;->a:Lb/a/r$a;

    check-cast v1, La/b/f$c;

    invoke-interface {p0, v1}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object p0

    check-cast p0, Lb/a/r;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lb/a/r;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "coroutine"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x23

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lb/a/q;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method
