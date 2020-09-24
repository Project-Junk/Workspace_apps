.class public Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.super Lcom/android/systemui/plugins/qs/QSIconView;
.source "QSIconViewImpl.java"


# static fields
.field public static final QS_ANIM_LENGTH:J = 0x15eL


# instance fields
.field private mAnimationEnabled:Z

.field protected final mIcon:Landroid/view/View;

.field protected final mIconSizePx:I

.field protected mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mState:I

.field private mTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSIconView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070756

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->createIcon()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    .line 61
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->addView(Landroid/view/View;)V

    return-void
.end method

.method private animateGrayScale(IILandroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 7

    .line 208
    instance-of v0, p3, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    if-eqz v0, :cond_0

    .line 209
    move-object v0, p3

    check-cast v0, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    .line 210
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;->setFinalImageTintList(Landroid/content/res/ColorStateList;)V

    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v2, v0

    .line 214
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v3, v0

    .line 215
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float v4, p1

    .line 216
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float v5, p1

    const/4 p1, 0x2

    .line 218
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x15e

    .line 219
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 220
    new-instance p2, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$CeqSBPdIhNYTow_6QM6a9ZwQyb8;

    move-object v1, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$CeqSBPdIhNYTow_6QM6a9ZwQyb8;-><init>(FFFFLandroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 227
    new-instance p2, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$2;

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$2;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {p3, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 236
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic lambda$animateGrayScale$1(FFFFLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 221
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    sub-float/2addr p1, p0

    mul-float/2addr p1, p5

    add-float/2addr p0, p1

    float-to-int p0, p0

    sub-float/2addr p3, p2

    mul-float/2addr p3, p5

    add-float/2addr p2, p3

    float-to-int p1, p2

    .line 225
    invoke-static {p0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p4, p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public static setTint(Landroid/widget/ImageView;I)V
    .locals 0

    .line 241
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 1

    .line 250
    new-instance v0, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;-><init>(Landroid/content/Context;)V

    const p0, 0x1020006

    .line 251
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setId(I)V

    .line 252
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public disableAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    return-void
.end method

.method protected final exactly(I)I
    .locals 0

    const/high16 p0, 0x40000000    # 2.0f

    .line 257
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method protected getColor(I)I
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method protected getIconMeasureMode()I
    .locals 0

    const/high16 p0, 0x40000000    # 2.0f

    return p0
.end method

.method public getIconView()Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    return-object p0
.end method

.method public synthetic lambda$setIcon$0$QSIconViewImpl(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 0

    .line 175
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method protected final layout(Landroid/view/View;II)V
    .locals 1

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, p2, p3, p0, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getMeasuredWidth()I

    move-result p1

    .line 94
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 95
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->layout(Landroid/view/View;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 74
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 75
    iget p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->exactly(I)I

    move-result p2

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getIconMeasureMode()I

    move-result v1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->measure(II)V

    .line 77
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setMeasuredDimension(II)V

    return-void
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 3

    .line 147
    iget-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0602e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 152
    :goto_0
    iget v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    if-eq v0, v1, :cond_7

    .line 153
    iget v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getColor(I)I

    move-result v0

    .line 154
    iget v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    .line 173
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v1

    if-nez v1, :cond_3

    .line 174
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->shouldAnimate(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    new-instance v2, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$xTIBDrD33UKSYZv6_hT3f3X3znk;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$xTIBDrD33UKSYZv6_hT3f3X3znk;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->animateGrayScale(IILandroid/widget/ImageView;Ljava/lang/Runnable;)V

    .line 176
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    goto :goto_3

    .line 178
    :cond_1
    instance-of v1, p1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    if-eqz v1, :cond_2

    .line 179
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    .line 180
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;->setFinalImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 182
    :cond_2
    invoke-static {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 184
    :goto_1
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    .line 185
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto :goto_3

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const v1, 0x7f06032c

    goto :goto_2

    :cond_4
    iget v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const v1, 0x7f06032d

    goto :goto_2

    :cond_5
    const v1, 0x7f06032e

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 194
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto :goto_3

    .line 198
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    :goto_3
    return-void
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method protected shouldAnimate(Landroid/widget/ImageView;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", tint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", lastIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "]"

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 8

    .line 103
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_0
    const v1, 0x7f0a0492

    .line 104
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f0a0496

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 105
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_1
    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->shouldAnimate(Landroid/widget/ImageView;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    move p3, v2

    .line 107
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    .line 108
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v0, v5}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v0, v5}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    if-eqz v0, :cond_5

    .line 111
    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getPadding()I

    move-result v6

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    if-eqz v5, :cond_6

    .line 113
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getLayoutDirection()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 117
    :cond_6
    instance-of v7, p1, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    if-eqz v7, :cond_7

    .line 118
    move-object v7, p1

    check-cast v7, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    invoke-virtual {v7, p3}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setAnimationEnabled(Z)V

    .line 119
    invoke-virtual {v7, v4, v5}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setState(Lcom/android/systemui/plugins/qs/QSTile$SlashState;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 121
    :cond_7
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :goto_4
    invoke-virtual {p1, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 125
    iget-object p3, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-virtual {p1, v3, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 126
    invoke-virtual {p1, v2, v6, v2, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 127
    instance-of p1, v5, Landroid/graphics/drawable/Animatable2;

    if-eqz p1, :cond_8

    .line 128
    check-cast v5, Landroid/graphics/drawable/Animatable2;

    .line 129
    invoke-interface {v5}, Landroid/graphics/drawable/Animatable2;->start()V

    .line 130
    iget-boolean p1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz p1, :cond_8

    .line 131
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;

    invoke-direct {p1, p0, v5}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/graphics/drawable/Animatable2;)V

    invoke-interface {v5, p1}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_8
    return-void
.end method
