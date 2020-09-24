.class public Lcom/coloros/anim/value/EffectiveValueCallback;
.super Ljava/lang/Object;
.source "EffectiveValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private animation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "**>;"
        }
    .end annotation
.end field

.field private final frameInfo:Lcom/coloros/anim/value/EffectiveFrameInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/value/EffectiveFrameInfo<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/coloros/anim/value/EffectiveFrameInfo;

    invoke-direct {v0}, Lcom/coloros/anim/value/EffectiveFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/value/EffectiveValueCallback;->frameInfo:Lcom/coloros/anim/value/EffectiveFrameInfo;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/coloros/anim/value/EffectiveValueCallback;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/coloros/anim/value/EffectiveFrameInfo;

    invoke-direct {v0}, Lcom/coloros/anim/value/EffectiveFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/value/EffectiveValueCallback;->frameInfo:Lcom/coloros/anim/value/EffectiveFrameInfo;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/coloros/anim/value/EffectiveValueCallback;->value:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/coloros/anim/value/EffectiveValueCallback;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue(Lcom/coloros/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/value/EffectiveFrameInfo<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/coloros/anim/value/EffectiveValueCallback;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)TT;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/coloros/anim/value/EffectiveValueCallback;->frameInfo:Lcom/coloros/anim/value/EffectiveFrameInfo;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 58
    invoke-virtual/range {v0 .. v7}, Lcom/coloros/anim/value/EffectiveFrameInfo;->set(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/coloros/anim/value/EffectiveFrameInfo;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/coloros/anim/value/EffectiveValueCallback;->getValue(Lcom/coloros/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0
    .param p1    # Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/coloros/anim/value/EffectiveValueCallback;->animation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/coloros/anim/value/EffectiveValueCallback;->value:Ljava/lang/Object;

    .line 42
    iget-object p0, p0, Lcom/coloros/anim/value/EffectiveValueCallback;->animation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    :cond_0
    return-void
.end method
