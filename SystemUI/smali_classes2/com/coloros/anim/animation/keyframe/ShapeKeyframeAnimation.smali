.class public Lcom/coloros/anim/animation/keyframe/ShapeKeyframeAnimation;
.super Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
.source "ShapeKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
        "Lcom/coloros/anim/model/content/ShapeData;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempPath:Landroid/graphics/Path;

.field private final tempShapeData:Lcom/coloros/anim/model/content/ShapeData;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/value/Keyframe<",
            "Lcom/coloros/anim/model/content/ShapeData;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 12
    new-instance p1, Lcom/coloros/anim/model/content/ShapeData;

    invoke-direct {p1}, Lcom/coloros/anim/model/content/ShapeData;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/coloros/anim/model/content/ShapeData;

    .line 13
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public getValue(Lcom/coloros/anim/value/Keyframe;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/value/Keyframe<",
            "Lcom/coloros/anim/model/content/ShapeData;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 21
    iget-object v0, p1, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/coloros/anim/model/content/ShapeData;

    .line 22
    iget-object p1, p1, Lcom/coloros/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/anim/model/content/ShapeData;

    .line 24
    iget-object v1, p0, Lcom/coloros/anim/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/coloros/anim/model/content/ShapeData;

    invoke-virtual {v1, v0, p1, p2}, Lcom/coloros/anim/model/content/ShapeData;->interpolateBetween(Lcom/coloros/anim/model/content/ShapeData;Lcom/coloros/anim/model/content/ShapeData;F)V

    .line 25
    iget-object p1, p0, Lcom/coloros/anim/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/coloros/anim/model/content/ShapeData;

    iget-object p2, p0, Lcom/coloros/anim/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lcom/coloros/anim/utils/MiscUtils;->getPathFromData(Lcom/coloros/anim/model/content/ShapeData;Landroid/graphics/Path;)V

    .line 26
    iget-object p0, p0, Lcom/coloros/anim/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public bridge synthetic getValue(Lcom/coloros/anim/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/animation/keyframe/ShapeKeyframeAnimation;->getValue(Lcom/coloros/anim/value/Keyframe;F)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method
