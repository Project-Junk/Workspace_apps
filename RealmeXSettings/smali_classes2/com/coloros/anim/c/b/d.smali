.class public final Lcom/coloros/anim/c/b/d;
.super Ljava/lang/Object;
.source "GradientFill.java"

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Lcom/coloros/anim/c/a/c;

.field public final d:Lcom/coloros/anim/c/a/d;

.field public final e:Lcom/coloros/anim/c/a/f;

.field public final f:Lcom/coloros/anim/c/a/f;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field private final i:Lcom/coloros/anim/c/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final j:Lcom/coloros/anim/c/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Lcom/coloros/anim/c/a/c;Lcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/f;Lcom/coloros/anim/c/a/f;Z)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p2, p0, Lcom/coloros/anim/c/b/d;->a:I

    .line 38
    iput-object p3, p0, Lcom/coloros/anim/c/b/d;->b:Landroid/graphics/Path$FillType;

    .line 39
    iput-object p4, p0, Lcom/coloros/anim/c/b/d;->c:Lcom/coloros/anim/c/a/c;

    .line 40
    iput-object p5, p0, Lcom/coloros/anim/c/b/d;->d:Lcom/coloros/anim/c/a/d;

    .line 41
    iput-object p6, p0, Lcom/coloros/anim/c/b/d;->e:Lcom/coloros/anim/c/a/f;

    .line 42
    iput-object p7, p0, Lcom/coloros/anim/c/b/d;->f:Lcom/coloros/anim/c/a/f;

    .line 43
    iput-object p1, p0, Lcom/coloros/anim/c/b/d;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/coloros/anim/c/b/d;->i:Lcom/coloros/anim/c/a/b;

    .line 45
    iput-object p1, p0, Lcom/coloros/anim/c/b/d;->j:Lcom/coloros/anim/c/a/b;

    .line 46
    iput-boolean p8, p0, Lcom/coloros/anim/c/b/d;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 2

    .line 93
    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GradientFill to GradientFillContent, layer = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 96
    :cond_0
    new-instance v0, Lcom/coloros/anim/a/a/h;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/a/a/h;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/d;)V

    return-object v0
.end method
