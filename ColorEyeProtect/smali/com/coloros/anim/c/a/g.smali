.class public Lcom/coloros/anim/c/a/g;
.super Lcom/coloros/anim/c/a/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/c/a/n<",
        "Lcom/coloros/anim/g/d;",
        "Lcom/coloros/anim/g/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    new-instance v0, Lcom/coloros/anim/g/d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/coloros/anim/g/d;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/coloros/anim/c/a/g;-><init>(Lcom/coloros/anim/g/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/coloros/anim/g/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/anim/c/a/n;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/g/c<",
            "Lcom/coloros/anim/g/d;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/coloros/anim/c/a/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/coloros/anim/a/b/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/a/b/a<",
            "Lcom/coloros/anim/g/d;",
            "Lcom/coloros/anim/g/d;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableScaleValue create ScaleKeyframeAnimation, keyframes is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/coloros/anim/a/b/k;

    iget-object p0, p0, Lcom/coloros/anim/c/a/g;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/coloros/anim/a/b/k;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic b()Z
    .locals 0

    invoke-super {p0}, Lcom/coloros/anim/c/a/n;->b()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic c()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/coloros/anim/c/a/n;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/coloros/anim/c/a/n;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
