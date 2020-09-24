.class public Lcom/coloros/anim/c/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/coloros/anim/c/a/b;

.field private final c:Lcom/coloros/anim/c/a/b;

.field private final d:Lcom/coloros/anim/c/a/l;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/l;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/b/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/anim/c/b/k;->b:Lcom/coloros/anim/c/a/b;

    iput-object p3, p0, Lcom/coloros/anim/c/b/k;->c:Lcom/coloros/anim/c/a/b;

    iput-object p4, p0, Lcom/coloros/anim/c/b/k;->d:Lcom/coloros/anim/c/a/l;

    iput-boolean p5, p0, Lcom/coloros/anim/c/b/k;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 2

    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Repeater to RepeaterContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/coloros/anim/a/a/p;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/a/a/p;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/k;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/k;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/k;->b:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public c()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/k;->c:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public d()Lcom/coloros/anim/c/a/l;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/k;->d:Lcom/coloros/anim/c/a/l;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/anim/c/b/k;->e:Z

    return p0
.end method
