.class public Lcom/coloros/anim/c/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# instance fields
.field private final a:Lcom/coloros/anim/c/b/f;

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Lcom/coloros/anim/c/a/c;

.field private final d:Lcom/coloros/anim/c/a/d;

.field private final e:Lcom/coloros/anim/c/a/f;

.field private final f:Lcom/coloros/anim/c/a/f;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/coloros/anim/c/a/b;

.field private final i:Lcom/coloros/anim/c/a/b;

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/c/b/f;Landroid/graphics/Path$FillType;Lcom/coloros/anim/c/a/c;Lcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/f;Lcom/coloros/anim/c/a/f;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/coloros/anim/c/b/d;->a:Lcom/coloros/anim/c/b/f;

    iput-object p3, p0, Lcom/coloros/anim/c/b/d;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lcom/coloros/anim/c/b/d;->c:Lcom/coloros/anim/c/a/c;

    iput-object p5, p0, Lcom/coloros/anim/c/b/d;->d:Lcom/coloros/anim/c/a/d;

    iput-object p6, p0, Lcom/coloros/anim/c/b/d;->e:Lcom/coloros/anim/c/a/f;

    iput-object p7, p0, Lcom/coloros/anim/c/b/d;->f:Lcom/coloros/anim/c/a/f;

    iput-object p1, p0, Lcom/coloros/anim/c/b/d;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/coloros/anim/c/b/d;->h:Lcom/coloros/anim/c/a/b;

    iput-object p9, p0, Lcom/coloros/anim/c/b/d;->i:Lcom/coloros/anim/c/a/b;

    iput-boolean p10, p0, Lcom/coloros/anim/c/b/d;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 2

    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GradientFill to GradientFillContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/coloros/anim/a/a/h;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/a/a/h;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/d;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/coloros/anim/c/b/f;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/d;->a:Lcom/coloros/anim/c/b/f;

    return-object p0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/d;->b:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public d()Lcom/coloros/anim/c/a/c;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/d;->c:Lcom/coloros/anim/c/a/c;

    return-object p0
.end method

.method public e()Lcom/coloros/anim/c/a/d;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/d;->d:Lcom/coloros/anim/c/a/d;

    return-object p0
.end method

.method public f()Lcom/coloros/anim/c/a/f;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/d;->e:Lcom/coloros/anim/c/a/f;

    return-object p0
.end method

.method public g()Lcom/coloros/anim/c/a/f;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/d;->f:Lcom/coloros/anim/c/a/f;

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/anim/c/b/d;->j:Z

    return p0
.end method
