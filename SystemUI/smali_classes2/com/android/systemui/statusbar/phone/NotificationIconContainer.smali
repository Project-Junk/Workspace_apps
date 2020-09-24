.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.super Lcom/coloros/systemui/phone/base/NotificationIconContainerBase;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final CANNED_ANIMATION_DURATION:I = 0x64

.field private static final DEBUG:Z = false

.field private static final DEBUG_OVERFLOW:Z = false

.field private static final DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final MAX_DOTS:I = 0x1

.field public static final MAX_STATIC_ICONS:I = 0x4

.field private static final MAX_VISIBLE_ICONS_WHEN_DARK:I = 0x5

.field private static final NO_VALUE:I = -0x80000000

.field public static final OVERFLOW_EARLY_AMOUNT:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "NotificationIconContainer"

.field private static final UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final sTempProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field private mAbsolutePosition:[I

.field private mActualLayoutWidth:I

.field private mActualPaddingEnd:F

.field private mActualPaddingStart:F

.field private mAddAnimationStartIndex:I

.field private mAnimationsEnabled:Z

.field private mCannedAnimationStartIndex:I

.field private mChangingViewPositions:Z

.field private mDark:Z

.field private mDisallowNextAnimation:Z

.field private mDotPadding:I

.field private mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

.field private mIconSize:I

.field private final mIconStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStaticLayout:Z

.field private mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mIsolatedIconForAnimation:Landroid/view/View;

.field private mIsolatedIconLocation:Landroid/graphics/Rect;

.field private mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

.field private mNumDots:I

.field private mOpenedAmount:F

.field private mOverflowWidth:I

.field private mReplacingIcons:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSpeedBumpIndex:I

.field private mStaticDotDiameter:I

.field private mStaticDotRadius:I

.field private mVisualOverflowStart:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>()V

    const-wide/16 v1, 0xc8

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;-><init>()V

    const-wide/16 v3, 0x64

    .line 90
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    sget-object v4, Lcom/android/systemui/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 91
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 105
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;-><init>()V

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 118
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;-><init>()V

    const-wide/16 v1, 0x6e

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 132
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;-><init>()V

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/phone/base/NotificationIconContainerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 146
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    const/high16 p2, -0x80000000

    .line 151
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    const/high16 p2, -0x31000000

    .line 152
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 153
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    const/4 p2, -0x1

    .line 156
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 157
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 158
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    const/4 p2, 0x0

    .line 160
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    .line 162
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    const/4 p2, 0x2

    .line 172
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    return p0
.end method

.method static synthetic access$1000()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    return p0
.end method

.method static synthetic access$300()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    return p0
.end method

.method static synthetic access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Landroid/view/View;

    return-object p0
.end method

.method private findFirstViewIndexAfter(F)I
    .locals 2

    const/4 v0, 0x0

    .line 373
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 374
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 375
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result p0

    return p0
.end method

.method private getActualPaddingEnd()F
    .locals 2

    .line 694
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    return v0
.end method

.method private getActualPaddingStart()F
    .locals 2

    .line 701
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingStart()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    return v0
.end method

.method private getLayoutEnd()F
    .locals 1

    .line 690
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private getMaxOverflowStart()F
    .locals 1

    .line 757
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private initDimens()V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    .line 184
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStowLayoutPadding:I

    return-void
.end method

.method private isReplacingIcon(Landroid/view/View;)Z
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroidx/collection/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 324
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v0, :cond_1

    return v1

    .line 327
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 328
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 329
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    .line 330
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    .line 332
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 333
    iget-object p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private setIconSize(I)V
    .locals 2

    .line 259
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 260
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    return-void
.end method

.method private updateState()V
    .locals 2

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 271
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStowLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations(Landroid/view/View;F)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 277
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    return-void
.end method


# virtual methods
.method public applyIconStates()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 281
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 282
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 283
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-eqz v3, :cond_0

    .line 285
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 288
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 289
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 290
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Landroid/view/View;

    return-void
.end method

.method public calculateIconTranslations()V
    .locals 18

    move-object/from16 v0, p0

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v1

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    .line 401
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    move v3, v2

    .line 403
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v4

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getMaxOverflowStart()F

    move-result v5

    const/4 v6, 0x0

    .line 405
    iput v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    const/4 v7, 0x0

    .line 406
    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 407
    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eq v7, v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v11

    if-ge v7, v11, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v9

    :goto_1
    move v12, v1

    move v11, v8

    move v1, v9

    :goto_2
    if-ge v1, v2, :cond_14

    .line 409
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 410
    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 411
    iput v12, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 412
    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v13, :cond_3

    .line 413
    iput-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 415
    :cond_3
    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    if-eq v13, v8, :cond_4

    if-lt v1, v13, :cond_4

    iget v13, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    cmpl-float v13, v13, v6

    if-gtz v13, :cond_5

    :cond_4
    if-lt v1, v3, :cond_6

    :cond_5
    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    move v13, v9

    :goto_3
    add-int/lit8 v10, v2, -0x1

    if-ne v1, v10, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    move v10, v9

    .line 418
    :goto_4
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v8, :cond_8

    instance-of v8, v14, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v8, :cond_8

    move-object v8, v14

    check-cast v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 419
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScaleFullyDark()F

    move-result v8

    move/from16 v16, v8

    goto :goto_5

    :cond_8
    const/high16 v16, 0x3f800000    # 1.0f

    .line 421
    :goto_5
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    cmpl-float v8, v8, v6

    if-eqz v8, :cond_a

    if-eqz v10, :cond_9

    if-nez v7, :cond_9

    if-nez v13, :cond_9

    const/4 v10, 0x1

    goto :goto_6

    :cond_9
    move v10, v9

    .line 424
    :cond_a
    :goto_6
    iput v9, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eqz v10, :cond_b

    .line 426
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v8, v8

    sub-float v8, v4, v8

    goto :goto_7

    :cond_b
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v8, v8

    sub-float v8, v5, v8

    :goto_7
    cmpl-float v8, v12, v8

    if-lez v8, :cond_c

    const/4 v6, -0x1

    const/4 v8, 0x1

    goto :goto_8

    :cond_c
    move v8, v9

    const/4 v6, -0x1

    :goto_8
    if-ne v11, v6, :cond_13

    if-nez v13, :cond_d

    if-eqz v8, :cond_13

    :cond_d
    if-eqz v10, :cond_e

    if-nez v13, :cond_e

    add-int/lit8 v6, v1, -0x1

    goto :goto_9

    :cond_e
    move v6, v1

    .line 433
    :goto_9
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v8

    if-eqz v8, :cond_f

    if-gez v6, :cond_f

    move v6, v9

    .line 437
    :cond_f
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    int-to-float v8, v8

    sub-float v8, v4, v8

    iput v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    if-nez v13, :cond_10

    .line 438
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz v8, :cond_11

    .line 439
    :cond_10
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    .line 443
    :cond_11
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 444
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    :cond_12
    move v11, v6

    .line 448
    :cond_13
    iget v6, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v8

    mul-float v6, v6, v16

    add-float/2addr v12, v6

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    goto/16 :goto_2

    .line 450
    :cond_14
    iput v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    const/4 v1, -0x1

    if-eq v11, v1, :cond_18

    .line 452
    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    move v12, v1

    move v1, v11

    :goto_a
    if-ge v1, v2, :cond_19

    .line 454
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 455
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 456
    iget v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v4, v5

    .line 457
    iput v12, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 458
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_17

    if-nez v5, :cond_15

    .line 459
    iget v5, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const v7, 0x3f4ccccd    # 0.8f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_15

    .line 460
    iput v9, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_b

    .line 462
    :cond_15
    iput v6, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 463
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    .line 465
    :goto_b
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-ne v5, v6, :cond_16

    mul-int/lit8 v4, v4, 0x1

    :cond_16
    int-to-float v4, v4

    iget v5, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    mul-float/2addr v4, v5

    add-float/2addr v12, v4

    .line 467
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    goto :goto_c

    :cond_17
    const/4 v4, 0x2

    .line 469
    iput v4, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    if-lez v2, :cond_19

    add-int/lit8 v1, v2, -0x1

    .line 473
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 474
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 475
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 478
    :cond_19
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_1d

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v1

    cmpg-float v1, v12, v1

    if-gez v1, :cond_1d

    .line 480
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v1, :cond_1a

    const/4 v6, 0x0

    goto :goto_d

    :cond_1a
    iget v6, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 484
    :goto_d
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-eqz v1, :cond_1b

    .line 485
    iget v1, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    iget v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v6, v1, v6

    move/from16 v17, v6

    goto :goto_e

    :cond_1b
    const/16 v17, 0x0

    .line 488
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v4

    sub-float/2addr v1, v4

    sub-float v1, v1, v17

    div-float/2addr v1, v3

    const/4 v4, -0x1

    if-eq v11, v4, :cond_1c

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v4

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float v1, v4, v3

    :cond_1c
    move v4, v9

    :goto_f
    if-ge v4, v2, :cond_1d

    .line 498
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 499
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 500
    iget v6, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    add-float/2addr v6, v1

    iput v6, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 504
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v9

    :goto_10
    if-ge v1, v2, :cond_1e

    .line 506
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 507
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    sub-float/2addr v6, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v6, v4

    iput v6, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 511
    :cond_1e
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_1f

    .line 512
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-eqz v1, :cond_1f

    .line 516
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconLocation:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    aget v4, v4, v9

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 517
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v13, v5, v4

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v13, v0

    div-float/2addr v13, v3

    sub-float/2addr v2, v13

    iput v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 518
    iput v9, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    :cond_1f
    return-void
.end method

.method public calculateIconTranslations(Landroid/view/View;F)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v2

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    .line 534
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :cond_0
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    move v4, v3

    .line 536
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v5

    .line 537
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getMaxOverflowStart()F

    move-result v6

    const/4 v7, 0x0

    .line 538
    iput v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    const/4 v8, 0x0

    .line 539
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 540
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v12

    if-ge v8, v12, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    move v13, v2

    move v12, v9

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_14

    .line 542
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 543
    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 544
    iput v13, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 545
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v11, :cond_3

    .line 546
    iput-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 548
    :cond_3
    iget v11, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    if-eq v11, v9, :cond_4

    if-lt v2, v11, :cond_4

    iget v11, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    cmpl-float v11, v11, v7

    if-gtz v11, :cond_5

    :cond_4
    if-lt v2, v4, :cond_6

    :cond_5
    const/4 v11, 0x1

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    add-int/lit8 v9, v3, -0x1

    if-ne v2, v9, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    .line 551
    :goto_4
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v10, :cond_8

    instance-of v10, v15, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v10, :cond_8

    move-object v10, v15

    check-cast v10, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 552
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScaleFullyDark()F

    move-result v10

    move/from16 v16, v10

    goto :goto_5

    :cond_8
    const/high16 v16, 0x3f800000    # 1.0f

    .line 554
    :goto_5
    iget v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    cmpl-float v10, v10, v7

    if-eqz v10, :cond_a

    if-eqz v9, :cond_9

    if-nez v8, :cond_9

    if-nez v11, :cond_9

    const/4 v9, 0x1

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    :cond_a
    :goto_6
    const/4 v10, 0x0

    .line 557
    iput v10, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eqz v9, :cond_b

    .line 559
    iget v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v10, v10

    sub-float v10, v5, v10

    goto :goto_7

    :cond_b
    iget v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    :goto_7
    cmpl-float v10, v13, v10

    if-lez v10, :cond_c

    const/4 v7, -0x1

    const/4 v10, 0x1

    goto :goto_8

    :cond_c
    const/4 v7, -0x1

    const/4 v10, 0x0

    :goto_8
    if-ne v12, v7, :cond_13

    if-nez v11, :cond_d

    if-eqz v10, :cond_13

    :cond_d
    if-eqz v9, :cond_e

    if-nez v11, :cond_e

    add-int/lit8 v7, v2, -0x1

    move v10, v7

    goto :goto_9

    :cond_e
    move v10, v2

    .line 566
    :goto_9
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v7

    if-eqz v7, :cond_f

    if-gez v10, :cond_f

    const/4 v10, 0x0

    .line 570
    :cond_f
    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    int-to-float v7, v7

    sub-float v7, v5, v7

    iput v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    if-nez v11, :cond_10

    .line 571
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz v7, :cond_11

    .line 572
    :cond_10
    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    invoke-static {v13, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    .line 576
    :cond_11
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 577
    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    :cond_12
    move v12, v10

    .line 581
    :cond_13
    iget v7, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v7, v9

    mul-float v7, v7, v16

    add-float/2addr v13, v7

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    goto/16 :goto_2

    :cond_14
    const/4 v2, 0x0

    .line 583
    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    const/4 v2, -0x1

    if-eq v12, v2, :cond_18

    .line 585
    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    move v13, v2

    move v2, v12

    :goto_a
    if-ge v2, v3, :cond_19

    .line 587
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 588
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 589
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v5, v6

    .line 590
    iput v13, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 591
    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_17

    if-nez v6, :cond_15

    .line 592
    iget v6, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const v8, 0x3f4ccccd    # 0.8f

    cmpg-float v6, v6, v8

    if-gez v6, :cond_15

    const/4 v6, 0x0

    .line 593
    iput v6, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_b

    .line 595
    :cond_15
    iput v7, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 596
    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    .line 598
    :goto_b
    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-ne v6, v7, :cond_16

    mul-int/lit8 v5, v5, 0x1

    :cond_16
    int-to-float v5, v5

    iget v6, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    mul-float/2addr v5, v6

    add-float/2addr v13, v5

    .line 600
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    goto :goto_c

    :cond_17
    const/4 v5, 0x2

    .line 602
    iput v5, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    if-lez v3, :cond_19

    add-int/lit8 v2, v3, -0x1

    .line 606
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 607
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 608
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 611
    :cond_19
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v2, :cond_1d

    .line 612
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v2

    cmpg-float v2, v13, v2

    if-gez v2, :cond_1d

    .line 613
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v2, :cond_1a

    const/4 v7, 0x0

    goto :goto_d

    :cond_1a
    iget v7, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 617
    :goto_d
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-eqz v2, :cond_1b

    .line 618
    iget v2, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v7, v2, v7

    goto :goto_e

    :cond_1b
    const/4 v7, 0x0

    .line 621
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v5

    sub-float/2addr v2, v5

    sub-float/2addr v2, v7

    div-float/2addr v2, v4

    const/4 v5, -0x1

    if-eq v12, v5, :cond_1c

    .line 627
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v5

    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    add-float/2addr v5, v2

    div-float v2, v5, v4

    :cond_1c
    const/4 v5, 0x0

    :goto_f
    if-ge v5, v3, :cond_1d

    .line 631
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 632
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 633
    iget v7, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    add-float/2addr v7, v2

    iput v7, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 637
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v3, :cond_1e

    .line 639
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 640
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    sub-float/2addr v7, v8

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v7, v5

    iput v7, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 644
    :cond_1e
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_1f

    .line 645
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-eqz v2, :cond_1f

    .line 649
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 650
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v14, v7, v6

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v14, v6

    div-float/2addr v14, v4

    sub-float/2addr v5, v14

    iput v5, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    const/4 v4, 0x0

    .line 651
    iput v4, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    :cond_1f
    if-eqz v1, :cond_24

    .line 657
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    const/high16 v4, 0x41400000    # 12.0f

    if-eqz v2, :cond_20

    iget v2, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_20

    .line 659
    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v13, v2

    add-float/2addr v13, v4

    goto :goto_12

    :cond_20
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v7

    if-lez v2, :cond_21

    move v2, v7

    goto :goto_11

    :cond_21
    move/from16 v2, p2

    :goto_11
    if-lez v3, :cond_22

    const/4 v3, 0x0

    .line 671
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 672
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v5

    cmpl-float v5, v13, v5

    if-ltz v5, :cond_22

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_22

    cmpg-float v5, v2, v7

    if-gez v5, :cond_22

    const/4 v5, -0x1

    if-eq v12, v5, :cond_22

    .line 675
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    mul-float/2addr v3, v5

    .line 676
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v5

    add-float v13, v5, v3

    :cond_22
    mul-float/2addr v2, v4

    add-float/2addr v13, v2

    .line 681
    :goto_12
    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStowLayoutPadding:I

    int-to-float v2, v2

    cmpg-float v2, v13, v2

    if-gez v2, :cond_23

    .line 682
    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStowLayoutPadding:I

    int-to-float v13, v0

    .line 684
    :cond_23
    invoke-virtual {v1, v13}, Landroid/view/View;->setTranslationX(F)V

    :cond_24
    return-void
.end method

.method public getActualWidth()I
    .locals 2

    .line 739
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getFinalTranslationX()I
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    .line 753
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getIconSize()I
    .locals 0

    .line 838
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    return p0
.end method

.method public getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 0

    .line 776
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    return-object p0
.end method

.method public getNoOverflowExtraPadding()I
    .locals 3

    .line 824
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 828
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    .line 830
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 831
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result p0

    sub-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getPartialOverflowExtraPadding()I
    .locals 3

    .line 807
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasPartialOverflow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 811
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    rsub-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    .line 813
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v1

    add-int/2addr v1, v0

    .line 815
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 816
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result p0

    sub-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public hasOverflow()Z
    .locals 0

    .line 788
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPartialOverflow()Z
    .locals 1

    .line 798
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    const/4 v0, 0x1

    if-lez p0, :cond_0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onViewRemoved$0$NotificationIconContainer(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeTransientView(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 231
    invoke-super {p0, p1}, Lcom/coloros/systemui/phone/base/NotificationIconContainerBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 193
    invoke-super {p0, p1}, Lcom/coloros/systemui/phone/base/NotificationIconContainerBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 194
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, -0x10000

    .line 195
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result p0

    int-to-float v4, p0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 p3, 0x0

    .line 239
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move p4, p3

    .line 240
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_1

    .line 241
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 244
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 245
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, p2

    sub-float v2, p1, v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 247
    invoke-virtual {p5, p3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    if-nez p4, :cond_0

    .line 249
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    invoke-direct {p0, p5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIconSize(I)V

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLocationOnScreen([I)V

    .line 253
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz p1, :cond_2

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->updateState()V

    :cond_2
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 5

    .line 296
    invoke-super {p0, p1}, Lcom/coloros/systemui/phone/base/NotificationIconContainerBase;->onViewAdded(Landroid/view/View;)V

    .line 297
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v0

    .line 298
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 299
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    if-eqz v0, :cond_0

    .line 301
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 302
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->access$002(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z

    .line 304
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    add-int/lit8 v3, v1, 0x1

    .line 308
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 309
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v0, :cond_2

    .line 310
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0

    .line 312
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 315
    :cond_3
    :goto_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_4

    .line 316
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 7

    .line 342
    invoke-super {p0, p1}, Lcom/coloros/systemui/phone/base/NotificationIconContainerBase;->onViewRemoved(Landroid/view/View;)V

    .line 344
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_4

    .line 345
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v0

    .line 346
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 347
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->findFirstViewIndexAfter(F)I

    move-result v2

    .line 350
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v3, :cond_0

    .line 351
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 356
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez v2, :cond_4

    .line 357
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addTransientView(Landroid/view/View;I)V

    .line 360
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 361
    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconContainer$sYOppFQ4vSNRi0SYdFbv716CxNY;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconContainer$sYOppFQ4vSNRi0SYdFbv716CxNY;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    if-eqz v0, :cond_3

    const-wide/16 p0, 0x6e

    goto :goto_1

    :cond_3
    const-wide/16 p0, 0x0

    :goto_1
    move-wide v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;J)V

    :cond_4
    return-void
.end method

.method public resetViewStates()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 383
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 384
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 385
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 386
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 387
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v4, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    iput v2, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 388
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setActualLayoutWidth(I)V
    .locals 0

    .line 718
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    return-void
.end method

.method public setActualPaddingEnd(F)V
    .locals 0

    .line 725
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    return-void
.end method

.method public setActualPaddingStart(F)V
    .locals 0

    .line 732
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 3

    if-nez p1, :cond_1

    .line 842
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 843
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 844
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 845
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-eqz v2, :cond_0

    .line 847
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 848
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 852
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    return-void
.end method

.method public setChangingViewPositions(Z)V
    .locals 0

    .line 761
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3

    .line 765
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    .line 766
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    xor-int/lit8 v1, p2, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    const/4 v0, 0x0

    .line 767
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 768
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 769
    instance-of v2, v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_0

    .line 770
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIsStaticLayout(Z)V
    .locals 0

    .line 714
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    return-void
.end method

.method public setIsolatedIconLocation(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconLocation:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    .line 870
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->updateState()V

    :cond_0
    return-void
.end method

.method public setOpenedAmount(F)V
    .locals 0

    .line 784
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    return-void
.end method

.method public setReplacingIcons(Landroidx/collection/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;)V"
        }
    .end annotation

    .line 856
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0

    .line 780
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    return-void
.end method

.method public setStowLayout(Landroid/view/View;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStowLayout:Landroid/view/View;

    return-void
.end method

.method public showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 861
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Landroid/view/View;

    .line 863
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 864
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->updateState()V

    return-void
.end method
