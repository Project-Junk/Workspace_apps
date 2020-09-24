.class public Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;
.super Landroid/widget/FrameLayout;
.source "WiredChargingPikachuAnimLayout.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;


# static fields
.field private static final LEVEL_VALUE_10:I = 0xa

.field private static final LEVEL_VALUE_100:I = 0x64

.field private static final MAX_LEVEL_VALUE_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WiredChargingPikachuAnimLayout"

.field private static final mDecimalLevelValueNums:[I

.field private static final mLevelValueNums:[I


# instance fields
.field private mCurrentLevelValueNums:I

.field private mDecimalValueMarginStart:I

.field private mDotMarginStart:I

.field private mKeyguardPikachuDecimalLevelValueWidth:I

.field private mKeyguardPikachuLevelPercentWidth:I

.field private mKeyguardPikachuLevelValueWidth:I

.field private mLastLevelValueNums:I

.field private mLayoutRtl:I

.field private mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

.field private mPercentMarginStart:I

.field private mPikachuAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mPikachuAnimRunnable:Ljava/lang/Runnable;

.field private mPikachuAnimRunning:Z

.field private mPikachuCopyRight:Landroid/widget/ImageView;

.field private mPikachuDecimalLevel:Landroid/widget/ImageView;

.field private mPikachuDot:Landroid/widget/ImageView;

.field private mPikachuDotWidth:I

.field private mPikachuLevelFirst:Landroid/widget/ImageView;

.field private mPikachuLevelHeadView:Landroid/view/View;

.field private mPikachuLevelPercent:Landroid/widget/ImageView;

.field private mPikachuLevelSecond:Landroid/widget/ImageView;

.field private mPikachuLevelThird:Landroid/widget/ImageView;

.field private mPikachuLevelValueView:Landroid/view/View;

.field private mPikachuView:Landroid/widget/ImageView;

.field private mPikachuVoocLogo:Landroid/widget/ImageView;

.field private mVoocLogoAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    .line 36
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLevelValueNums:[I

    .line 49
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mDecimalLevelValueNums:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080c14
        0x7f080c15
        0x7f080c16
        0x7f080c17
        0x7f080c18
        0x7f080c19
        0x7f080c1a
        0x7f080c1b
        0x7f080c1c
        0x7f080c1d
    .end array-data

    :array_1
    .array-data 4
        0x7f080c09
        0x7f080c0a
        0x7f080c0b
        0x7f080c0c
        0x7f080c0d
        0x7f080c0e
        0x7f080c0f
        0x7f080c10
        0x7f080c11
        0x7f080c12
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance p1, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout$1;-><init>(Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimRunnable:Ljava/lang/Runnable;

    .line 110
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->initValue()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->updatePikachuAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->updateLevelHeadView(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->updatePikachuBackground(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->updatePikachuVoocLogoView()V

    return-void
.end method

.method static synthetic access$402(Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimRunning:Z

    return p1
.end method

.method private cancelOrPausePickchuAnimation(Z)V
    .locals 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelOrPausePickchuAnimation, pause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard"

    const-string v2, "WiredChargingPikachuAnimLayout"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 208
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mVoocLogoAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    const/16 v1, 0x8

    .line 215
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->setVisibility(I)V

    .line 216
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 217
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mVoocLogoAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 218
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    if-eqz v1, :cond_2

    .line 219
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->stopCalculateBatteryRate()V

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuVoocLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuCopyRight:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->updateLevelHeadView(Z)V

    .line 226
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->updatePikachuBackground(Z)V

    .line 227
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimRunning:Z

    return-void
.end method

.method private initValue()V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708c8

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mKeyguardPikachuLevelValueWidth:I

    const v1, 0x7f0708c7

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mKeyguardPikachuLevelPercentWidth:I

    const v1, 0x7f0708bb

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mKeyguardPikachuDecimalLevelValueWidth:I

    const v1, 0x7f0708ba

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mDecimalValueMarginStart:I

    const v1, 0x7f0708c5

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPercentMarginStart:I

    const v1, 0x7f0708be

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuDotWidth:I

    const v1, 0x7f0708bd

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mDotMarginStart:I

    .line 130
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    .line 131
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->setPikachuAnimLayout(Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;)V

    .line 132
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->startCalculateBatteryRate()V

    return-void
.end method

.method private setLevelPercentRightOrLeft()V
    .locals 3

    .line 339
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getLayoutDirection()I

    move-result v0

    .line 341
    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLayoutRtl:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mCurrentLevelValueNums:I

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLastLevelValueNums:I

    if-eq v1, v2, :cond_1

    .line 342
    :cond_0
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->setLevelValueTranslationX(I)V

    .line 343
    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLayoutRtl:I

    .line 344
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mCurrentLevelValueNums:I

    iput v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLastLevelValueNums:I

    :cond_1
    return-void
.end method

.method private setLevelValueTranslationX(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 351
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelValueView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 352
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelPercent:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 354
    iget p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mKeyguardPikachuLevelValueWidth:I

    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mCurrentLevelValueNums:I

    mul-int v1, p1, v0

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuDotWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mKeyguardPikachuDecimalLevelValueWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mDotMarginStart:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mDecimalValueMarginStart:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPercentMarginStart:I

    add-int/2addr v1, v2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    mul-int/2addr p1, v0

    add-int v1, p1, v2

    .line 360
    :cond_0
    iget p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mKeyguardPikachuLevelPercentWidth:I

    .line 362
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelValueView:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 363
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelPercent:Landroid/widget/ImageView;

    neg-int p1, v1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelValueView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 366
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelPercent:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method private startPikachuAnimation()V
    .locals 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPikachuAnimation, mPikachuAnimRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard"

    const-string v2, "WiredChargingPikachuAnimLayout"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimRunning:Z

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 200
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimRunning:Z

    :cond_0
    return-void
.end method

.method private updateLevelHeadView(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 257
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelHeadView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelHeadView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateLevelValueView(I)V
    .locals 5

    if-ltz p1, :cond_c

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto/16 :goto_1

    .line 267
    :cond_0
    div-int/lit8 v0, p1, 0xa

    const/16 v1, 0xa

    .line 268
    rem-int/2addr p1, v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelFirst:Landroid/widget/ImageView;

    sget-object v1, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLevelValueNums:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelFirst:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 272
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelFirst:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelSecond:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 275
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelSecond:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelThird:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 278
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelThird:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    :cond_3
    iput v2, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mCurrentLevelValueNums:I

    goto/16 :goto_0

    :cond_4
    if-ne v0, v1, :cond_8

    if-nez p1, :cond_8

    .line 282
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelFirst:Landroid/widget/ImageView;

    sget-object v0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLevelValueNums:[I

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelSecond:Landroid/widget/ImageView;

    sget-object v0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLevelValueNums:[I

    aget v0, v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelThird:Landroid/widget/ImageView;

    sget-object v0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLevelValueNums:[I

    aget v0, v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelFirst:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    .line 286
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelFirst:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    :cond_5
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelSecond:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    .line 289
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelSecond:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    :cond_6
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelThird:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_7

    .line 292
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelThird:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    const/4 p1, 0x3

    .line 294
    iput p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mCurrentLevelValueNums:I

    goto :goto_0

    .line 296
    :cond_8
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelFirst:Landroid/widget/ImageView;

    sget-object v2, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLevelValueNums:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelSecond:Landroid/widget/ImageView;

    sget-object v1, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mLevelValueNums:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelFirst:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    .line 299
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelFirst:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    :cond_9
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelSecond:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_a

    .line 302
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelSecond:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    :cond_a
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelThird:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    .line 305
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelThird:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    const/4 p1, 0x2

    .line 307
    iput p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mCurrentLevelValueNums:I

    .line 309
    :goto_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->setLevelPercentRightOrLeft()V

    :cond_c
    :goto_1
    return-void
.end method

.method private updatePikachuAnim()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method private updatePikachuBackground(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080c07

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updatePikachuVoocLogoView()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mVoocLogoAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuVoocLogo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuVoocLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuCopyRight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuCopyRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuVoocLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mVoocLogoAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mVoocLogoAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 251
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mVoocLogoAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->cancelOrPausePickchuAnimation(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 139
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0452

    .line 140
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuVoocLogo:Landroid/widget/ImageView;

    const v0, 0x7f0a044d

    .line 141
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelHeadView:Landroid/view/View;

    const v0, 0x7f0a0451

    .line 142
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelValueView:Landroid/view/View;

    const v0, 0x7f0a044c

    .line 143
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelFirst:Landroid/widget/ImageView;

    const v0, 0x7f0a044f

    .line 144
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelSecond:Landroid/widget/ImageView;

    const v0, 0x7f0a0450

    .line 145
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelThird:Landroid/widget/ImageView;

    const v0, 0x7f0a044e

    .line 146
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuLevelPercent:Landroid/widget/ImageView;

    const v0, 0x7f0a044b

    .line 147
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuDot:Landroid/widget/ImageView;

    const v0, 0x7f0a044a

    .line 148
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuDecimalLevel:Landroid/widget/ImageView;

    const v0, 0x7f0a0448

    .line 149
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuView:Landroid/widget/ImageView;

    const v0, 0x7f0a0449

    .line 150
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuCopyRight:Landroid/widget/ImageView;

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 167
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->cancelOrPausePickchuAnimation(Z)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->startPikachuAnimation()V

    return-void
.end method

.method public onUpdateLevel(I)V
    .locals 0

    return-void
.end method

.method public onWiredChargingAnimChanged()V
    .locals 3

    .line 177
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f080ce3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 179
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080ce4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mVoocLogoAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method public resumeWhenStartdWakingUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setVisibility(I)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 191
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateLevelValueView(II)V
    .locals 4

    .line 313
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->updateLevelValueView(I)V

    if-ltz p2, :cond_4

    const/16 v0, 0xa

    if-ge p2, v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuDot:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x64

    if-eqz v0, :cond_0

    if-eq p1, v3, :cond_0

    .line 316
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    .line 318
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuDecimalLevel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq p1, v3, :cond_2

    .line 321
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuDecimalLevel:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_3

    .line 323
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuDecimalLevel:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mPikachuDecimalLevel:Landroid/widget/ImageView;

    sget-object p1, Lcom/coloros/systemui/keyguard/charginganim/pikachuanim/WiredChargingPikachuAnimLayout;->mDecimalLevelValueNums:[I

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    return-void
.end method
