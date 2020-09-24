.class public Lcom/meicam/sdk/NvsTimelineCaption;
.super Lcom/meicam/sdk/NvsFx;
.source "NvsTimelineCaption.java"


# static fields
.field public static final DEFAULT_CATEGORY:I = 0x0

.field public static final NOT_USE_ASSET_DEFAULT_PARAM:I = 0x1

.field public static final ROLE_IN_THEME_GENERAL:I = 0x0

.field public static final ROLE_IN_THEME_TITLE:I = 0x1

.field public static final ROLE_IN_THEME_TRAILER:I = 0x2

.field public static final TEXT_ALIGNMENT_CENTER:I = 0x1

.field public static final TEXT_ALIGNMENT_LEFT:I = 0x0

.field public static final TEXT_ALIGNMENT_RIGHT:I = 0x2

.field public static final THEME_CATEGORY:I = 0x2

.field public static final USER_CATEGORY:I = 0x1

.field public static final USE_ASSET_DEFAULT_PARAM:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/meicam/sdk/NvsFx;-><init>()V

    return-void
.end method

.method private native nativeApplyCaptionStyle(JLjava/lang/String;I)Z
.end method

.method private native nativeChangeInPoint(JJ)J
.end method

.method private native nativeChangeOutPoint(JJ)J
.end method

.method private native nativeGetAnchorPoint(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetBold(J)Z
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

.method private native nativeGetCaptionStylePackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionTranslation(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetCategory(J)I
.end method

.method private native nativeGetCenterAzimuthAngle(J)F
.end method

.method private native nativeGetCenterPolarAngle(J)F
.end method

.method private native nativeGetClipAffinityEnabled(J)Z
.end method

.method private native nativeGetDrawOutline(J)Z
.end method

.method private native nativeGetDrawShadow(J)Z
.end method

.method private native nativeGetFontFamily(J)Ljava/lang/String;
.end method

.method private native nativeGetFontFilePath(J)Ljava/lang/String;
.end method

.method private native nativeGetFontSize(J)F
.end method

.method private native nativeGetFontWeight(J)I
.end method

.method private native nativeGetInPoint(J)J
.end method

.method private native nativeGetItalic(J)Z
.end method

.method private native nativeGetLetterSpacing(J)F
.end method

.method private native nativeGetOrthoAngleRange(J)F
.end method

.method private native nativeGetOutPoint(J)J
.end method

.method private native nativeGetOutlineColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetOutlineWidth(J)F
.end method

.method private native nativeGetPanoramicRotationAngle(J)F
.end method

.method private native nativeGetPanoramicScaleX(J)F
.end method

.method private native nativeGetPanoramicScaleY(J)F
.end method

.method private native nativeGetPolarAngleRange(J)F
.end method

.method private native nativeGetRoleInTheme(J)I
.end method

.method private native nativeGetRotationZ(J)F
.end method

.method private native nativeGetScaleX(J)F
.end method

.method private native nativeGetScaleY(J)F
.end method

.method private native nativeGetShadowColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetShadowOffset(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetText(J)Ljava/lang/String;
.end method

.method private native nativeGetTextAlignment(J)I
.end method

.method private native nativeGetTextBoundingRect(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetTextColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetZValue(J)F
.end method

.method private native nativeIsPanoramic(J)Z
.end method

.method private native nativeMovePosition(JJ)V
.end method

.method private native nativeRotateCaption(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeScaleCaption(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeSetAnchorPoint(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetBold(JZ)V
.end method

.method private native nativeSetCaptionTranslation(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetCenterAzimuthAngle(JF)V
.end method

.method private native nativeSetCenterPolarAngle(JF)V
.end method

.method private native nativeSetClipAffinityEnabled(JZ)V
.end method

.method private native nativeSetDrawOutline(JZ)V
.end method

.method private native nativeSetDrawShadow(JZ)V
.end method

.method private native nativeSetFontByFilePath(JLjava/lang/String;)V
.end method

.method private native nativeSetFontFamily(JLjava/lang/String;)V
.end method

.method private native nativeSetFontSize(JF)V
.end method

.method private native nativeSetFontWeight(JI)V
.end method

.method private native nativeSetItalic(JZ)V
.end method

.method private native nativeSetLetterSpacing(JF)V
.end method

.method private native nativeSetOutlineColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetOutlineWidth(JF)V
.end method

.method private native nativeSetPanoramicRotationAngle(JF)V
.end method

.method private native nativeSetPanoramicScaleX(JF)V
.end method

.method private native nativeSetPanoramicScaleY(JF)V
.end method

.method private native nativeSetPolarAngleRange(JF)V
.end method

.method private native nativeSetRotationZ(JF)V
.end method

.method private native nativeSetScaleX(JF)V
.end method

.method private native nativeSetScaleY(JF)V
.end method

.method private native nativeSetShadowColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetShadowOffset(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetText(JLjava/lang/String;)V
.end method

.method private native nativeSetTextAlignment(JI)V
.end method

.method private native nativeSetTextColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetZValue(JF)V
.end method

.method private native nativeTranslateCaption(JLandroid/graphics/PointF;)V
.end method


# virtual methods
.method public applyCaptionStyle(Ljava/lang/String;)Z
    .locals 3

    .line 193
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 194
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeApplyCaptionStyle(JLjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public applyCaptionStyle(Ljava/lang/String;I)Z
    .locals 2

    .line 207
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 208
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeApplyCaptionStyle(JLjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public changeInPoint(J)J
    .locals 2

    .line 121
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 122
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeChangeInPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public changeOutPoint(J)J
    .locals 2

    .line 136
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 137
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeChangeOutPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getAnchorPoint()Landroid/graphics/PointF;
    .locals 2

    .line 619
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 620
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetAnchorPoint(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getBold()Z
    .locals 2

    .line 275
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 276
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetBold(J)Z

    move-result v0

    return v0
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

    .line 748
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 749
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetBoundingRectangleVertices(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCaptionStylePackageId()Ljava/lang/String;
    .locals 2

    .line 180
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 181
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCaptionStylePackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptionTranslation()Landroid/graphics/PointF;
    .locals 2

    .line 583
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 584
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCaptionTranslation(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()I
    .locals 2

    .line 170
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 171
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCategory(J)I

    move-result v0

    return v0
.end method

.method public getCenterAzimuthAngle()F
    .locals 2

    .line 803
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 804
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCenterAzimuthAngle(J)F

    move-result v0

    return v0
.end method

.method public getCenterPolarAngle()F
    .locals 2

    .line 781
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 782
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCenterPolarAngle(J)F

    move-result v0

    return v0
.end method

.method public getClipAffinityEnabled()Z
    .locals 2

    .line 82
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 83
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetClipAffinityEnabled(J)Z

    move-result v0

    return v0
.end method

.method public getDrawOutline()Z
    .locals 2

    .line 384
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 385
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetDrawOutline(J)Z

    move-result v0

    return v0
.end method

.method public getDrawShadow()Z
    .locals 2

    .line 450
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 451
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetDrawShadow(J)Z

    move-result v0

    return v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 2

    .line 562
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 563
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetFontFamily(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontFilePath()Ljava/lang/String;
    .locals 2

    .line 539
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 540
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetFontFilePath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()F
    .locals 2

    .line 516
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 517
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetFontSize(J)F

    move-result v0

    return v0
.end method

.method public getFontWeight()I
    .locals 2

    .line 318
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 319
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetFontWeight(J)I

    move-result v0

    return v0
.end method

.method public getInPoint()J
    .locals 2

    .line 94
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 95
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItalic()Z
    .locals 2

    .line 296
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 297
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetItalic(J)Z

    move-result v0

    return v0
.end method

.method public getLetterSpacing()F
    .locals 2

    .line 340
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 341
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public getOrthoAngleRange()F
    .locals 2

    .line 836
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 837
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOrthoAngleRange(J)F

    move-result v0

    return v0
.end method

.method public getOutPoint()J
    .locals 2

    .line 106
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 107
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutlineColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 406
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 407
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOutlineColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object v0

    return-object v0
.end method

.method public getOutlineWidth()F
    .locals 2

    .line 428
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 429
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOutlineWidth(J)F

    move-result v0

    return v0
.end method

.method public getPanoramicRotation()F
    .locals 2

    .line 902
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 903
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetPanoramicRotationAngle(J)F

    move-result v0

    return v0
.end method

.method public getPanoramicScaleX()F
    .locals 2

    .line 858
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 859
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetPanoramicScaleX(J)F

    move-result v0

    return v0
.end method

.method public getPanoramicScaleY()F
    .locals 2

    .line 880
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 881
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetPanoramicScaleY(J)F

    move-result v0

    return v0
.end method

.method public getPolarAngleRange()F
    .locals 2

    .line 825
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 826
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetPolarAngleRange(J)F

    move-result v0

    return v0
.end method

.method public getRoleInTheme()I
    .locals 2

    .line 160
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 161
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetRoleInTheme(J)I

    move-result v0

    return v0
.end method

.method public getRotationZ()F
    .locals 2

    .line 703
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 704
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetRotationZ(J)F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .locals 2

    .line 643
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 644
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetScaleX(J)F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 2

    .line 667
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 668
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetScaleY(J)F

    move-result v0

    return v0
.end method

.method public getShadowColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 472
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 473
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetShadowColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object v0

    return-object v0
.end method

.method public getShadowOffset()Landroid/graphics/PointF;
    .locals 2

    .line 494
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 495
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetShadowOffset(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 229
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 230
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 2

    .line 253
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 254
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetTextAlignment(J)I

    move-result v0

    return v0
.end method

.method public getTextBoundingRect()Landroid/graphics/RectF;
    .locals 2

    .line 737
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 738
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetTextBoundingRect(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 362
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 363
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetTextColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object v0

    return-object v0
.end method

.method public getZValue()F
    .locals 2

    .line 924
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 925
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetZValue(J)F

    move-result v0

    return v0
.end method

.method public isPanoramic()Z
    .locals 2

    .line 759
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 760
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeIsPanoramic(J)Z

    move-result v0

    return v0
.end method

.method public movePosition(J)V
    .locals 2

    .line 149
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 150
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeMovePosition(JJ)V

    return-void
.end method

.method public rotateCaption(F)V
    .locals 5

    .line 726
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 727
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsTimelineCaption;->getTextBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 728
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    div-float/2addr v4, v3

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->rotateCaption(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public rotateCaption(FLandroid/graphics/PointF;)V
    .locals 2

    .line 715
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 716
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeRotateCaption(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public scaleCaption(FLandroid/graphics/PointF;)V
    .locals 2

    .line 679
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 680
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeScaleCaption(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public setAnchorPoint(Landroid/graphics/PointF;)V
    .locals 2

    .line 608
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 609
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetAnchorPoint(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setBold(Z)V
    .locals 2

    .line 264
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 265
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetBold(JZ)V

    return-void
.end method

.method public setCaptionTranslation(Landroid/graphics/PointF;)V
    .locals 2

    .line 572
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 573
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetCaptionTranslation(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setCenterAzimuthAngle(F)V
    .locals 2

    .line 792
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 793
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetCenterAzimuthAngle(JF)V

    return-void
.end method

.method public setCenterPolarAngle(F)V
    .locals 2

    .line 770
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 771
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetCenterPolarAngle(JF)V

    return-void
.end method

.method public setClipAffinityEnabled(Z)V
    .locals 2

    .line 71
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 72
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetClipAffinityEnabled(JZ)V

    return-void
.end method

.method public setDrawOutline(Z)V
    .locals 2

    .line 373
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 374
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetDrawOutline(JZ)V

    return-void
.end method

.method public setDrawShadow(Z)V
    .locals 2

    .line 439
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 440
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetDrawShadow(JZ)V

    return-void
.end method

.method public setFontByFilePath(Ljava/lang/String;)V
    .locals 2

    .line 528
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 529
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetFontByFilePath(JLjava/lang/String;)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 2

    .line 551
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 552
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetFontFamily(JLjava/lang/String;)V

    return-void
.end method

.method public setFontSize(F)V
    .locals 2

    .line 505
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 506
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetFontSize(JF)V

    return-void
.end method

.method public setFontWeight(I)V
    .locals 2

    .line 307
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 308
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetFontWeight(JI)V

    return-void
.end method

.method public setItalic(Z)V
    .locals 2

    .line 286
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 287
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetItalic(JZ)V

    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 2

    .line 329
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 330
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetLetterSpacing(JF)V

    return-void
.end method

.method public setOutlineColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 395
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 396
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetOutlineColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setOutlineWidth(F)V
    .locals 2

    .line 417
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 418
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetOutlineWidth(JF)V

    return-void
.end method

.method public setPanoramicRotation(F)V
    .locals 2

    .line 891
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 892
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetPanoramicRotationAngle(JF)V

    return-void
.end method

.method public setPanoramicScaleX(F)V
    .locals 2

    .line 847
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 848
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetPanoramicScaleX(JF)V

    return-void
.end method

.method public setPanoramicScaleY(F)V
    .locals 2

    .line 869
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 870
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetPanoramicScaleY(JF)V

    return-void
.end method

.method public setPolarAngleRange(F)V
    .locals 2

    .line 814
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 815
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetPolarAngleRange(JF)V

    return-void
.end method

.method public setRotationZ(F)V
    .locals 2

    .line 691
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 692
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetRotationZ(JF)V

    return-void
.end method

.method public setScaleX(F)V
    .locals 2

    .line 631
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 632
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetScaleX(JF)V

    return-void
.end method

.method public setScaleY(F)V
    .locals 2

    .line 655
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 656
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetScaleY(JF)V

    return-void
.end method

.method public setShadowColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 461
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 462
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetShadowColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setShadowOffset(Landroid/graphics/PointF;)V
    .locals 2

    .line 483
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 484
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetShadowOffset(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 218
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 219
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetText(JLjava/lang/String;)V

    return-void
.end method

.method public setTextAlignment(I)V
    .locals 2

    .line 241
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 242
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetTextAlignment(JI)V

    return-void
.end method

.method public setTextColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 351
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 352
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetTextColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setZValue(F)V
    .locals 2

    .line 913
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 914
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetZValue(JF)V

    return-void
.end method

.method public translateCaption(Landroid/graphics/PointF;)V
    .locals 2

    .line 596
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 597
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeTranslateCaption(JLandroid/graphics/PointF;)V

    return-void
.end method
