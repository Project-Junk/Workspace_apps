.class public Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
.super Lcom/meicam/sdk/NvsFx;
.source "NvsTimelineAnimatedSticker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/meicam/sdk/NvsFx;-><init>()V

    return-void
.end method

.method private native nativeChangeInPoint(JJ)J
.end method

.method private native nativeChangeOutPoint(JJ)J
.end method

.method private native nativeGetAnimatedStickerPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetBoundingRectangleVertices(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetCenterAzimuthAngle(J)F
.end method

.method private native nativeGetCenterPolarAngle(J)F
.end method

.method private native nativeGetClipAffinityEnabled(J)Z
.end method

.method private native nativeGetDefaultDuration(J)J
.end method

.method private native nativeGetHorizontalFlip(J)Z
.end method

.method private native nativeGetInPoint(J)J
.end method

.method private native nativeGetOriginalBoundingRect(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetOrthoAngleRange(J)F
.end method

.method private native nativeGetOutPoint(J)J
.end method

.method private native nativeGetPolarAngleRange(J)F
.end method

.method private native nativeGetRotationZ(J)F
.end method

.method private native nativeGetScale(J)F
.end method

.method private native nativeGetTranslation(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetVerticalFlip(J)Z
.end method

.method private native nativeGetVolumeGain(J)Lcom/meicam/sdk/NvsVolume;
.end method

.method private native nativeGetZValue(J)F
.end method

.method private native nativeHasAudio(J)Z
.end method

.method private native nativeIsPanoramic(J)Z
.end method

.method private native nativeMovePosition(JJ)V
.end method

.method private native nativeRotateAnimatedSticker(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeScaleAnimatedSticker(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeSetCenterAzimuthAngle(JF)V
.end method

.method private native nativeSetCenterPolarAngle(JF)V
.end method

.method private native nativeSetClipAffinityEnabled(JZ)V
.end method

.method private native nativeSetHorizontalFlip(JZ)V
.end method

.method private native nativeSetPolarAngleRange(JF)V
.end method

.method private native nativeSetRotationZ(JF)V
.end method

.method private native nativeSetScale(JF)V
.end method

.method private native nativeSetTranslation(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetVerticalFlip(JZ)V
.end method

.method private native nativeSetVolumeGain(JFF)V
.end method

.method private native nativeSetZValue(JF)V
.end method

.method private native nativeTranslateAnimatedSticker(JLandroid/graphics/PointF;)V
.end method


# virtual methods
.method public changeInPoint(J)J
    .locals 2

    .line 97
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 98
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeChangeInPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public changeOutPoint(J)J
    .locals 2

    .line 111
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 112
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeChangeOutPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getAnimatedStickerPackageId()Ljava/lang/String;
    .locals 2

    .line 82
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 83
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetAnimatedStickerPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundingRectangleVertices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 311
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 312
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetBoundingRectangleVertices(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCenterAzimuthAngle()F
    .locals 2

    .line 366
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 367
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetCenterAzimuthAngle(J)F

    move-result v0

    return v0
.end method

.method public getCenterPolarAngle()F
    .locals 2

    .line 344
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 345
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetCenterPolarAngle(J)F

    move-result v0

    return v0
.end method

.method public getClipAffinityEnabled()Z
    .locals 2

    .line 48
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 49
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetClipAffinityEnabled(J)Z

    move-result v0

    return v0
.end method

.method public getDefaultDuration()J
    .locals 2

    .line 468
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 469
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetDefaultDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHorizontalFlip()Z
    .locals 2

    .line 165
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 166
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetHorizontalFlip(J)Z

    move-result v0

    return v0
.end method

.method public getInPoint()J
    .locals 2

    .line 60
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 61
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOriginalBoundingRect()Landroid/graphics/RectF;
    .locals 2

    .line 300
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 301
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetOriginalBoundingRect(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getOrthoAngleRange()F
    .locals 2

    .line 399
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 400
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetOrthoAngleRange(J)F

    move-result v0

    return v0
.end method

.method public getOutPoint()J
    .locals 2

    .line 71
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 72
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPolarAngleRange()F
    .locals 2

    .line 388
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 389
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetPolarAngleRange(J)F

    move-result v0

    return v0
.end method

.method public getRotationZ()F
    .locals 2

    .line 205
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 206
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetRotationZ(J)F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 2

    .line 145
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 146
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetScale(J)F

    move-result v0

    return v0
.end method

.method public getTranslation()Landroid/graphics/PointF;
    .locals 2

    .line 226
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 227
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetTranslation(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalFlip()Z
    .locals 2

    .line 185
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 186
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetVerticalFlip(J)Z

    move-result v0

    return v0
.end method

.method public getVolumeGain()Lcom/meicam/sdk/NvsVolume;
    .locals 2

    .line 457
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 458
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetVolumeGain(J)Lcom/meicam/sdk/NvsVolume;

    move-result-object v0

    return-object v0
.end method

.method public getZValue()F
    .locals 2

    .line 421
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 422
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeGetZValue(J)F

    move-result v0

    return v0
.end method

.method public hasAudio()Z
    .locals 2

    .line 432
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 433
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeHasAudio(J)Z

    move-result v0

    return v0
.end method

.method public isPanoramic()Z
    .locals 2

    .line 322
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 323
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeIsPanoramic(J)Z

    move-result v0

    return v0
.end method

.method public movePosition(J)V
    .locals 2

    .line 123
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 124
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeMovePosition(JJ)V

    return-void
.end method

.method public rotateAnimatedSticker(F)V
    .locals 8

    .line 274
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 276
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->getBoundingRectangleVertices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 277
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 278
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 279
    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    move v4, v1

    move v5, v4

    move v1, v2

    :goto_0
    const/4 v6, 0x4

    if-ge v3, v6, :cond_4

    .line 281
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 282
    iget v7, v6, Landroid/graphics/PointF;->x:F

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    .line 283
    iget v2, v6, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 284
    :cond_0
    iget v7, v6, Landroid/graphics/PointF;->x:F

    cmpl-float v7, v7, v1

    if-lez v7, :cond_1

    .line 285
    iget v1, v6, Landroid/graphics/PointF;->x:F

    .line 286
    :cond_1
    :goto_1
    iget v7, v6, Landroid/graphics/PointF;->y:F

    cmpg-float v7, v7, v5

    if-gez v7, :cond_2

    .line 287
    iget v5, v6, Landroid/graphics/PointF;->y:F

    goto :goto_2

    .line 288
    :cond_2
    iget v7, v6, Landroid/graphics/PointF;->y:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_3

    .line 289
    iget v4, v6, Landroid/graphics/PointF;->y:F

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    :cond_4
    new-instance v0, Landroid/graphics/PointF;

    add-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    add-float/2addr v4, v5

    div-float/2addr v4, v1

    invoke-direct {v0, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1, v0}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->rotateAnimatedSticker(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public rotateAnimatedSticker(FLandroid/graphics/PointF;)V
    .locals 2

    .line 263
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 264
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeRotateAnimatedSticker(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public scaleAnimatedSticker(FLandroid/graphics/PointF;)V
    .locals 2

    .line 251
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 252
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeScaleAnimatedSticker(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public setCenterAzimuthAngle(F)V
    .locals 2

    .line 355
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 356
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeSetCenterAzimuthAngle(JF)V

    return-void
.end method

.method public setCenterPolarAngle(F)V
    .locals 2

    .line 333
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 334
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeSetCenterPolarAngle(JF)V

    return-void
.end method

.method public setClipAffinityEnabled(Z)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 38
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeSetClipAffinityEnabled(JZ)V

    return-void
.end method

.method public setHorizontalFlip(Z)V
    .locals 2

    .line 155
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 156
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeSetHorizontalFlip(JZ)V

    return-void
.end method

.method public setPolarAngleRange(F)V
    .locals 2

    .line 377
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 378
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeSetPolarAngleRange(JF)V

    return-void
.end method

.method public setRotationZ(F)V
    .locals 2

    .line 195
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 196
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeSetRotationZ(JF)V

    return-void
.end method

.method public setScale(F)V
    .locals 2

    .line 135
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 136
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeSetScale(JF)V

    return-void
.end method

.method public setTranslation(Landroid/graphics/PointF;)V
    .locals 2

    .line 216
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 217
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeSetTranslation(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setVerticalFlip(Z)V
    .locals 2

    .line 175
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 176
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeSetVerticalFlip(JZ)V

    return-void
.end method

.method public setVolumeGain(FF)V
    .locals 2

    .line 445
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 446
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeSetVolumeGain(JFF)V

    return-void
.end method

.method public setZValue(F)V
    .locals 2

    .line 410
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 411
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeSetZValue(JF)V

    return-void
.end method

.method public translateAnimatedSticker(Landroid/graphics/PointF;)V
    .locals 2

    .line 239
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 240
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->nativeTranslateAnimatedSticker(JLandroid/graphics/PointF;)V

    return-void
.end method
