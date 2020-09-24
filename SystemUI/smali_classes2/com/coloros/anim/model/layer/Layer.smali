.class public Lcom/coloros/anim/model/layer/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/model/layer/Layer$MatteType;,
        Lcom/coloros/anim/model/layer/Layer$LayerType;
    }
.end annotation


# instance fields
.field private final composition:Lcom/coloros/anim/EffectiveAnimationComposition;

.field private final hidden:Z

.field private final inOutKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/value/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final layerId:J

.field private final layerName:Ljava/lang/String;

.field private final layerType:Lcom/coloros/anim/model/layer/Layer$LayerType;

.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/content/Mask;",
            ">;"
        }
    .end annotation
.end field

.field private final matteType:Lcom/coloros/anim/model/layer/Layer$MatteType;

.field private final parentId:J

.field private final preCompHeight:I

.field private final preCompWidth:I

.field private final refId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/content/ContentModel;",
            ">;"
        }
    .end annotation
.end field

.field private final solidColor:I

.field private final solidHeight:I

.field private final solidWidth:I

.field private final startFrame:F

.field private final text:Lcom/coloros/anim/model/animatable/AnimatableTextFrame;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final textProperties:Lcom/coloros/anim/model/animatable/AnimatableTextProperties;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeRemapping:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeStretch:F

.field private final transform:Lcom/coloros/anim/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/coloros/anim/EffectiveAnimationComposition;Ljava/lang/String;JLcom/coloros/anim/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/coloros/anim/model/animatable/AnimatableTransform;IIIFFIILcom/coloros/anim/model/animatable/AnimatableTextFrame;Lcom/coloros/anim/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/coloros/anim/model/layer/Layer$MatteType;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Z)V
    .locals 3
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Lcom/coloros/anim/model/animatable/AnimatableTextFrame;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/coloros/anim/model/animatable/AnimatableTextProperties;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p23    # Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/content/ContentModel;",
            ">;",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            "Ljava/lang/String;",
            "J",
            "Lcom/coloros/anim/model/layer/Layer$LayerType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/content/Mask;",
            ">;",
            "Lcom/coloros/anim/model/animatable/AnimatableTransform;",
            "IIIFFII",
            "Lcom/coloros/anim/model/animatable/AnimatableTextFrame;",
            "Lcom/coloros/anim/model/animatable/AnimatableTextProperties;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/value/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/coloros/anim/model/layer/Layer$MatteType;",
            "Lcom/coloros/anim/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 52
    iput-object v1, v0, Lcom/coloros/anim/model/layer/Layer;->shapes:Ljava/util/List;

    move-object v1, p2

    .line 53
    iput-object v1, v0, Lcom/coloros/anim/model/layer/Layer;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    move-object v1, p3

    .line 54
    iput-object v1, v0, Lcom/coloros/anim/model/layer/Layer;->layerName:Ljava/lang/String;

    move-wide v1, p4

    .line 55
    iput-wide v1, v0, Lcom/coloros/anim/model/layer/Layer;->layerId:J

    move-object v1, p6

    .line 56
    iput-object v1, v0, Lcom/coloros/anim/model/layer/Layer;->layerType:Lcom/coloros/anim/model/layer/Layer$LayerType;

    move-wide v1, p7

    .line 57
    iput-wide v1, v0, Lcom/coloros/anim/model/layer/Layer;->parentId:J

    move-object v1, p9

    .line 58
    iput-object v1, v0, Lcom/coloros/anim/model/layer/Layer;->refId:Ljava/lang/String;

    move-object v1, p10

    .line 59
    iput-object v1, v0, Lcom/coloros/anim/model/layer/Layer;->masks:Ljava/util/List;

    move-object v1, p11

    .line 60
    iput-object v1, v0, Lcom/coloros/anim/model/layer/Layer;->transform:Lcom/coloros/anim/model/animatable/AnimatableTransform;

    move v1, p12

    .line 61
    iput v1, v0, Lcom/coloros/anim/model/layer/Layer;->solidWidth:I

    move/from16 v1, p13

    .line 62
    iput v1, v0, Lcom/coloros/anim/model/layer/Layer;->solidHeight:I

    move/from16 v1, p14

    .line 63
    iput v1, v0, Lcom/coloros/anim/model/layer/Layer;->solidColor:I

    move/from16 v1, p15

    .line 64
    iput v1, v0, Lcom/coloros/anim/model/layer/Layer;->timeStretch:F

    move/from16 v1, p16

    .line 65
    iput v1, v0, Lcom/coloros/anim/model/layer/Layer;->startFrame:F

    move/from16 v1, p17

    .line 66
    iput v1, v0, Lcom/coloros/anim/model/layer/Layer;->preCompWidth:I

    move/from16 v1, p18

    .line 67
    iput v1, v0, Lcom/coloros/anim/model/layer/Layer;->preCompHeight:I

    move-object/from16 v1, p19

    .line 68
    iput-object v1, v0, Lcom/coloros/anim/model/layer/Layer;->text:Lcom/coloros/anim/model/animatable/AnimatableTextFrame;

    move-object/from16 v1, p20

    .line 69
    iput-object v1, v0, Lcom/coloros/anim/model/layer/Layer;->textProperties:Lcom/coloros/anim/model/animatable/AnimatableTextProperties;

    move-object/from16 v1, p21

    .line 70
    iput-object v1, v0, Lcom/coloros/anim/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    move-object/from16 v1, p22

    .line 71
    iput-object v1, v0, Lcom/coloros/anim/model/layer/Layer;->matteType:Lcom/coloros/anim/model/layer/Layer$MatteType;

    move-object/from16 v1, p23

    .line 72
    iput-object v1, v0, Lcom/coloros/anim/model/layer/Layer;->timeRemapping:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move/from16 v1, p24

    .line 73
    iput-boolean v1, v0, Lcom/coloros/anim/model/layer/Layer;->hidden:Z

    return-void
.end method


# virtual methods
.method getComposition()Lcom/coloros/anim/EffectiveAnimationComposition;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public getId()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/coloros/anim/model/layer/Layer;->layerId:J

    return-wide v0
.end method

.method getInOutKeyframes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/anim/value/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    return-object p0
.end method

.method public getLayerType()Lcom/coloros/anim/model/layer/Layer$LayerType;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->layerType:Lcom/coloros/anim/model/layer/Layer$LayerType;

    return-object p0
.end method

.method getMasks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/content/Mask;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->masks:Ljava/util/List;

    return-object p0
.end method

.method getMatteType()Lcom/coloros/anim/model/layer/Layer$MatteType;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->matteType:Lcom/coloros/anim/model/layer/Layer$MatteType;

    return-object p0
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->layerName:Ljava/lang/String;

    return-object p0
.end method

.method getParentId()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/coloros/anim/model/layer/Layer;->parentId:J

    return-wide v0
.end method

.method getPreCompHeight()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/coloros/anim/model/layer/Layer;->preCompHeight:I

    return p0
.end method

.method getPreCompWidth()I
    .locals 0

    .line 106
    iget p0, p0, Lcom/coloros/anim/model/layer/Layer;->preCompWidth:I

    return p0
.end method

.method getRefId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 102
    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->refId:Ljava/lang/String;

    return-object p0
.end method

.method getShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/content/ContentModel;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->shapes:Ljava/util/List;

    return-object p0
.end method

.method getSolidColor()I
    .locals 0

    .line 138
    iget p0, p0, Lcom/coloros/anim/model/layer/Layer;->solidColor:I

    return p0
.end method

.method getSolidHeight()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/coloros/anim/model/layer/Layer;->solidHeight:I

    return p0
.end method

.method getSolidWidth()I
    .locals 0

    .line 146
    iget p0, p0, Lcom/coloros/anim/model/layer/Layer;->solidWidth:I

    return p0
.end method

.method getStartProgress()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/coloros/anim/model/layer/Layer;->startFrame:F

    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getDurationFrames()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method getText()Lcom/coloros/anim/model/animatable/AnimatableTextFrame;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->text:Lcom/coloros/anim/model/animatable/AnimatableTextFrame;

    return-object p0
.end method

.method getTextProperties()Lcom/coloros/anim/model/animatable/AnimatableTextProperties;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->textProperties:Lcom/coloros/anim/model/animatable/AnimatableTextProperties;

    return-object p0
.end method

.method getTimeRemapping()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 161
    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->timeRemapping:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method getTimeStretch()F
    .locals 0

    .line 81
    iget p0, p0, Lcom/coloros/anim/model/layer/Layer;->timeStretch:F

    return p0
.end method

.method getTransform()Lcom/coloros/anim/model/animatable/AnimatableTransform;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->transform:Lcom/coloros/anim/model/animatable/AnimatableTransform;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    .line 170
    iget-boolean p0, p0, Lcom/coloros/anim/model/layer/Layer;->hidden:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 166
    invoke-virtual {p0, v0}, Lcom/coloros/anim/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v2, p0, Lcom/coloros/anim/model/layer/Layer;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getParentId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/coloros/anim/EffectiveAnimationComposition;->layerModelForId(J)Lcom/coloros/anim/model/layer/Layer;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "\t\tParents: "

    .line 178
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/coloros/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v3, p0, Lcom/coloros/anim/model/layer/Layer;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/coloros/anim/model/layer/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/coloros/anim/EffectiveAnimationComposition;->layerModelForId(J)Lcom/coloros/anim/model/layer/Layer;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "->"

    .line 181
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/coloros/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v3, p0, Lcom/coloros/anim/model/layer/Layer;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/coloros/anim/model/layer/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/coloros/anim/EffectiveAnimationComposition;->layerModelForId(J)Lcom/coloros/anim/model/layer/Layer;

    move-result-object v2

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getSolidWidth()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getSolidHeight()I

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getSolidWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getSolidHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getSolidColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%dx%d %X\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_3
    iget-object v2, p0, Lcom/coloros/anim/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object p0, p0, Lcom/coloros/anim/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 199
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
