.class public final Lcom/coloros/anim/c/b/a;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/coloros/anim/c/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/coloros/anim/c/a/f;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/c/a/m;Lcom/coloros/anim/c/a/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/coloros/anim/c/a/f;",
            "ZZ)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/coloros/anim/c/b/a;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/coloros/anim/c/b/a;->b:Lcom/coloros/anim/c/a/m;

    .line 24
    iput-object p3, p0, Lcom/coloros/anim/c/b/a;->c:Lcom/coloros/anim/c/a/f;

    .line 25
    iput-boolean p4, p0, Lcom/coloros/anim/c/b/a;->d:Z

    .line 26
    iput-boolean p5, p0, Lcom/coloros/anim/c/b/a;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 2

    .line 31
    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CircleShape::toContent layer = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 34
    :cond_0
    new-instance v0, Lcom/coloros/anim/a/a/f;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/a/a/f;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/a;)V

    return-object v0
.end method
