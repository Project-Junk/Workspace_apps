.class public Lcom/coloros/anim/model/content/GradientStroke;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Lcom/coloros/anim/model/content/ContentModel;


# instance fields
.field private final capType:Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;

.field private final dashOffset:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final endPoint:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

.field private final gradientColor:Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;

.field private final gradientType:Lcom/coloros/anim/model/content/GradientType;

.field private final hidden:Z

.field private final joinType:Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;

.field private final lineDashPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            ">;"
        }
    .end annotation
.end field

.field private final miterLimit:F

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

.field private final startPoint:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

.field private final width:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/model/content/GradientType;Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;Lcom/coloros/anim/model/animatable/AnimatablePointValue;Lcom/coloros/anim/model/animatable/AnimatablePointValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Z)V
    .locals 0
    .param p12    # Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/model/content/GradientType;",
            "Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;",
            "Lcom/coloros/anim/model/animatable/AnimatablePointValue;",
            "Lcom/coloros/anim/model/animatable/AnimatablePointValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;",
            "Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;",
            "F",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/coloros/anim/model/content/GradientStroke;->name:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/coloros/anim/model/content/GradientStroke;->gradientType:Lcom/coloros/anim/model/content/GradientType;

    .line 43
    iput-object p3, p0, Lcom/coloros/anim/model/content/GradientStroke;->gradientColor:Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;

    .line 44
    iput-object p4, p0, Lcom/coloros/anim/model/content/GradientStroke;->opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    .line 45
    iput-object p5, p0, Lcom/coloros/anim/model/content/GradientStroke;->startPoint:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    .line 46
    iput-object p6, p0, Lcom/coloros/anim/model/content/GradientStroke;->endPoint:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    .line 47
    iput-object p7, p0, Lcom/coloros/anim/model/content/GradientStroke;->width:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 48
    iput-object p8, p0, Lcom/coloros/anim/model/content/GradientStroke;->capType:Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;

    .line 49
    iput-object p9, p0, Lcom/coloros/anim/model/content/GradientStroke;->joinType:Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;

    .line 50
    iput p10, p0, Lcom/coloros/anim/model/content/GradientStroke;->miterLimit:F

    .line 51
    iput-object p11, p0, Lcom/coloros/anim/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    .line 52
    iput-object p12, p0, Lcom/coloros/anim/model/content/GradientStroke;->dashOffset:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 53
    iput-boolean p13, p0, Lcom/coloros/anim/model/content/GradientStroke;->hidden:Z

    return-void
.end method


# virtual methods
.method public getCapType()Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientStroke;->capType:Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;

    return-object p0
.end method

.method public getDashOffset()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 98
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientStroke;->dashOffset:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getEndPoint()Lcom/coloros/anim/model/animatable/AnimatablePointValue;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientStroke;->endPoint:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    return-object p0
.end method

.method public getGradientColor()Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientStroke;->gradientColor:Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;

    return-object p0
.end method

.method public getGradientType()Lcom/coloros/anim/model/content/GradientType;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientStroke;->gradientType:Lcom/coloros/anim/model/content/GradientType;

    return-object p0
.end method

.method public getJoinType()Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientStroke;->joinType:Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;

    return-object p0
.end method

.method public getLineDashPattern()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    return-object p0
.end method

.method public getMiterLimit()F
    .locals 0

    .line 102
    iget p0, p0, Lcom/coloros/anim/model/content/GradientStroke;->miterLimit:F

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientStroke;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientStroke;->opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    return-object p0
.end method

.method public getStartPoint()Lcom/coloros/anim/model/animatable/AnimatablePointValue;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientStroke;->startPoint:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    return-object p0
.end method

.method public getWidth()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientStroke;->width:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/coloros/anim/model/content/GradientStroke;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;)Lcom/coloros/anim/animation/content/Content;
    .locals 2

    .line 111
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GradientStroke to GradientStrokeContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 114
    :cond_0
    new-instance v0, Lcom/coloros/anim/animation/content/GradientStrokeContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/animation/content/GradientStrokeContent;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/GradientStroke;)V

    return-object v0
.end method
