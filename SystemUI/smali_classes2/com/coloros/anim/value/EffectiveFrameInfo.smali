.class public Lcom/coloros/anim/value/EffectiveFrameInfo;
.super Ljava/lang/Object;
.source "EffectiveFrameInfo.java"


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
.field private endFrame:F

.field private endValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private interpolatedKeyframeProgress:F

.field private linearKeyframeProgress:F

.field private overallProgress:F

.field private startFrame:F

.field private startValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndFrame()F
    .locals 0

    .line 40
    iget p0, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->endFrame:F

    return p0
.end method

.method public getEndValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->endValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getInterpolatedKeyframeProgress()F
    .locals 0

    .line 56
    iget p0, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->interpolatedKeyframeProgress:F

    return p0
.end method

.method public getLinearKeyframeProgress()F
    .locals 0

    .line 52
    iget p0, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->linearKeyframeProgress:F

    return p0
.end method

.method public getOverallProgress()F
    .locals 0

    .line 60
    iget p0, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->overallProgress:F

    return p0
.end method

.method public getStartFrame()F
    .locals 0

    .line 36
    iget p0, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->startFrame:F

    return p0
.end method

.method public getStartValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->startValue:Ljava/lang/Object;

    return-object p0
.end method

.method public set(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/coloros/anim/value/EffectiveFrameInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)",
            "Lcom/coloros/anim/value/EffectiveFrameInfo<",
            "TT;>;"
        }
    .end annotation

    .line 25
    iput p1, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->startFrame:F

    .line 26
    iput p2, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->endFrame:F

    .line 27
    iput-object p3, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->startValue:Ljava/lang/Object;

    .line 28
    iput-object p4, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->endValue:Ljava/lang/Object;

    .line 29
    iput p5, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->linearKeyframeProgress:F

    .line 30
    iput p6, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->interpolatedKeyframeProgress:F

    .line 31
    iput p7, p0, Lcom/coloros/anim/value/EffectiveFrameInfo;->overallProgress:F

    return-object p0
.end method
