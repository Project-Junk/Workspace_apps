.class public final Lb/a/aq;
.super Ljava/util/concurrent/CancellationException;


# instance fields
.field public final a:Lb/a/ap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lb/a/ap;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lb/a/aq;->a:Lb/a/ap;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lb/a/aq;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p0

    check-cast v0, Lb/a/aq;

    if-eq p1, v0, :cond_1

    instance-of v0, p1, Lb/a/aq;

    if-eqz v0, :cond_0

    check-cast p1, Lb/a/aq;

    invoke-virtual {p1}, Lb/a/aq;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/aq;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lb/a/aq;->a:Lb/a/ap;

    iget-object v1, p0, Lb/a/aq;->a:Lb/a/ap;

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/a/aq;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0}, Lb/a/aq;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    invoke-static {}, Lb/a/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/util/concurrent/CancellationException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string v0, "super.fillInStackTrace()"

    invoke-static {p0, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lb/a/aq;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/a/aq;->a:Lb/a/ap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lb/a/aq;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/util/concurrent/CancellationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; job="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb/a/aq;->a:Lb/a/ap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
