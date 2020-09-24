.class public Lcom/coloros/anim/a/b/p;
.super Lcom/coloros/anim/a/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/coloros/anim/a/b/a<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/coloros/anim/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/g/a<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/anim/g/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/b<",
            "TA;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/b<",
            "TA;>;TA;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/anim/a/b/a;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/coloros/anim/g/a;

    invoke-direct {v0}, Lcom/coloros/anim/g/a;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/b/p;->c:Lcom/coloros/anim/g/a;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/a/b/p;->a(Lcom/coloros/anim/g/b;)V

    iput-object p2, p0, Lcom/coloros/anim/a/b/p;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a(Lcom/coloros/anim/g/c;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/c<",
            "TK;>;F)TA;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/p;->g()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/a/b/p;->b:Lcom/coloros/anim/g/b;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/coloros/anim/a/b/a;->b()V

    :cond_0
    return-void
.end method

.method f()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public g()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/anim/a/b/p;->b:Lcom/coloros/anim/g/b;

    iget-object v3, p0, Lcom/coloros/anim/a/b/p;->d:Ljava/lang/Object;

    iget-object v4, p0, Lcom/coloros/anim/a/b/p;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/p;->h()F

    move-result v5

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/p;->h()F

    move-result v6

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/p;->h()F

    move-result v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/coloros/anim/g/b;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
