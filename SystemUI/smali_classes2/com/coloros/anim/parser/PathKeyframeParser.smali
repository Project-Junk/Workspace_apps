.class Lcom/coloros/anim/parser/PathKeyframeParser;
.super Ljava/lang/Object;
.source "PathKeyframeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/animation/keyframe/PathKeyframe;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result v1

    sget-object v2, Lcom/coloros/anim/parser/PathParser;->INSTANCE:Lcom/coloros/anim/parser/PathParser;

    .line 22
    invoke-static {p0, p1, v1, v2, v0}, Lcom/coloros/anim/parser/KeyframeParser;->parse(Landroid/util/JsonReader;Lcom/coloros/anim/EffectiveAnimationComposition;FLcom/coloros/anim/parser/ValueParser;Z)Lcom/coloros/anim/value/Keyframe;

    move-result-object p0

    .line 25
    new-instance v0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;

    invoke-direct {v0, p1, p0}, Lcom/coloros/anim/animation/keyframe/PathKeyframe;-><init>(Lcom/coloros/anim/EffectiveAnimationComposition;Lcom/coloros/anim/value/Keyframe;)V

    return-object v0
.end method
