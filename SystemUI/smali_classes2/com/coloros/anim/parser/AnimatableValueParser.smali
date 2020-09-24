.class public Lcom/coloros/anim/parser/AnimatableValueParser;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Landroid/util/JsonReader;FLcom/coloros/anim/EffectiveAnimationComposition;Lcom/coloros/anim/parser/ValueParser;)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            "Lcom/coloros/anim/parser/ValueParser<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/coloros/anim/value/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-static {p0, p2, p1, p3}, Lcom/coloros/anim/parser/KeyframesParser;->parse(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;FLcom/coloros/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;Lcom/coloros/anim/parser/ValueParser;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            "Lcom/coloros/anim/parser/ValueParser<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/coloros/anim/value/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 81
    invoke-static {p0, p1, v0, p2}, Lcom/coloros/anim/parser/KeyframesParser;->parse(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;FLcom/coloros/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static parseColor(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/animatable/AnimatableColorValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/coloros/anim/model/animatable/AnimatableColorValue;

    sget-object v1, Lcom/coloros/anim/parser/ColorParser;->INSTANCE:Lcom/coloros/anim/parser/ColorParser;

    invoke-static {p0, p1, v1}, Lcom/coloros/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;Lcom/coloros/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coloros/anim/model/animatable/AnimatableColorValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseDocumentData(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/animatable/AnimatableTextFrame;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/coloros/anim/model/animatable/AnimatableTextFrame;

    sget-object v1, Lcom/coloros/anim/parser/DocumentDataParser;->INSTANCE:Lcom/coloros/anim/parser/DocumentDataParser;

    invoke-static {p0, p1, v1}, Lcom/coloros/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;Lcom/coloros/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coloros/anim/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static parseFloat(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 28
    invoke-static {p0, p1, v0}, Lcom/coloros/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;Z)Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object p0

    return-object p0
.end method

.method public static parseFloat(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;Z)Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_0

    .line 34
    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lcom/coloros/anim/parser/FloatParser;->INSTANCE:Lcom/coloros/anim/parser/FloatParser;

    invoke-static {p0, p2, p1, v1}, Lcom/coloros/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;FLcom/coloros/anim/EffectiveAnimationComposition;Lcom/coloros/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseGradientColor(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;I)Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;

    new-instance v1, Lcom/coloros/anim/parser/GradientColorParser;

    invoke-direct {v1, p2}, Lcom/coloros/anim/parser/GradientColorParser;-><init>(I)V

    .line 72
    invoke-static {p0, p1, v1}, Lcom/coloros/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;Lcom/coloros/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseInteger(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    sget-object v1, Lcom/coloros/anim/parser/IntegerParser;->INSTANCE:Lcom/coloros/anim/parser/IntegerParser;

    invoke-static {p0, p1, v1}, Lcom/coloros/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;Lcom/coloros/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parsePoint(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/animatable/AnimatablePointValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    .line 45
    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result v1

    sget-object v2, Lcom/coloros/anim/parser/PointFParser;->INSTANCE:Lcom/coloros/anim/parser/PointFParser;

    invoke-static {p0, v1, p1, v2}, Lcom/coloros/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;FLcom/coloros/anim/EffectiveAnimationComposition;Lcom/coloros/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coloros/anim/model/animatable/AnimatablePointValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseScale(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/animatable/AnimatableScaleValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/coloros/anim/model/animatable/AnimatableScaleValue;

    sget-object v1, Lcom/coloros/anim/parser/ScaleXYParser;->INSTANCE:Lcom/coloros/anim/parser/ScaleXYParser;

    invoke-static {p0, p1, v1}, Lcom/coloros/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;Lcom/coloros/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coloros/anim/model/animatable/AnimatableScaleValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseShapeData(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/animatable/AnimatableShapeValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/coloros/anim/model/animatable/AnimatableShapeValue;

    .line 56
    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result v1

    sget-object v2, Lcom/coloros/anim/parser/ShapeDataParser;->INSTANCE:Lcom/coloros/anim/parser/ShapeDataParser;

    invoke-static {p0, v1, p1, v2}, Lcom/coloros/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;FLcom/coloros/anim/EffectiveAnimationComposition;Lcom/coloros/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coloros/anim/model/animatable/AnimatableShapeValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method
