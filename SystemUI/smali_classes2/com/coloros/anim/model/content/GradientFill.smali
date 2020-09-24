.class public Lcom/coloros/anim/model/content/GradientFill;
.super Ljava/lang/Object;
.source "GradientFill.java"

# interfaces
.implements Lcom/coloros/anim/model/content/ContentModel;


# instance fields
.field private final endPoint:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final gradientColor:Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;

.field private final gradientType:Lcom/coloros/anim/model/content/GradientType;

.field private final hidden:Z

.field private final highlightAngle:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final highlightLength:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

.field private final startPoint:Lcom/coloros/anim/model/animatable/AnimatablePointValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;Lcom/coloros/anim/model/animatable/AnimatablePointValue;Lcom/coloros/anim/model/animatable/AnimatablePointValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Z)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/coloros/anim/model/content/GradientFill;->gradientType:Lcom/coloros/anim/model/content/GradientType;

    .line 38
    iput-object p3, p0, Lcom/coloros/anim/model/content/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    .line 39
    iput-object p4, p0, Lcom/coloros/anim/model/content/GradientFill;->gradientColor:Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;

    .line 40
    iput-object p5, p0, Lcom/coloros/anim/model/content/GradientFill;->opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    .line 41
    iput-object p6, p0, Lcom/coloros/anim/model/content/GradientFill;->startPoint:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    .line 42
    iput-object p7, p0, Lcom/coloros/anim/model/content/GradientFill;->endPoint:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    .line 43
    iput-object p1, p0, Lcom/coloros/anim/model/content/GradientFill;->name:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Lcom/coloros/anim/model/content/GradientFill;->highlightLength:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 45
    iput-object p9, p0, Lcom/coloros/anim/model/content/GradientFill;->highlightAngle:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 46
    iput-boolean p10, p0, Lcom/coloros/anim/model/content/GradientFill;->hidden:Z

    return-void
.end method


# virtual methods
.method public getEndPoint()Lcom/coloros/anim/model/animatable/AnimatablePointValue;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientFill;->endPoint:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    return-object p0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public getGradientColor()Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientFill;->gradientColor:Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;

    return-object p0
.end method

.method public getGradientType()Lcom/coloros/anim/model/content/GradientType;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientFill;->gradientType:Lcom/coloros/anim/model/content/GradientType;

    return-object p0
.end method

.method getHighlightAngle()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 84
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientFill;->highlightAngle:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method getHighlightLength()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientFill;->highlightLength:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientFill;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientFill;->opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    return-object p0
.end method

.method public getStartPoint()Lcom/coloros/anim/model/animatable/AnimatablePointValue;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/coloros/anim/model/content/GradientFill;->startPoint:Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/coloros/anim/model/content/GradientFill;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;)Lcom/coloros/anim/animation/content/Content;
    .locals 2

    .line 93
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GradientFill to GradientFillContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 96
    :cond_0
    new-instance v0, Lcom/coloros/anim/animation/content/GradientFillContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/animation/content/GradientFillContent;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/GradientFill;)V

    return-object v0
.end method
