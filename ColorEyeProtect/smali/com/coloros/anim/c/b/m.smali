.class public Lcom/coloros/anim/c/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# instance fields
.field private final a:Z

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/coloros/anim/c/a/a;

.field private final e:Lcom/coloros/anim/c/a/d;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/coloros/anim/c/a/a;Lcom/coloros/anim/c/a/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/b/m;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/coloros/anim/c/b/m;->a:Z

    iput-object p3, p0, Lcom/coloros/anim/c/b/m;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lcom/coloros/anim/c/b/m;->d:Lcom/coloros/anim/c/a/a;

    iput-object p5, p0, Lcom/coloros/anim/c/b/m;->e:Lcom/coloros/anim/c/a/d;

    iput-boolean p6, p0, Lcom/coloros/anim/c/b/m;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 2

    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill to FillContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/coloros/anim/a/a/g;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/a/a/g;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/m;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/m;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/coloros/anim/c/a/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/m;->d:Lcom/coloros/anim/c/a/a;

    return-object p0
.end method

.method public c()Lcom/coloros/anim/c/a/d;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/m;->e:Lcom/coloros/anim/c/a/d;

    return-object p0
.end method

.method public d()Landroid/graphics/Path$FillType;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/m;->b:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/anim/c/b/m;->f:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/anim/c/b/m;->a:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
