.class public final Lcom/coloros/anim/a/b/p;
.super Lcom/coloros/anim/a/b/a;
.source "ValueCallbackKeyframeAnimation.java"


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
.field private final e:Lcom/coloros/anim/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/g/a<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;
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

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/coloros/anim/a/b/p;-><init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/coloros/anim/g/b;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/b<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/anim/a/b/a;-><init>(Ljava/util/List;)V

    .line 12
    new-instance v0, Lcom/coloros/anim/g/a;

    invoke-direct {v0}, Lcom/coloros/anim/g/a;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/b/p;->e:Lcom/coloros/anim/g/a;

    .line 22
    invoke-virtual {p0, p1}, Lcom/coloros/anim/a/b/p;->a(Lcom/coloros/anim/g/b;)V

    .line 23
    iput-object p2, p0, Lcom/coloros/anim/a/b/p;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a(Lcom/coloros/anim/g/c;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/c<",
            "TK;>;F)TA;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/p;->f()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/coloros/anim/a/b/p;->b:Lcom/coloros/anim/g/b;

    if-eqz v0, :cond_0

    .line 38
    invoke-super {p0}, Lcom/coloros/anim/a/b/a;->a()V

    :cond_0
    return-void
.end method

.method final e()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/coloros/anim/a/b/p;->b:Lcom/coloros/anim/g/b;

    iget-object v4, p0, Lcom/coloros/anim/a/b/p;->f:Ljava/lang/Object;

    .line 1133
    iget v5, p0, Lcom/coloros/anim/a/b/a;->d:F

    .line 2133
    iget v6, p0, Lcom/coloros/anim/a/b/a;->d:F

    .line 3133
    iget v7, p0, Lcom/coloros/anim/a/b/a;->d:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v4

    .line 45
    invoke-virtual/range {v0 .. v7}, Lcom/coloros/anim/g/b;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method