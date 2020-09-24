.class public final Lcom/coloros/anim/c/b/p;
.super Ljava/lang/Object;
.source "ShapeStroke.java"

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/c/b/p$b;,
        Lcom/coloros/anim/c/b/p$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/coloros/anim/c/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/coloros/anim/c/a/a;

.field public final e:Lcom/coloros/anim/c/a/d;

.field public final f:Lcom/coloros/anim/c/a/b;

.field public final g:Lcom/coloros/anim/c/b/p$a;

.field public final h:Lcom/coloros/anim/c/b/p$b;

.field public final i:F

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/c/a/b;Ljava/util/List;Lcom/coloros/anim/c/a/a;Lcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/b/p$a;Lcom/coloros/anim/c/b/p$b;FZ)V
    .locals 0
    .param p2    # Lcom/coloros/anim/c/a/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/c/a/b;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/a/b;",
            ">;",
            "Lcom/coloros/anim/c/a/a;",
            "Lcom/coloros/anim/c/a/d;",
            "Lcom/coloros/anim/c/a/b;",
            "Lcom/coloros/anim/c/b/p$a;",
            "Lcom/coloros/anim/c/b/p$b;",
            "FZ)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/coloros/anim/c/b/p;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/coloros/anim/c/b/p;->b:Lcom/coloros/anim/c/a/b;

    .line 36
    iput-object p3, p0, Lcom/coloros/anim/c/b/p;->c:Ljava/util/List;

    .line 37
    iput-object p4, p0, Lcom/coloros/anim/c/b/p;->d:Lcom/coloros/anim/c/a/a;

    .line 38
    iput-object p5, p0, Lcom/coloros/anim/c/b/p;->e:Lcom/coloros/anim/c/a/d;

    .line 39
    iput-object p6, p0, Lcom/coloros/anim/c/b/p;->f:Lcom/coloros/anim/c/a/b;

    .line 40
    iput-object p7, p0, Lcom/coloros/anim/c/b/p;->g:Lcom/coloros/anim/c/b/p$a;

    .line 41
    iput-object p8, p0, Lcom/coloros/anim/c/b/p;->h:Lcom/coloros/anim/c/b/p$b;

    .line 42
    iput p9, p0, Lcom/coloros/anim/c/b/p;->i:F

    .line 43
    iput-boolean p10, p0, Lcom/coloros/anim/c/b/p;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 2

    .line 48
    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShapeStroke to StrokeContent, layer = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 51
    :cond_0
    new-instance v0, Lcom/coloros/anim/a/a/r;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/a/a/r;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/p;)V

    return-object v0
.end method
