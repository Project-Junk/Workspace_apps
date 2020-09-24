.class public final Lcom/coloros/anim/c/b/o;
.super Ljava/lang/Object;
.source "ShapePath.java"

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/coloros/anim/c/a/h;

.field public final c:Z

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/coloros/anim/c/a/h;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/coloros/anim/c/b/o;->a:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/coloros/anim/c/b/o;->d:I

    .line 19
    iput-object p3, p0, Lcom/coloros/anim/c/b/o;->b:Lcom/coloros/anim/c/a/h;

    .line 20
    iput-boolean p4, p0, Lcom/coloros/anim/c/b/o;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 2

    .line 33
    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShapePath to ShapeContent, layer = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 36
    :cond_0
    new-instance v0, Lcom/coloros/anim/a/a/q;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/a/a/q;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/o;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShapePath{name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/anim/c/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/anim/c/b/o;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
