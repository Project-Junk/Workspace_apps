.class public Lcom/coloros/anim/model/content/ShapeStroke;
.super Ljava/lang/Object;
.source "ShapeStroke.java"

# interfaces
.implements Lcom/coloros/anim/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;,
        Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;
    }
.end annotation


# instance fields
.field private final capType:Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;

.field private final color:Lcom/coloros/anim/model/animatable/AnimatableColorValue;

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

.field private final offset:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

.field private final width:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/coloros/anim/model/animatable/AnimatableColorValue;Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;FZ)V
    .locals 0
    .param p2    # Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/coloros/anim/model/animatable/AnimatableColorValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;",
            "Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;",
            "FZ)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/coloros/anim/model/content/ShapeStroke;->name:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/coloros/anim/model/content/ShapeStroke;->offset:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 36
    iput-object p3, p0, Lcom/coloros/anim/model/content/ShapeStroke;->lineDashPattern:Ljava/util/List;

    .line 37
    iput-object p4, p0, Lcom/coloros/anim/model/content/ShapeStroke;->color:Lcom/coloros/anim/model/animatable/AnimatableColorValue;

    .line 38
    iput-object p5, p0, Lcom/coloros/anim/model/content/ShapeStroke;->opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    .line 39
    iput-object p6, p0, Lcom/coloros/anim/model/content/ShapeStroke;->width:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 40
    iput-object p7, p0, Lcom/coloros/anim/model/content/ShapeStroke;->capType:Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;

    .line 41
    iput-object p8, p0, Lcom/coloros/anim/model/content/ShapeStroke;->joinType:Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;

    .line 42
    iput p9, p0, Lcom/coloros/anim/model/content/ShapeStroke;->miterLimit:F

    .line 43
    iput-boolean p10, p0, Lcom/coloros/anim/model/content/ShapeStroke;->hidden:Z

    return-void
.end method


# virtual methods
.method public getCapType()Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeStroke;->capType:Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;

    return-object p0
.end method

.method public getColor()Lcom/coloros/anim/model/animatable/AnimatableColorValue;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeStroke;->color:Lcom/coloros/anim/model/animatable/AnimatableColorValue;

    return-object p0
.end method

.method public getDashOffset()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeStroke;->offset:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getJoinType()Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeStroke;->joinType:Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;

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

    .line 71
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeStroke;->lineDashPattern:Ljava/util/List;

    return-object p0
.end method

.method public getMiterLimit()F
    .locals 0

    .line 87
    iget p0, p0, Lcom/coloros/anim/model/content/ShapeStroke;->miterLimit:F

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeStroke;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeStroke;->opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    return-object p0
.end method

.method public getWidth()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/anim/model/content/ShapeStroke;->width:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/coloros/anim/model/content/ShapeStroke;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;)Lcom/coloros/anim/animation/content/Content;
    .locals 2

    .line 48
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeStroke to StrokeContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 51
    :cond_0
    new-instance v0, Lcom/coloros/anim/animation/content/StrokeContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/animation/content/StrokeContent;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/ShapeStroke;)V

    return-object v0
.end method
