.class public Lb/a/c/d;
.super Lb/a/aj;


# instance fields
.field private b:Lb/a/c/a;

.field private final c:I

.field private final d:I

.field private final e:J

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 1

    const-string v0, "schedulerName"

    invoke-static {p5, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lb/a/aj;-><init>()V

    iput p1, p0, Lb/a/c/d;->c:I

    iput p2, p0, Lb/a/c/d;->d:I

    iput-wide p3, p0, Lb/a/c/d;->e:J

    iput-object p5, p0, Lb/a/c/d;->f:Ljava/lang/String;

    invoke-direct {p0}, Lb/a/c/d;->a()Lb/a/c/a;

    move-result-object p1

    iput-object p1, p0, Lb/a/c/d;->b:Lb/a/c/a;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 7

    const-string v0, "schedulerName"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v4, Lb/a/c/m;->f:J

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lb/a/c/d;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ILa/d/b/e;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget p1, Lb/a/c/m;->d:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    sget p2, Lb/a/c/m;->e:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const-string p3, "DefaultDispatcher"

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lb/a/c/d;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method private final a()Lb/a/c/a;
    .locals 7

    new-instance v6, Lb/a/c/a;

    iget v1, p0, Lb/a/c/d;->c:I

    iget v2, p0, Lb/a/c/d;->d:I

    iget-wide v3, p0, Lb/a/c/d;->e:J

    iget-object v5, p0, Lb/a/c/d;->f:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lb/a/c/a;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public final a(I)Lb/a/m;
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lb/a/c/f;

    sget-object v1, Lb/a/c/l;->b:Lb/a/c/l;

    invoke-direct {v0, p0, p1, v1}, Lb/a/c/f;-><init>(Lb/a/c/d;ILb/a/c/l;)V

    check-cast v0, Lb/a/m;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected positive parallelism level, but have "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public a(La/b/f;Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lb/a/c/d;->b:Lb/a/c/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lb/a/c/a;->a(Lb/a/c/a;Ljava/lang/Runnable;Lb/a/c/j;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lb/a/x;->b:Lb/a/x;

    invoke-virtual {p0, p1, p2}, Lb/a/x;->a(La/b/f;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Lb/a/c/j;Z)V
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lb/a/c/d;->b:Lb/a/c/a;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/c/a;->a(Ljava/lang/Runnable;Lb/a/c/j;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p3, Lb/a/x;->b:Lb/a/x;

    iget-object p0, p0, Lb/a/c/d;->b:Lb/a/c/a;

    invoke-virtual {p0, p1, p2}, Lb/a/c/a;->a(Ljava/lang/Runnable;Lb/a/c/j;)Lb/a/c/i;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p3, p0}, Lb/a/x;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lb/a/c/d;->b:Lb/a/c/a;

    invoke-virtual {p0}, Lb/a/c/a;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lb/a/aj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[scheduler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb/a/c/d;->b:Lb/a/c/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
