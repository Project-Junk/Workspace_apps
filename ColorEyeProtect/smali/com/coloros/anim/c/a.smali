.class public Lcom/coloros/anim/c/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/graphics/PointF;

.field private final b:Landroid/graphics/PointF;

.field private final c:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/a;->a:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/a;->b:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/a;->c:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/a;->a:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/coloros/anim/c/a;->b:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/coloros/anim/c/a;->c:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a;->a:Landroid/graphics/PointF;

    return-object p0
.end method

.method public a(FF)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a;->a:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public b()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a;->b:Landroid/graphics/PointF;

    return-object p0
.end method

.method public b(FF)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a;->b:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public c()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a;->c:Landroid/graphics/PointF;

    return-object p0
.end method

.method public c(FF)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a;->c:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method
