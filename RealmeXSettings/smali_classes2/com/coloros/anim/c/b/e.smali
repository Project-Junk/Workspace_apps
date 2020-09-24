.class public final Lcom/coloros/anim/c/b/e;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lcom/coloros/anim/c/a/c;

.field public final d:Lcom/coloros/anim/c/a/d;

.field public final e:Lcom/coloros/anim/c/a/f;

.field public final f:Lcom/coloros/anim/c/a/f;

.field public final g:Lcom/coloros/anim/c/a/b;

.field public final h:Lcom/coloros/anim/c/b/p$a;

.field public final i:Lcom/coloros/anim/c/b/p$b;

.field public final j:F

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/coloros/anim/c/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/coloros/anim/c/a/c;Lcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/f;Lcom/coloros/anim/c/a/f;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/b/p$a;Lcom/coloros/anim/c/b/p$b;FLjava/util/List;Lcom/coloros/anim/c/a/b;Z)V
    .locals 0
    .param p12    # Lcom/coloros/anim/c/a/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/coloros/anim/c/a/c;",
            "Lcom/coloros/anim/c/a/d;",
            "Lcom/coloros/anim/c/a/f;",
            "Lcom/coloros/anim/c/a/f;",
            "Lcom/coloros/anim/c/a/b;",
            "Lcom/coloros/anim/c/b/p$a;",
            "Lcom/coloros/anim/c/b/p$b;",
            "F",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/a/b;",
            ">;",
            "Lcom/coloros/anim/c/a/b;",
            "Z)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/coloros/anim/c/b/e;->a:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/coloros/anim/c/b/e;->b:I

    .line 43
    iput-object p3, p0, Lcom/coloros/anim/c/b/e;->c:Lcom/coloros/anim/c/a/c;

    .line 44
    iput-object p4, p0, Lcom/coloros/anim/c/b/e;->d:Lcom/coloros/anim/c/a/d;

    .line 45
    iput-object p5, p0, Lcom/coloros/anim/c/b/e;->e:Lcom/coloros/anim/c/a/f;

    .line 46
    iput-object p6, p0, Lcom/coloros/anim/c/b/e;->f:Lcom/coloros/anim/c/a/f;

    .line 47
    iput-object p7, p0, Lcom/coloros/anim/c/b/e;->g:Lcom/coloros/anim/c/a/b;

    .line 48
    iput-object p8, p0, Lcom/coloros/anim/c/b/e;->h:Lcom/coloros/anim/c/b/p$a;

    .line 49
    iput-object p9, p0, Lcom/coloros/anim/c/b/e;->i:Lcom/coloros/anim/c/b/p$b;

    .line 50
    iput p10, p0, Lcom/coloros/anim/c/b/e;->j:F

    .line 51
    iput-object p11, p0, Lcom/coloros/anim/c/b/e;->k:Ljava/util/List;

    .line 52
    iput-object p12, p0, Lcom/coloros/anim/c/b/e;->l:Lcom/coloros/anim/c/a/b;

    .line 53
    iput-boolean p13, p0, Lcom/coloros/anim/c/b/e;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 2

    .line 111
    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GradientStroke to GradientStrokeContent, layer = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 114
    :cond_0
    new-instance v0, Lcom/coloros/anim/a/a/i;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/a/a/i;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/e;)V

    return-object v0
.end method
