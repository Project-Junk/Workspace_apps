.class public Lcom/coloros/anim/c/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/c/b/q$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/coloros/anim/c/b/q$a;

.field private final c:Lcom/coloros/anim/c/a/b;

.field private final d:Lcom/coloros/anim/c/a/b;

.field private final e:Lcom/coloros/anim/c/a/b;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/c/b/q$a;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/b/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/anim/c/b/q;->b:Lcom/coloros/anim/c/b/q$a;

    iput-object p3, p0, Lcom/coloros/anim/c/b/q;->c:Lcom/coloros/anim/c/a/b;

    iput-object p4, p0, Lcom/coloros/anim/c/b/q;->d:Lcom/coloros/anim/c/a/b;

    iput-object p5, p0, Lcom/coloros/anim/c/b/q;->e:Lcom/coloros/anim/c/a/b;

    iput-boolean p6, p0, Lcom/coloros/anim/c/b/q;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 1

    sget-boolean p1, Lcom/coloros/anim/f/b;->d:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShapeTrimPath to TrimPathContent, layer = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/coloros/anim/a/a/s;

    invoke-direct {p1, p2, p0}, Lcom/coloros/anim/a/a/s;-><init>(Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/q;)V

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/q;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/coloros/anim/c/b/q$a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/q;->b:Lcom/coloros/anim/c/b/q$a;

    return-object p0
.end method

.method public c()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/q;->d:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public d()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/q;->c:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public e()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/q;->e:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/anim/c/b/q;->f:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/c/b/q;->c:Lcom/coloros/anim/c/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/c/b/q;->d:Lcom/coloros/anim/c/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/anim/c/b/q;->e:Lcom/coloros/anim/c/a/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
