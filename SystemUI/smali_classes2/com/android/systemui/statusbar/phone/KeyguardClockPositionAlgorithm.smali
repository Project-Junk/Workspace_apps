.class public Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "KeyguardClockPositionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    }
.end annotation


# static fields
.field private static CLOCK_HEIGHT_WEIGHT:F = 0.7f


# instance fields
.field private mBurnInPreventionOffsetX:I

.field private mBurnInPreventionOffsetY:I

.field private mClockNotificationsMargin:I

.field private mClockPreferredY:I

.field private mContainerTopPadding:I

.field private mDarkAmount:F

.field private mEmptyDragAmount:F

.field private mHasCustomClock:Z

.field private mHasVisibleNotifs:Z

.field private mHeight:I

.field private mKeyguardStatusHeight:I

.field private mMaxShadeBottom:I

.field private mMinTopMargin:I

.field private mNotificationStackHeight:I

.field private mPanelExpansion:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private burnInPreventionOffsetX()F
    .locals 2

    .line 273
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private burnInPreventionOffsetY()F
    .locals 2

    .line 268
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private getClockAlpha(I)F
    .locals 2

    int-to-float p1, p1

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedPreferredClockY()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 258
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/android/systemui/Interpolators;->CLOCK_ALPHA:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    goto :goto_0

    .line 261
    :cond_0
    sget-object v0, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 264
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {p1, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private getClockY()I
    .locals 5

    .line 215
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasCustomClock:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getPreferredClockY()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMaxClockY()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->burnInPreventionOffsetY()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    .line 217
    invoke-static {v1, v0}, Landroid/util/MathUtils;->max(FF)F

    move-result v0

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedPreferredClockY()I

    move-result v1

    int-to-float v1, v1

    .line 220
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    .line 230
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    sget-object v3, Lcom/android/systemui/Interpolators;->CLOCK_Y:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_1

    .line 233
    :cond_1
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 236
    :goto_1
    invoke-static {v2, v1, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 237
    invoke-static {v2, v0, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    .line 239
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private getExpandedPreferredClockY()I
    .locals 1

    .line 180
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOppoClockStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getPreferredClockY()I

    move-result p0

    return p0

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasCustomClock:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasVisibleNotifs:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getPreferredClockY()I

    move-result p0

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getMaxClockY()I
    .locals 2

    .line 164
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getPreferredClockY()I
    .locals 0

    .line 168
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockPreferredY:I

    return p0
.end method


# virtual methods
.method public getExpandedClockPosition()I
    .locals 4

    .line 195
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxShadeBottom:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    sub-int/2addr v0, v1

    .line 196
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 198
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    int-to-float v2, v2

    sget v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_HEIGHT_WEIGHT:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationStackHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    int-to-float v0, v1

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMaxClockY()I

    move-result p0

    int-to-float p0, p0

    cmpl-float v1, v0, p0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    float-to-int p0, p0

    return p0
.end method

.method public getMinStackScrollerPadding()F
    .locals 2

    .line 160
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method public loadDimens(Landroid/content/res/Resources;)V
    .locals 3

    const v0, 0x7f0703ea

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    const v0, 0x7f0703eb

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0703fc

    .line 126
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0703ff

    .line 127
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x7f0703e9

    .line 128
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    const v0, 0x7f07014c

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    const v0, 0x7f07014d

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    return-void
.end method

.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY()I

    move-result v0

    .line 153
    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 154
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockAlpha(I)F

    move-result v1

    iput v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 155
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->burnInPreventionOffsetX()F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    return-void
.end method

.method public setup(IIIFIIIZZFF)V
    .locals 1

    .line 138
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    .line 139
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxShadeBottom:I

    .line 140
    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationStackHeight:I

    .line 141
    iput p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    .line 142
    iput p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    .line 143
    iput p6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    .line 144
    iput p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockPreferredY:I

    .line 145
    iput-boolean p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasCustomClock:Z

    .line 146
    iput-boolean p9, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasVisibleNotifs:Z

    .line 147
    iput p10, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 148
    iput p11, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    return-void
.end method
