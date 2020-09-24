.class public Lcom/coloros/anim/utils/EffectiveValueAnimator;
.super Lcom/coloros/anim/utils/BaseAnimator;
.source "EffectiveValueAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private composition:Lcom/coloros/anim/EffectiveAnimationComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private frame:F

.field private lastFrameTimeNs:J

.field private maxFrame:F

.field private minFrame:F

.field private repeatCount:I

.field protected running:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private speed:F

.field private speedReversedForRepeatMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/coloros/anim/utils/BaseAnimator;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->running:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    iput v1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->speed:F

    .line 23
    iput-boolean v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    .line 26
    iput v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->repeatCount:I

    const/high16 v0, -0x31000000

    .line 27
    iput v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->minFrame:F

    const/high16 v0, 0x4f000000

    .line 28
    iput v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->maxFrame:F

    return-void
.end method

.method private getFrameDurationNs()F
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0

    :cond_0
    const v1, 0x4e6e6b28    # 1.0E9f

    .line 141
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getFrameRate()F

    move-result v0

    div-float/2addr v1, v0

    iget p0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->speed:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr v1, p0

    return v1
.end method

.method private isReversed()Z
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getSpeed()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private verifyFrame()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    iget v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    iget v1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->minFrame:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->maxFrame:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->minFrame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->maxFrame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget p0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Frame must be [%f,%f]. It is %f"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->notifyCancel()V

    .line 240
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->removeFrameCallback()V

    return-void
.end method

.method public clearComposition()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    const/high16 v0, -0x31000000

    .line 146
    iput v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->minFrame:F

    const/high16 v0, 0x4f000000

    .line 147
    iput v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->maxFrame:F

    return-void
.end method

.method public doFrame(J)V
    .locals 4

    .line 99
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->postFrameCallback()V

    .line 100
    iget-object p1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 104
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 105
    iget-wide v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    sub-long v0, p1, v0

    .line 106
    invoke-direct {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getFrameDurationNs()F

    move-result v2

    long-to-float v0, v0

    div-float/2addr v0, v2

    .line 109
    iget v1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-direct {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v2

    if-eqz v2, :cond_1

    neg-float v0, v0

    :cond_1
    add-float/2addr v1, v0

    iput v1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    .line 110
    iget v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/coloros/anim/utils/MiscUtils;->contains(FFF)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 111
    iget v1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v2

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/coloros/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    .line 113
    iput-wide p1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    .line 115
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->notifyUpdate()V

    if-eqz v0, :cond_5

    .line 117
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->repeatCount:I

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getRepeatCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result p1

    iput p1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    .line 119
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->removeFrameCallback()V

    .line 120
    invoke-direct {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->notifyEnd(Z)V

    goto :goto_2

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->notifyRepeat()V

    .line 123
    iget v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->repeatCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->repeatCount:I

    .line 124
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 125
    iget-boolean v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    .line 126
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->reverseAnimationSpeed()V

    goto :goto_1

    .line 128
    :cond_3
    invoke-direct {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    .line 130
    :goto_1
    iput-wide p1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    .line 134
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->verifyFrame()V

    :cond_6
    :goto_3
    return-void
.end method

.method public endAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->removeFrameCallback()V

    .line 216
    invoke-direct {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->notifyEnd(Z)V

    return-void
.end method

.method public getAnimatedFraction()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v0

    iget v1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result p0

    :goto_0
    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0

    .line 70
    :cond_1
    iget v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result p0

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getAnimatedValueAbsolute()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getAnimatedValueAbsolute()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 53
    :cond_0
    iget v1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v0

    iget-object p0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result p0

    sub-float/2addr v0, p0

    div-float/2addr v1, v0

    return v1
.end method

.method public getDuration()J
    .locals 2

    .line 76
    iget-object p0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getDuration()F

    move-result p0

    float-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public getFrame()F
    .locals 0

    .line 80
    iget p0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    return p0
.end method

.method public getMaxFrame()F
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 262
    :cond_0
    iget p0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->maxFrame:F

    const/high16 v1, 0x4f000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result p0

    :cond_1
    return p0
.end method

.method public getMinFrame()F
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 251
    :cond_0
    iget p0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->minFrame:F

    const/high16 v1, -0x31000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result p0

    :cond_1
    return p0
.end method

.method public getSpeed()F
    .locals 0

    .line 187
    iget p0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->speed:F

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->running:Z

    return p0
.end method

.method public pauseAnimation()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->removeFrameCallback()V

    return-void
.end method

.method public playAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->running:Z

    .line 206
    invoke-direct {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->notifyStart(Z)V

    .line 207
    invoke-direct {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setFrame(I)V

    .line 208
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->repeatCount:I

    .line 210
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->postFrameCallback()V

    return-void
.end method

.method protected postFrameCallback()V
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->removeFrameCallback(Z)V

    .line 272
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method protected removeFrameCallback()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 278
    invoke-virtual {p0, v0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->removeFrameCallback(Z)V

    return-void
.end method

.method protected removeFrameCallback(Z)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 283
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 285
    iput-boolean p1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->running:Z

    :cond_0
    return-void
.end method

.method public resumeAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->running:Z

    .line 227
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->postFrameCallback()V

    .line 228
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    .line 229
    invoke-direct {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v0

    iput v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v0

    iput v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    :cond_1
    :goto_0
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getSpeed()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setSpeed(F)V

    return-void
.end method

.method public setComposition(Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    iput-object p1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_1

    .line 156
    iget v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->minFrame:F

    .line 157
    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->maxFrame:F

    .line 158
    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 156
    invoke-virtual {p0, v0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    .line 163
    :goto_1
    iget p1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    float-to-int p1, p1

    .line 165
    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setFrame(I)V

    return-void
.end method

.method public setFrame(I)V
    .locals 2

    .line 84
    iget v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/anim/utils/MiscUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    .line 88
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    .line 89
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->notifyUpdate()V

    return-void
.end method

.method public setMaxFrame(F)V
    .locals 1

    .line 266
    iget v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->minFrame:F

    invoke-virtual {p0, v0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setMinAndMaxFrames(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    .line 174
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/coloros/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->minFrame:F

    .line 175
    invoke-static {p2, v0, v1}, Lcom/coloros/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->maxFrame:F

    .line 176
    iget v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-static {v0, p1, p2}, Lcom/coloros/anim/utils/MiscUtils;->clamp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setFrame(I)V

    return-void

    .line 170
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinFrame(I)V
    .locals 1

    int-to-float p1, p1

    .line 255
    iget v0, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->maxFrame:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Lcom/coloros/anim/utils/BaseAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 197
    iget-boolean p1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 198
    iput-boolean p1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    .line 199
    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->reverseAnimationSpeed()V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/coloros/anim/utils/EffectiveValueAnimator;->speed:F

    return-void
.end method
