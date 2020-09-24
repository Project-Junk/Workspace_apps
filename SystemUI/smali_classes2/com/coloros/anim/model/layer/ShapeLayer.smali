.class public Lcom/coloros/anim/model/layer/ShapeLayer;
.super Lcom/coloros/anim/model/layer/BaseLayer;
.source "ShapeLayer.java"


# instance fields
.field private final contentGroup:Lcom/coloros/anim/animation/content/ContentGroup;


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V
    .locals 3

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V

    .line 27
    new-instance v0, Lcom/coloros/anim/model/content/ShapeGroup;

    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getShapes()Ljava/util/List;

    move-result-object p2

    const-string v1, "__container"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/coloros/anim/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 28
    sget-boolean p2, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz p2, :cond_0

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeLayer::shapeGroup = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/coloros/anim/model/content/ShapeGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 31
    :cond_0
    new-instance p2, Lcom/coloros/anim/animation/content/ContentGroup;

    invoke-direct {p2, p1, p0, v0}, Lcom/coloros/anim/animation/content/ContentGroup;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/ShapeGroup;)V

    iput-object p2, p0, Lcom/coloros/anim/model/layer/ShapeLayer;->contentGroup:Lcom/coloros/anim/animation/content/ContentGroup;

    .line 32
    iget-object p0, p0, Lcom/coloros/anim/model/layer/ShapeLayer;->contentGroup:Lcom/coloros/anim/animation/content/ContentGroup;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/animation/content/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ShapeLayer#draw"

    .line 37
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/coloros/anim/model/layer/ShapeLayer;->contentGroup:Lcom/coloros/anim/animation/content/ContentGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/anim/animation/content/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 39
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 45
    iget-object p2, p0, Lcom/coloros/anim/model/layer/ShapeLayer;->contentGroup:Lcom/coloros/anim/animation/content/ContentGroup;

    iget-object p0, p0, Lcom/coloros/anim/model/layer/ShapeLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p0, p3}, Lcom/coloros/anim/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method protected resolveChildKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/KeyPath;",
            ">;",
            "Lcom/coloros/anim/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lcom/coloros/anim/model/layer/ShapeLayer;->contentGroup:Lcom/coloros/anim/animation/content/ContentGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coloros/anim/animation/content/ContentGroup;->resolveKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;)V

    return-void
.end method
