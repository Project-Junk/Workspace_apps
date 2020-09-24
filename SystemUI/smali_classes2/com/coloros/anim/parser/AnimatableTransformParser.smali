.class public Lcom/coloros/anim/parser/AnimatableTransformParser;
.super Ljava/lang/Object;
.source "AnimatableTransformParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAnchorPointIdentity(Lcom/coloros/anim/model/animatable/AnimatablePathValue;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatablePathValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatablePathValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/value/Keyframe;

    iget-object p0, p0, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isPositionIdentity(Lcom/coloros/anim/model/animatable/AnimatableValue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 129
    instance-of v1, p0, Lcom/coloros/anim/model/animatable/AnimatableSplitDimensionPathValue;

    if-nez v1, :cond_1

    .line 131
    invoke-interface {p0}, Lcom/coloros/anim/model/animatable/AnimatableValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/coloros/anim/model/animatable/AnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/value/Keyframe;

    iget-object p0, p0, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isRotationIdentity(Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/value/Keyframe;

    iget-object p0, p0, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isScaleIdentity(Lcom/coloros/anim/model/animatable/AnimatableScaleValue;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatableScaleValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatableScaleValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/value/Keyframe;

    iget-object p0, p0, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Lcom/coloros/anim/value/ScaleXY;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v1}, Lcom/coloros/anim/value/ScaleXY;->equals(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isSkewAngleIdentity(Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/value/Keyframe;

    iget-object p0, p0, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isSkewIdentity(Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/value/Keyframe;

    iget-object p0, p0, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static parse(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/animatable/AnimatableTransform;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    const/4 v10, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v10

    :goto_0
    if-eqz v11, :cond_1

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    :cond_1
    const/4 v1, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 40
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x61

    if-eq v4, v5, :cond_b

    const/16 v5, 0xcaa

    if-eq v4, v5, :cond_a

    const/16 v5, 0xe48

    if-eq v4, v5, :cond_9

    const/16 v5, 0xe4e

    if-eq v4, v5, :cond_8

    const/16 v5, 0xe58

    if-eq v4, v5, :cond_7

    const/16 v5, 0xe5c

    if-eq v4, v5, :cond_6

    const/16 v5, 0x6f

    if-eq v4, v5, :cond_5

    const/16 v5, 0x70

    if-eq v4, v5, :cond_4

    const/16 v5, 0x72

    if-eq v4, v5, :cond_3

    const/16 v5, 0x73

    if-eq v4, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v4, "s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x2

    goto :goto_3

    :cond_3
    const-string v4, "r"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x4

    goto :goto_3

    :cond_4
    const-string v4, "p"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const-string v4, "o"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x5

    goto :goto_3

    :cond_6
    const-string v4, "so"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x6

    goto :goto_3

    :cond_7
    const-string v4, "sk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x8

    goto :goto_3

    :cond_8
    const-string v4, "sa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x9

    goto :goto_3

    :cond_9
    const-string v4, "rz"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x3

    goto :goto_3

    :cond_a
    const-string v4, "eo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x7

    goto :goto_3

    :cond_b
    const-string v4, "a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v10

    goto :goto_3

    :cond_c
    :goto_2
    move v2, v3

    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1

    .line 93
    :pswitch_0
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;Z)Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object v2

    move-object/from16 v17, v2

    goto/16 :goto_1

    .line 90
    :pswitch_1
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;Z)Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object v2

    move-object/from16 v16, v2

    goto/16 :goto_1

    .line 87
    :pswitch_2
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;Z)Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object v2

    move-object/from16 v25, v2

    goto/16 :goto_1

    .line 84
    :pswitch_3
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;Z)Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object v2

    move-object/from16 v24, v2

    goto/16 :goto_1

    .line 81
    :pswitch_4
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v2

    move-object/from16 v23, v2

    goto/16 :goto_1

    :pswitch_5
    const-string v1, "EffectiveAnimation doesn\'t support 3D layers."

    .line 61
    invoke-virtual {v8, v1}, Lcom/coloros/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    .line 73
    :pswitch_6
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;Z)Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object v18

    .line 74
    invoke-virtual/range {v18 .. v18}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 75
    invoke-virtual/range {v18 .. v18}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v7

    new-instance v6, Lcom/coloros/anim/value/Keyframe;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v9, v6

    move/from16 v6, v19

    move-object v12, v7

    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Lcom/coloros/anim/value/Keyframe;-><init>(Lcom/coloros/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 76
    :cond_d
    invoke-virtual/range {v18 .. v18}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/value/Keyframe;

    iget-object v1, v1, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    if-nez v1, :cond_e

    .line 77
    invoke-virtual/range {v18 .. v18}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v9

    new-instance v12, Lcom/coloros/anim/value/Keyframe;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/coloros/anim/value/Keyframe;-><init>(Lcom/coloros/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v9, v10, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_4
    move-object/from16 v1, v18

    goto/16 :goto_1

    .line 58
    :pswitch_7
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/parser/AnimatableValueParser;->parseScale(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/animatable/AnimatableScaleValue;

    move-result-object v2

    move-object v15, v2

    goto/16 :goto_1

    .line 55
    :pswitch_8
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/parser/AnimatablePathValueParser;->parseSplitPath(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/animatable/AnimatableValue;

    move-result-object v2

    move-object v14, v2

    goto/16 :goto_1

    .line 43
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 44
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 46
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/parser/AnimatablePathValueParser;->parse(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/animatable/AnimatablePathValue;

    move-result-object v13

    goto :goto_5

    .line 48
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    .line 51
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_1

    :cond_11
    if-eqz v11, :cond_12

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 103
    :cond_12
    invoke-static {v13}, Lcom/coloros/anim/parser/AnimatableTransformParser;->isAnchorPointIdentity(Lcom/coloros/anim/model/animatable/AnimatablePathValue;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v13, 0x0

    .line 106
    :cond_13
    invoke-static {v14}, Lcom/coloros/anim/parser/AnimatableTransformParser;->isPositionIdentity(Lcom/coloros/anim/model/animatable/AnimatableValue;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v20, 0x0

    goto :goto_6

    :cond_14
    move-object/from16 v20, v14

    .line 109
    :goto_6
    invoke-static {v1}, Lcom/coloros/anim/parser/AnimatableTransformParser;->isRotationIdentity(Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v22, 0x0

    goto :goto_7

    :cond_15
    move-object/from16 v22, v1

    .line 112
    :goto_7
    invoke-static {v15}, Lcom/coloros/anim/parser/AnimatableTransformParser;->isScaleIdentity(Lcom/coloros/anim/model/animatable/AnimatableScaleValue;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v21, 0x0

    goto :goto_8

    :cond_16
    move-object/from16 v21, v15

    .line 115
    :goto_8
    invoke-static/range {v16 .. v16}, Lcom/coloros/anim/parser/AnimatableTransformParser;->isSkewIdentity(Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v26, 0x0

    goto :goto_9

    :cond_17
    move-object/from16 v26, v16

    .line 118
    :goto_9
    invoke-static/range {v17 .. v17}, Lcom/coloros/anim/parser/AnimatableTransformParser;->isSkewAngleIdentity(Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v27, 0x0

    goto :goto_a

    :cond_18
    move-object/from16 v27, v17

    .line 121
    :goto_a
    new-instance v0, Lcom/coloros/anim/model/animatable/AnimatableTransform;

    move-object/from16 v18, v0

    move-object/from16 v19, v13

    invoke-direct/range {v18 .. v27}, Lcom/coloros/anim/model/animatable/AnimatableTransform;-><init>(Lcom/coloros/anim/model/animatable/AnimatablePathValue;Lcom/coloros/anim/model/animatable/AnimatableValue;Lcom/coloros/anim/model/animatable/AnimatableScaleValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
