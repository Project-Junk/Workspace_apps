.class public Lcom/android/systemui/statusbar/NotificationShelf;
.super Lcom/coloros/systemui/notification/base/NotificationShelfBase;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    }
.end annotation


# static fields
.field private static final ICON_ANMATIONS_WHILE_SCROLLING:Z

.field private static final SHELF_IN_TRANSLATION_DURATION:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "NotificationShelf"

.field private static final TAG_CONTINUOUS_CLIPPING:I = 0x7f0a01c5

.field private static final USE_ANIMATIONS_WHEN_OPENING:Z


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field private mAnimationsEnabled:Z

.field private mClipRect:Landroid/graphics/Rect;

.field private mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mCutoutHeight:I

.field private mDarkShelfIconSize:F

.field private mDarkShelfPadding:F

.field private mFirstElementRoundness:F

.field private mGapHeight:I

.field private mHasItemsInStableShelf:Z

.field private mHideBackground:Z

.field private mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mIconAppearTopPadding:I

.field private mIconSize:I

.field private mInteractive:Z

.field private mMaxLayoutHeight:I

.field private mMaxShelfEnd:F

.field private mNoAnimationsInThisFrame:Z

.field private mNotGoneIndex:I

.field private mOpenedAmount:F

.field private mPaddingBetweenElements:I

.field private mRelativeOffset:I

.field private mScrollFastThreshold:I

.field private mShelfAppearTranslation:I

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShowNotificationShelf:Z

.field private mStatusBarHeight:I

.field private mStatusBarPaddingStart:I

.field private mStatusBarState:I

.field private mTmp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "debug.icon_opening_animations"

    .line 79
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    const-string v1, "debug.icon_scroll_animations"

    .line 81
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 87
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 113
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/NotificationShelf;F)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOpenedAmount(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/NotificationShelf;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setHasItemsInStableShelf(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    return p0
.end method

.method private clipTransientViews()V
    .locals 4

    const/4 v0, 0x0

    .line 717
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTransientViewCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTransientView(I)Landroid/view/View;

    move-result-object v1

    .line 719
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 720
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 721
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;FI)I

    goto :goto_1

    :cond_0
    const-string v1, "NotificationShelf"

    const-string v2, "NotificationShelf.clipTransientViews(): Trying to clip non-row transient view"

    .line 723
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getFullyClosedTranslation()F
    .locals 1

    .line 1073
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    sub-int/2addr v0, p0

    neg-int p0, v0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    return p0
.end method

.method private getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 0

    .line 1069
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object p0

    return-object p0
.end method

.method private getScreenState()I
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isQsExpanded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    if-ne v0, v1, :cond_0

    return v1

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isQsExpanded()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    return v2

    .line 700
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    if-ne p0, v2, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    if-ne p0, v1, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0
.end method

.method private initDimens()V
    .locals 4

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705d7

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    const v1, 0x7f0707c3

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    const v1, 0x7f0707d9

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarPaddingStart:I

    const v1, 0x7f0705c6

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    const v1, 0x7f070792

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfAppearTranslation:I

    const v1, 0x7f07089b

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDarkShelfPadding:F

    .line 193
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDarkTopPadding:I

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const v3, 0x7f070610

    .line 198
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f070793

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 202
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v1, v2, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setPadding(IIII)V

    const v1, 0x7f070788

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    const v1, 0x7f050031

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 209
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0707d6

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    goto :goto_0

    .line 212
    :cond_0
    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_dimen_status_bar_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    :goto_0
    const v1, 0x7f0702ec

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDarkShelfIconSize:F

    const v1, 0x7f070740

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mGapHeight:I

    .line 218
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setFirstElementRoundness(F)V
    .locals 1

    .line 730
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 731
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    const/4 v0, 0x0

    .line 732
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setTopRoundness(FZ)Z

    :cond_0
    return-void
.end method

.method private setHasItemsInStableShelf(Z)V
    .locals 1

    .line 1208
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eq v0, p1, :cond_0

    .line 1209
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    .line 1210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    :cond_0
    return-void
.end method

.method private setHideBackground(Z)V
    .locals 1

    .line 1086
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eq v0, p1, :cond_0

    .line 1087
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 1088
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateBackground()V

    .line 1089
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateOutline()V

    :cond_0
    return-void
.end method

.method private setIconTransformationAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;FFZZ)V
    .locals 10

    .line 986
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 987
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v1

    .line 989
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationIcon()Landroid/view/View;

    move-result-object v2

    .line 990
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getContentTranslation()F

    move-result v4

    add-float/2addr v3, v4

    .line 991
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInShelf()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isTransformingIntoShelf()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz p4, :cond_1

    if-nez v4, :cond_1

    .line 997
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result p4

    sub-float v3, p4, p3

    :cond_1
    const/4 p3, 0x0

    if-eqz v2, :cond_2

    .line 1002
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getRelativeTopPadding(Landroid/view/View;)I

    move-result p4

    .line 1003
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    .line 1005
    :cond_2
    iget p4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    move v2, p3

    :goto_1
    int-to-float p4, p4

    add-float/2addr v3, p4

    .line 1008
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result p4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr p4, v7

    .line 1009
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDarkShelfIconSize:F

    goto :goto_2

    :cond_3
    iget v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    int-to-float v7, v7

    .line 1010
    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v9

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr p4, v8

    sub-float/2addr v3, p4

    .line 1011
    invoke-static {v3, p3, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p4

    .line 1015
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v3

    mul-float/2addr v7, v3

    .line 1017
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isShowingIcon()Z

    move-result v3

    xor-int/2addr v3, v6

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v3, :cond_4

    div-float v2, v7, v9

    move v9, p2

    goto :goto_3

    :cond_4
    move v9, v8

    .line 1024
    :goto_3
    invoke-static {v2, v7, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    if-eqz v1, :cond_e

    div-float/2addr v2, v7

    .line 1027
    iput v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    .line 1028
    iget v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    iput v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleY:F

    cmpl-float p2, p2, p3

    if-nez p2, :cond_5

    .line 1029
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isAnimating(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_5

    move p2, v6

    goto :goto_4

    :cond_5
    move p2, v5

    :goto_4
    iput-boolean p2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 1030
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isDrawingAppearAnimation()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInShelf()Z

    move-result p2

    if-nez p2, :cond_6

    move p2, v6

    goto :goto_5

    :cond_6
    move p2, v5

    :goto_5
    if-eqz p2, :cond_7

    .line 1032
    iput-boolean v6, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 1033
    iput p3, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 1035
    :cond_7
    iput v9, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->alpha:F

    .line 1036
    iput p4, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->yTranslation:F

    if-eqz v4, :cond_8

    .line 1038
    iput v8, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 1039
    iput v8, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->alpha:F

    .line 1040
    iput v8, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    .line 1041
    iput v8, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleY:F

    .line 1042
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 1044
    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInShelf()Z

    move-result p2

    if-nez p2, :cond_b

    if-eqz p5, :cond_9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result p2

    if-nez p2, :cond_a

    .line 1045
    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslationZ()F

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_b

    :cond_a
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 1046
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyDark()Z

    move-result p2

    if-nez p2, :cond_b

    .line 1047
    iput-boolean v6, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 1049
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getBackgroundColorWithoutTint()I

    move-result p2

    .line 1050
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContrastedStaticDrawableColor(I)I

    move-result p2

    .line 1054
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-static {}, Lcom/coloros/systemui/notification/usb/Utils;->isCTSVersion()Z

    move-result p3

    if-nez p3, :cond_c

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    .line 1055
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result p0

    if-nez p0, :cond_c

    move p2, v5

    :cond_c
    if-nez v3, :cond_d

    if-eqz p2, :cond_d

    .line 1060
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result p0

    .line 1061
    iget p1, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-static {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result p2

    .line 1064
    :cond_d
    iput p2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    :cond_e
    return-void
.end method

.method private setOpenedAmount(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 1145
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    .line 1146
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    .line 1147
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPanelFullWidth()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDark()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move p1, v0

    .line 1151
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 1152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v0

    sub-int v0, v1, v0

    .line 1163
    :cond_3
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1164
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v1

    .line 1165
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 1166
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 1169
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 1170
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 1171
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 1172
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 1169
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 1175
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualLayoutWidth(I)V

    .line 1176
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasOverflow()Z

    move-result v1

    .line 1177
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v2

    if-nez v1, :cond_6

    .line 1181
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getNoOverflowExtraPadding()I

    move-result v1

    goto :goto_2

    .line 1184
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPartialOverflowExtraPadding()I

    move-result v1

    :goto_2
    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1186
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 1187
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v2

    int-to-float v2, v2

    .line 1186
    invoke-static {v1, v2, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    .line 1189
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingEnd(F)V

    int-to-float v0, v0

    .line 1190
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 1191
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    .line 1190
    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 1192
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingStart(F)V

    .line 1193
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOpenedAmount(F)V

    return-void
.end method

.method private updateContinuousClipping(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 6

    .line 754
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 755
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDark()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const v4, 0x7f0a01c5

    .line 756
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 758
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 759
    new-instance v2, Lcom/android/systemui/statusbar/NotificationShelf$2;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$2;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 775
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 776
    new-instance p1, Lcom/android/systemui/statusbar/NotificationShelf$3;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationShelf$3;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 791
    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private updateIconAppearance(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;FZZZZ)F
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 839
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 840
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 846
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslationY()F

    move-result v4

    .line 847
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getActualHeight()I

    move-result v5

    iget v6, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int/2addr v5, v6

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    .line 849
    invoke-static {v8, v7, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    mul-float/2addr v6, v7

    int-to-float v7, v5

    .line 850
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    if-eqz p6, :cond_1

    .line 852
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMinHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 853
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMinHeight()I

    move-result v7

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    .line 853
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :cond_1
    int-to-float v7, v5

    add-float/2addr v7, v4

    const/high16 v9, -0x80000000

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p5, :cond_3

    .line 858
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 859
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v12

    if-nez v12, :cond_3

    iget-boolean v12, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-nez v12, :cond_3

    .line 867
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getIntrinsicPadding()I

    move-result v12

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-object/from16 v14, p1

    .line 868
    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    .line 869
    iget v13, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v15

    sub-int/2addr v13, v15

    int-to-float v13, v13

    cmpg-float v15, v12, v13

    if-gez v15, :cond_4

    .line 870
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v15, v12

    cmpl-float v13, v15, v13

    if-ltz v13, :cond_4

    .line 871
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslationY()F

    move-result v13

    cmpg-float v13, v13, v12

    if-gez v13, :cond_4

    .line 872
    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    .line 873
    iput v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 875
    iget v13, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v15

    sub-int/2addr v13, v15

    int-to-float v13, v13

    sub-float/2addr v13, v12

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    cmpg-float v13, v13, v15

    if-gez v13, :cond_2

    move v13, v11

    goto :goto_0

    :cond_2
    move v13, v10

    :goto_0
    if-nez v13, :cond_4

    .line 880
    iget v13, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v15

    sub-int/2addr v13, v15

    int-to-float v13, v13

    sub-float/2addr v13, v12

    float-to-int v12, v13

    iput v12, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    goto :goto_1

    :cond_3
    move-object/from16 v14, p1

    .line 887
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v12

    .line 888
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 889
    iget v5, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 890
    iget v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    int-to-float v6, v6

    :cond_5
    cmpl-float v7, v7, v12

    if-ltz v7, :cond_8

    .line 893
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isUnlockHintRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInShelf()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_6
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 894
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result v7

    if-nez v7, :cond_7

    .line 895
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    cmpg-float v3, v4, v12

    if-gez v3, :cond_9

    sub-float/2addr v12, v4

    int-to-float v3, v5

    div-float v3, v12, v3

    .line 898
    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 899
    sget-object v4, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 901
    invoke-static {v4, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    sub-float v1, v8, v1

    div-float/2addr v12, v6

    .line 906
    invoke-static {v8, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v8, v3

    move v12, v1

    move v11, v10

    goto :goto_2

    :cond_8
    move v8, v3

    :cond_9
    move v12, v8

    :goto_2
    if-eqz v11, :cond_a

    if-nez p5, :cond_a

    .line 917
    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v1, :cond_a

    .line 918
    iput-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    .line 919
    iput v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v12

    move v4, v6

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 921
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconPositioning(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;FFFZZZZ)V

    return v12
.end method

.method private updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 4

    .line 737
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslationY()F

    move-result v0

    .line 738
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getClipTopAmount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getClipTopAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 742
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 743
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 744
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyDark()Z

    move-result p0

    if-nez p0, :cond_1

    sub-float/2addr v0, v1

    float-to-int p0, v0

    .line 746
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 747
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 749
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private updateIconPositioning(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;FFFZZZZ)V
    .locals 12

    move-object v0, p0

    move/from16 v5, p8

    .line 929
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 930
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 934
    :cond_0
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v7, p2, v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-lez v7, :cond_2

    move v7, v8

    goto :goto_1

    :cond_2
    move v7, v9

    :goto_1
    cmpl-float v10, v7, p3

    if-nez v10, :cond_9

    if-nez p6, :cond_3

    if-eqz p7, :cond_4

    :cond_3
    if-nez v3, :cond_4

    move v10, v6

    goto :goto_2

    :cond_4
    move v10, v4

    .line 937
    :goto_2
    iput-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 938
    iget-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v10, :cond_6

    sget-boolean v10, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v10, :cond_5

    cmpl-float v10, p3, v9

    if-nez v10, :cond_5

    if-eqz p5, :cond_5

    goto :goto_3

    :cond_5
    move v10, v4

    goto :goto_4

    :cond_6
    :goto_3
    move v10, v6

    :goto_4
    iput-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 940
    sget-boolean v10, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v10, :cond_7

    cmpl-float v10, p3, v9

    if-nez v10, :cond_7

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 941
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v10

    if-nez v10, :cond_7

    move v10, v6

    goto :goto_5

    :cond_7
    move v10, v4

    :goto_5
    iput-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    .line 942
    iget v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v11

    sub-float/2addr v10, v11

    .line 943
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    cmpl-float v10, v10, v9

    if-lez v10, :cond_8

    move v10, v6

    goto :goto_6

    :cond_8
    move v10, v4

    :goto_6
    iput-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    :cond_9
    if-nez v3, :cond_b

    if-nez p6, :cond_a

    if-eqz p7, :cond_b

    .line 945
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v3, :cond_b

    .line 946
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 947
    :cond_a
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->cancelAnimations(Landroid/view/View;)V

    .line 948
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 949
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 951
    :cond_b
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 952
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 954
    :cond_c
    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v1, :cond_d

    .line 955
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    .line 958
    :cond_d
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDarkAtAll()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInShelf()Z

    move-result v1

    if-nez v1, :cond_f

    .line 959
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyDark()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    move v8, v9

    goto :goto_9

    :cond_f
    if-nez v5, :cond_12

    .line 960
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_12

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-nez v1, :cond_12

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    if-eqz v1, :cond_10

    goto :goto_8

    .line 966
    :cond_10
    iget v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    if-nez v1, :cond_11

    move v1, v6

    goto :goto_7

    :cond_11
    move v1, v4

    :goto_7
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    move v8, v7

    goto :goto_9

    :cond_12
    :goto_8
    move v8, p2

    .line 969
    :goto_9
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_14

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v1, :cond_13

    goto :goto_a

    :cond_13
    move v1, v8

    goto :goto_b

    :cond_14
    :goto_a
    move v1, p3

    :goto_b
    iput v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 973
    iput v7, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 974
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v1

    if-nez v1, :cond_16

    if-nez v5, :cond_15

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    if-eqz v1, :cond_16

    :cond_15
    move-object v1, p1

    move v9, p2

    goto :goto_c

    :cond_16
    move-object v1, p1

    .line 978
    :goto_c
    invoke-virtual {p1, v9, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    cmpl-float v2, v7, v8

    if-eqz v2, :cond_17

    move v4, v6

    :cond_17
    move-object v0, p0

    move-object v1, p1

    move v2, v8

    move/from16 v3, p4

    move/from16 v5, p8

    .line 979
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationShelf;->setIconTransformationAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;FFZZ)V

    return-void
.end method

.method private updateInteractiveness()V
    .locals 2

    .line 1234
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 1236
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setClickable(Z)V

    .line 1237
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setFocusable(Z)V

    .line 1238
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setImportantForAccessibility(I)V

    return-void
.end method

.method private updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;FI)I
    .locals 5

    .line 801
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 802
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isPinned()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isHeadsUpAnimatingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 803
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 804
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->showingAmbientPulsing()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyDark()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 805
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    cmpl-float p3, v0, p2

    if-lez p3, :cond_7

    if-nez v2, :cond_7

    .line 806
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 807
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result p3

    if-nez p3, :cond_5

    if-nez v1, :cond_7

    :cond_5
    sub-float p2, v0, p2

    float-to-int p2, p2

    if-eqz v1, :cond_6

    .line 810
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getIntrinsicHeight()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getCollapsedHeight()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 813
    :cond_6
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipBottomAmount(I)V

    goto :goto_2

    .line 815
    :cond_7
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipBottomAmount(I)V

    :goto_2
    if-eqz v2, :cond_8

    .line 818
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result p0

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_8
    return v3
.end method

.method private updateRelativeOffset()V
    .locals 3

    .line 1122
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLocationOnScreen([I)V

    .line 1123
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 1124
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getLocationOnScreen([I)V

    .line 1125
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 172
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 175
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/systemui/statusbar/-$$Lambda$8YfEjjqRPrEPxgR0N5xXN2MOhDk;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/-$$Lambda$8YfEjjqRPrEPxgR0N5xXN2MOhDk;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/NotificationShelf;->setStowButtonClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 2

    .line 305
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$1;)V

    return-object v0
.end method

.method public fadeInTranslating()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfAppearTranslation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setTranslationY(F)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAlpha(F)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 283
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 287
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 288
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 289
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 290
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 291
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected getContentView()Landroid/view/View;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method public getNotGoneIndex()I
    .locals 0

    .line 1204
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    return p0
.end method

.method public getNotificationMergeSize()I
    .locals 0

    .line 1077
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method public hasItemsInStableShelf()Z
    .locals 0

    .line 1219
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    return p0
.end method

.method public hasNoContentHeight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isInteractive()Z
    .locals 0

    .line 1244
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    return p0
.end method

.method protected needsOutline()Z
    .locals 1

    .line 1095
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->needsOutline()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1130
    invoke-super {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 1137
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1138
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 1139
    :cond_0
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCutoutHeight:I

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 159
    invoke-super {p0}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->onAttachedToWindow()V

    .line 160
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x3

    .line 161
    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 225
    invoke-super {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    .line 229
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStowIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIbStowIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    const/4 v1, 0x0

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setTextSize(IF)V

    .line 233
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStowIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0808b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIbStowIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0808ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f110053

    const v0, 0x7f11021c

    .line 236
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06027d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setText(I)V

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602ee

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 244
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 246
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setTextColor(I)V

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setText(I)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    .line 250
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 249
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .line 262
    invoke-super {p0}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->onDensityOrFontScaleChanged()V

    .line 263
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    const v0, 0x7f0705c8

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->onDetachedFromWindow()V

    .line 167
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    invoke-super {p0}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->onFinishInflate()V

    const v0, 0x7f0a01bc

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipChildren(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipToPadding(Z)V

    .line 131
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setStowLayout(Landroid/view/View;)V

    const v0, 0x7f0a0528

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    const v0, 0x7f0a04c1

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStowLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02e5

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStowIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a02c0

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIbStowIcon:Landroid/widget/ImageView;

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setStowContentVisible(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0705c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 139
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setTextSize(IF)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    new-instance v2, Lcom/android/systemui/statusbar/NotificationShelf$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/NotificationShelf$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipToActualHeight(Z)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipChildren(Z)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipToPadding(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsStaticLayout(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 153
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setBottomRoundness(FZ)Z

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1266
    invoke-super {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1267
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_0

    .line 1268
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1269
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 1272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f110093

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1273
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1112
    invoke-super/range {p0 .. p5}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->onLayout(ZIIII)V

    .line 1113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    .line 1116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1117
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    neg-int p3, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getWidth()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p3, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1118
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 1229
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 1230
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 5

    .line 1286
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    .line 1288
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateBackgroundColors()V

    .line 1291
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStowIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIbStowIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1294
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    const/4 v2, 0x0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setTextSize(IF)V

    .line 1295
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStowIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0808b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIbStowIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0808ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f110053

    const v1, 0x7f11021c

    .line 1298
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06027d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1299
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    if-eqz v3, :cond_0

    .line 1300
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1301
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setText(I)V

    .line 1302
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    .line 1303
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1302
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1306
    :catch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602ee

    .line 1307
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1306
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 1308
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setTextColor(I)V

    .line 1309
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setText(I)V

    .line 1310
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    .line 1311
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1310
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 1252
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    if-nez p1, :cond_0

    .line 1255
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 0

    .line 1223
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 1224
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->setDark(ZZJ)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDark(ZZJ)V

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateOutline()V

    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 1

    .line 827
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 830
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->setFakeShadowIntensity(FFII)V

    return-void
.end method

.method public setMaxLayoutHeight(I)V
    .locals 0

    .line 1197
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    return-void
.end method

.method public setMaxShelfEnd(F)V
    .locals 0

    .line 1248
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxShelfEnd:F

    return-void
.end method

.method public shouldHideBackground()Z
    .locals 1

    .line 1107
    invoke-super {p0}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public updateAppearance()V
    .locals 33

    move-object/from16 v7, p0

    .line 423
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_0

    return-void

    .line 427
    :cond_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v8

    .line 430
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v9

    const/4 v10, -0x1

    .line 431
    iput v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 432
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v1

    const/4 v11, 0x2

    mul-int/2addr v1, v11

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v1, v8, v0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-ltz v1, :cond_1

    sub-float v0, v8, v0

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 436
    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v14, v0

    goto :goto_0

    :cond_1
    move v14, v13

    .line 450
    :goto_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v15, 0x4

    if-eqz v0, :cond_3

    .line 451
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$300(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mIsStowContentVisible:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 453
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getScreenState()I

    move-result v0

    if-nez v0, :cond_4

    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mLastViewScreenState:I

    if-ne v0, v15, :cond_4

    goto :goto_1

    .line 457
    :cond_3
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$300(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    const/16 v16, 0x1

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    .line 466
    :goto_2
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getCurrentScrollVelocity()F

    move-result v0

    .line 467
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_6

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 468
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 469
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandingVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    goto :goto_3

    :cond_5
    const/16 v17, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/16 v17, 0x1

    :goto_4
    cmpl-float v0, v0, v13

    if-lez v0, :cond_7

    const/16 v18, 0x1

    goto :goto_5

    :cond_7
    const/16 v18, 0x0

    .line 471
    :goto_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 472
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPanelTracking()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v19, 0x1

    goto :goto_6

    :cond_8
    const/16 v19, 0x0

    .line 473
    :goto_6
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v4

    const/4 v0, 0x0

    move-object/from16 v22, v0

    move v1, v13

    move v15, v1

    move/from16 v20, v15

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v21, 0x0

    .line 479
    :goto_7
    iget-object v5, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    const/16 v6, 0x8

    if-ge v3, v5, :cond_1f

    .line 480
    iget-object v5, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 482
    instance-of v10, v5, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v10, :cond_1e

    .line 483
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_1e

    if-ne v5, v7, :cond_9

    goto/16 :goto_19

    .line 487
    :cond_9
    move-object v10, v5

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 489
    invoke-static {v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationZ(Landroid/view/View;)F

    move-result v6

    move/from16 v24, v1

    int-to-float v1, v4

    cmpl-float v1, v6, v1

    if-gtz v1, :cond_b

    .line 490
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    const/16 v25, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/16 v25, 0x1

    :goto_9
    if-ne v5, v9, :cond_c

    const/16 v26, 0x1

    goto :goto_a

    :cond_c
    const/16 v26, 0x0

    .line 492
    :goto_a
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getTranslationY()F

    move-result v27

    if-eqz v26, :cond_d

    .line 493
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_d
    if-nez v25, :cond_f

    if-eqz v16, :cond_e

    goto :goto_b

    .line 511
    :cond_e
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v1, v1

    sub-float v1, v8, v1

    sub-float v5, v1, v27

    .line 513
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isBelowSpeedBump()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_13

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v1

    int-to-float v1, v1

    add-float v1, v27, v1

    .line 516
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_e

    .line 496
    :cond_f
    :goto_b
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_12

    if-nez v25, :cond_11

    if-nez v16, :cond_11

    .line 497
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mFooterShowDismiss:Z

    if-nez v1, :cond_10

    goto :goto_c

    .line 500
    :cond_10
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v1, v1

    sub-float v1, v8, v1

    goto :goto_e

    .line 498
    :cond_11
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v1

    goto :goto_d

    .line 503
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v1

    :goto_d
    int-to-float v1, v1

    add-float/2addr v1, v8

    .line 520
    :cond_13
    :goto_e
    invoke-direct {v7, v10, v1, v11}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;FI)I

    move-result v1

    .line 521
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 525
    instance-of v0, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1c

    .line 526
    move-object v6, v10

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object/from16 v0, p0

    move/from16 v5, v24

    move-object v1, v6

    move-object/from16 v24, v9

    move v9, v2

    move v2, v14

    move/from16 v29, v3

    move/from16 v3, v18

    move/from16 v30, v4

    move/from16 v4, v17

    move/from16 v23, v5

    move/from16 v31, v14

    const/4 v14, 0x0

    move/from16 v5, v19

    move-object/from16 v32, v6

    move/from16 v6, v26

    .line 528
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconAppearance(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;FZZZZ)F

    move-result v0

    add-float/2addr v15, v0

    .line 532
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v1

    cmpl-float v2, v27, v8

    if-ltz v2, :cond_15

    .line 533
    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 534
    iput v11, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 535
    invoke-virtual {v7, v12}, Lcom/android/systemui/statusbar/NotificationShelf;->setTintColor(I)V

    move/from16 v2, v20

    .line 536
    invoke-virtual {v7, v13, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->setOverrideTintColor(IF)V

    goto :goto_10

    :cond_14
    move/from16 v2, v20

    goto :goto_f

    :cond_15
    move/from16 v2, v20

    const/4 v3, -0x1

    .line 538
    :goto_f
    iget v4, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    if-ne v4, v3, :cond_16

    move/from16 v20, v0

    move v13, v12

    goto :goto_11

    :cond_16
    :goto_10
    move/from16 v20, v2

    :goto_11
    if-eqz v26, :cond_18

    if-nez v21, :cond_17

    move v2, v1

    goto :goto_12

    :cond_17
    move/from16 v2, v21

    .line 546
    :goto_12
    invoke-virtual {v10, v2, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    move/from16 v21, v2

    goto :goto_13

    :cond_18
    const/4 v0, 0x0

    .line 549
    invoke-virtual {v10, v14, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    move/from16 v21, v1

    :goto_13
    if-nez v11, :cond_1a

    if-nez v25, :cond_19

    goto :goto_14

    :cond_19
    move-object/from16 v0, v32

    goto :goto_15

    :cond_1a
    :goto_14
    move-object/from16 v0, v32

    .line 552
    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    :goto_15
    if-nez v11, :cond_1b

    .line 555
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 556
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 560
    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1b

    .line 562
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getTranslationY()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 563
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getCurrentTopRoundness()F

    move-result v2

    move/from16 v23, v2

    move v2, v0

    goto :goto_16

    :cond_1b
    move v2, v9

    :goto_16
    add-int/lit8 v11, v11, 0x1

    move v9, v2

    move/from16 v2, v20

    goto :goto_17

    :cond_1c
    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v14

    move/from16 v23, v24

    const/4 v14, 0x0

    move-object/from16 v24, v9

    move v9, v2

    move/from16 v2, v20

    move v1, v12

    .line 571
    :goto_17
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isFirstInSection()Z

    move-result v0

    if-eqz v0, :cond_1d

    move-object/from16 v3, v22

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isLastInSection()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 574
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getTranslationY()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v4

    sub-float/2addr v0, v4

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v4

    .line 576
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getTranslationY()F

    move-result v5

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-lez v6, :cond_1d

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 583
    iget v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mGapHeight:I

    int-to-float v9, v9

    div-float/2addr v4, v9

    move v12, v15

    float-to-double v14, v4

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x0

    .line 584
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBottomRoundness(FZ)Z

    float-to-int v9, v0

    goto :goto_18

    :cond_1d
    move v12, v15

    move/from16 v4, v23

    :goto_18
    move v3, v2

    move v2, v9

    move-object/from16 v22, v10

    move v15, v12

    move/from16 v0, v28

    move v12, v1

    move v1, v4

    goto :goto_1a

    :cond_1e
    :goto_19
    move/from16 v23, v1

    move/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v24, v9

    move/from16 v31, v14

    move-object/from16 v3, v22

    move v9, v2

    move/from16 v2, v20

    move-object/from16 v22, v3

    move/from16 v1, v23

    move v3, v2

    move v2, v9

    :goto_1a
    add-int/lit8 v4, v29, 0x1

    move/from16 v20, v3

    move v3, v4

    move-object/from16 v9, v24

    move/from16 v4, v30

    move/from16 v14, v31

    const/4 v10, -0x1

    goto/16 :goto_7

    :cond_1f
    move/from16 v23, v1

    move v9, v2

    .line 591
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->clipTransientViews()V

    .line 593
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipTopAmount(I)V

    .line 594
    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/NotificationShelf;->setBackgroundTop(I)V

    .line 595
    invoke-direct {v7, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setFirstElementRoundness(F)V

    .line 596
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setSpeedBumpIndex(I)V

    .line 603
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 604
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mStowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations(Landroid/view/View;F)V

    goto :goto_1b

    .line 606
    :cond_20
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 609
    :goto_1b
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    const/4 v0, 0x0

    .line 610
    :goto_1c
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 611
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 612
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_22

    .line 613
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_21

    goto :goto_1d

    .line 616
    :cond_21
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 617
    invoke-direct {v7, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 618
    invoke-direct {v7, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateContinuousClipping(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_22
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 628
    :cond_23
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_38

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v15, v0

    if-gez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_1e

    :cond_24
    const/4 v0, 0x0

    .line 630
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v1, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->yTranslation:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 631
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFooterShowDismiss()Z

    move-result v2

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getScreenState()I

    move-result v3

    .line 633
    iget v4, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mLastViewScreenState:I

    if-eq v3, v4, :cond_25

    .line 634
    iput v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mLastViewScreenState:I

    :cond_25
    if-eqz v3, :cond_34

    const/4 v4, 0x1

    if-eq v3, v4, :cond_35

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2f

    const/4 v5, 0x3

    if-eq v3, v5, :cond_26

    const/4 v5, 0x4

    if-eq v3, v5, :cond_26

    goto/16 :goto_28

    .line 655
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$300(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, 0x0

    .line 658
    invoke-direct {v7, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 659
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->setCleanAllBtnVisible(Z)V

    goto/16 :goto_28

    .line 660
    :cond_27
    iget v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2a

    if-nez v2, :cond_29

    .line 662
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mIsStowContentVisible:Z

    if-eqz v0, :cond_28

    goto :goto_1f

    .line 668
    :cond_28
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/NotificationShelf;->setCleanAllBtnVisible(I)V

    .line 669
    invoke-direct {v7, v4}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    goto/16 :goto_28

    :cond_29
    :goto_1f
    const/4 v0, 0x0

    .line 664
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 665
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->setCleanAllBtnVisible(Z)V

    goto/16 :goto_28

    .line 673
    :cond_2a
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mIsStowContentVisible:Z

    if-nez v1, :cond_2e

    if-eqz v2, :cond_2b

    goto :goto_21

    :cond_2b
    if-nez v0, :cond_2d

    if-eqz v16, :cond_2c

    goto :goto_20

    :cond_2c
    const/4 v4, 0x0

    .line 677
    :cond_2d
    :goto_20
    invoke-direct {v7, v4}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 678
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/NotificationShelf;->setCleanAllBtnVisible(I)V

    goto :goto_28

    :cond_2e
    :goto_21
    const/4 v0, 0x0

    .line 674
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 675
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->setCleanAllBtnVisible(Z)V

    goto :goto_28

    :cond_2f
    if-nez v2, :cond_33

    .line 644
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mIsStowContentVisible:Z

    if-eqz v1, :cond_30

    goto :goto_23

    :cond_30
    if-nez v0, :cond_32

    if-eqz v16, :cond_31

    goto :goto_22

    :cond_31
    const/4 v4, 0x0

    .line 648
    :cond_32
    :goto_22
    invoke-direct {v7, v4}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    goto :goto_24

    :cond_33
    :goto_23
    const/4 v0, 0x0

    .line 646
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 650
    :goto_24
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/NotificationShelf;->setCleanAllBtnVisible(I)V

    goto :goto_28

    :cond_34
    const/4 v4, 0x1

    :cond_35
    if-nez v0, :cond_37

    if-eqz v16, :cond_36

    goto :goto_25

    :cond_36
    const/4 v4, 0x0

    .line 639
    :cond_37
    :goto_25
    invoke-direct {v7, v4}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 640
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/NotificationShelf;->setCleanAllBtnVisible(I)V

    const/4 v5, 0x0

    .line 641
    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/NotificationShelf;->setStowContentVisible(Z)V

    goto :goto_28

    :cond_38
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpg-float v0, v15, v0

    if-gez v0, :cond_39

    move v0, v4

    goto :goto_26

    :cond_39
    move v0, v5

    :goto_26
    if-nez v0, :cond_3b

    if-eqz v16, :cond_3a

    goto :goto_27

    :cond_3a
    move v4, v5

    .line 685
    :cond_3b
    :goto_27
    invoke-direct {v7, v4}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 688
    :goto_28
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3c

    .line 689
    iput v11, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    :cond_3c
    return-void
.end method

.method public updateShelfStow(Z)V
    .locals 1

    .line 407
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 408
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p1

    const-class v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getNotificationsForCurrentUser()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->shouldShowingStowIcon(Ljava/util/ArrayList;)Z

    move-result p1

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setStowContentVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 412
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setStowContentVisible(Z)V

    :goto_0
    return-void
.end method

.method public updateState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 9

    .line 310
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 325
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v3

    const-class v4, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {v3, v4}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    .line 326
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getNotificationsForCurrentUser()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->shouldShowingStowIcon(Ljava/util/ArrayList;)Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 328
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    .line 329
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v4

    add-float/2addr v3, v4

    .line 330
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v4

    add-float/2addr v3, v4

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    goto :goto_1

    .line 335
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    .line 336
    iput v3, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->yTranslation:F

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v4

    iput v4, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 339
    :goto_1
    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->yTranslation:F

    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 344
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 345
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isInHeadsUpPinnedMode()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 346
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpAnimatingAway()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 347
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v6

    if-nez v6, :cond_2

    .line 348
    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->yTranslation:F

    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 350
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    if-eqz v6, :cond_2

    .line 351
    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->yTranslation:F

    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDarkTopPadding:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 357
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v6

    iput v6, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->height:I

    .line 359
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v7, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->height:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v7

    .line 359
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 361
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 362
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getDarkAmount()F

    move-result v7

    .line 363
    :goto_2
    iget v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDarkShelfPadding:F

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    iput v6, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->yTranslation:F

    .line 364
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->zTranslation:F

    .line 369
    iget p1, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->yTranslation:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v6

    sub-float/2addr p1, v6

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCutoutHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr p1, v6

    const/high16 v6, 0x3f800000    # 1.0f

    .line 371
    invoke-static {v6, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 372
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$202(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    .line 373
    iput v5, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->clipTopAmount:I

    .line 374
    iput v6, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->alpha:F

    .line 375
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSpeedBumpIndex()I

    move-result p1

    if-nez p1, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    move p1, v5

    :goto_3
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->belowSpeedBump:Z

    .line 376
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hideSensitive:Z

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationX()F

    move-result p1

    iput p1, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->xTranslation:F

    .line 378
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v6, -0x1

    if-eq p1, v6, :cond_5

    .line 379
    iget p1, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->notGoneIndex:I

    iget v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->notGoneIndex:I

    .line 381
    :cond_5
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$302(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    .line 382
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 383
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isQsCustomizerShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v5

    :cond_7
    :goto_4
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    .line 384
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$402(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    .line 388
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 389
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isInHeadsUpPinnedMode()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpAnimatingAway()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_5

    .line 392
    :cond_8
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$402(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    .line 393
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    goto :goto_6

    .line 390
    :cond_9
    :goto_5
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$402(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    goto :goto_6

    .line 398
    :cond_a
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    const/16 p0, 0x40

    .line 399
    iput p0, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->location:I

    .line 400
    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$302(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    :cond_b
    :goto_6
    return-void
.end method
