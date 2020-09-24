.class public final Lb/a/q;
.super La/b/a;

# interfaces
.implements Lb/a/bb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/b/a;",
        "Lb/a/bb<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lb/a/q$a;


# instance fields
.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/a/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/q$a;-><init>(La/d/b/e;)V

    sput-object v0, Lb/a/q;->a:Lb/a/q$a;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    sget-object v0, Lb/a/q;->a:Lb/a/q$a;

    check-cast v0, La/b/f$c;

    invoke-direct {p0, v0}, La/b/a;-><init>(La/b/f$c;)V

    iput-wide p1, p0, Lb/a/q;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lb/a/q;->b:J

    return-wide v0
.end method

.method public a(La/b/f;)Ljava/lang/String;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb/a/r;->a:Lb/a/r$a;

    check-cast v0, La/b/f$c;

    invoke-interface {p1, v0}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object p1

    check-cast p1, Lb/a/r;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/a/r;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "coroutine"

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "currentThread"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oldName"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, " @"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, La/h/f;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0xa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " @"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x23

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lb/a/q;->b:J

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic a(La/b/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lb/a/q;->a(La/b/f;Ljava/lang/String;)V

    return-void
.end method

.method public a(La/b/f;Ljava/lang/String;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "oldState"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    const-string p1, "Thread.currentThread()"

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic b(La/b/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lb/a/q;->a(La/b/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lb/a/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lb/a/q;

    iget-wide v3, p0, Lb/a/q;->b:J

    iget-wide p0, p1, Lb/a/q;->b:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public fold(Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "La/d/a/m<",
            "-TR;-",
            "La/b/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lb/a/bb$a;->a(Lb/a/bb;Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(La/b/f$c;)La/b/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "La/b/f$b;",
            ">(",
            "La/b/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lb/a/bb$a;->a(Lb/a/bb;La/b/f$c;)La/b/f$b;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lb/a/q;->b:J

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public minusKey(La/b/f$c;)La/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/f$c<",
            "*>;)",
            "La/b/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lb/a/bb$a;->b(Lb/a/bb;La/b/f$c;)La/b/f;

    move-result-object p0

    return-object p0
.end method

.method public plus(La/b/f;)La/b/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lb/a/bb$a;->a(Lb/a/bb;La/b/f;)La/b/f;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoroutineId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a/q;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
