.class public final Lcom/coloros/anim/c/b/m;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# instance fields
.field public final a:Landroid/graphics/Path$FillType;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/coloros/anim/c/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lcom/coloros/anim/c/a/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/coloros/anim/c/a/a;Lcom/coloros/anim/c/a/d;Z)V
    .locals 0
    .param p4    # Lcom/coloros/anim/c/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/coloros/anim/c/a/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/coloros/anim/c/b/m;->b:Ljava/lang/String;

    .line 28
    iput-boolean p2, p0, Lcom/coloros/anim/c/b/m;->f:Z

    .line 29
    iput-object p3, p0, Lcom/coloros/anim/c/b/m;->a:Landroid/graphics/Path$FillType;

    .line 30
    iput-object p4, p0, Lcom/coloros/anim/c/b/m;->c:Lcom/coloros/anim/c/a/a;

    .line 31
    iput-object p5, p0, Lcom/coloros/anim/c/b/m;->d:Lcom/coloros/anim/c/a/d;

    .line 32
    iput-boolean p6, p0, Lcom/coloros/anim/c/b/m;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 2

    .line 59
    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShapeFill to FillContent, layer = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 62
    :cond_0
    new-instance v0, Lcom/coloros/anim/a/a/g;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/a/a/g;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/m;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/anim/c/b/m;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
