.class public Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;
.super Lcom/coloros/systemui/notification/base/NotificationMenuRowBase;
.source "NotificationMenuRow.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;,
        Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ICON_ALPHA_ANIM_DURATION:I = 0xc8

.field private static final SHOW_MENU_DELAY:J = 0x3cL

.field private static final SLIDE_DELETE_NOTIFICATION_SWITCH_STATE:Ljava/lang/String; = "default_slide_notification"

.field private static final SWIPED_BACK_ENOUGH_TO_COVER_FRACTION:F = 0.2f

.field private static final SWIPED_FAR_ENOUGH_MENU_FRACTION:F = 0.25f

.field private static final SWIPED_FAR_ENOUGH_MENU_UNCLEARABLE_FRACTION:F = 0.15f

.field private static final TAG:Ljava/lang/String; = "swipe"


# instance fields
.field private mAlpha:F

.field private mAnimating:Z

.field private mAppOpsItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field private mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

.field private mContext:Landroid/content/Context;

.field private mDismissRtl:Z

.field private mDismissing:Z

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private mHandler:Landroid/os/Handler;

.field private mHorizSpaceForIcon:I

.field private mIconLocation:[I

.field private mIconPadding:I

.field private mIconsPlaced:Z

.field private mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

.field private mIsForeground:Z

.field private mIsUserTouching:Z

.field private final mIsUsingBidirectionalSwipe:Z

.field private mLeftMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuContainer:Landroid/widget/FrameLayout;

.field private mMenuFadedIn:Z

.field private final mMenuItemsByView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

.field private mMenuSnapped:Z

.field private mMenuSnappedOnLeft:Z

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mOnLeft:Z

.field private mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mParentLocation:[I

.field private mRightMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldShowMenu:Z

.field private mSidePadding:I

.field private mSnapping:Z

.field private mSnoozeItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field private mTranslation:F

.field private mVertSpaceForIcons:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 146
    invoke-direct {p0}, Lcom/coloros/systemui/notification/base/NotificationMenuRowBase;-><init>()V

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    const/4 v0, 0x2

    .line 116
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconLocation:[I

    .line 117
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParentLocation:[I

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    .line 120
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mVertSpaceForIcons:I

    .line 121
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconPadding:I

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050030

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mShouldShowMenu:Z

    .line 149
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    .line 151
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    .line 152
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUsingBidirectionalSwipe:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)F
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuLocationChange()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;F)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->fadeInMenu(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAnimating:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)Landroid/widget/FrameLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)F
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    return p0
.end method

.method private addMenuView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/view/ViewGroup;)V
    .locals 2

    .line 847
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 849
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 850
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 851
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 853
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 854
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 855
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static createAppOpsItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 4

    .line 839
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d004a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;

    .line 841
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    const/4 v3, -0x1

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    return-object v2
.end method

.method static createInfoItem(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;
    .locals 5

    .line 812
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1105a2

    .line 813
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d016d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    .line 818
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    const v3, 0x7f0808b9

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    return-object v2

    .line 822
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    const v3, 0x7f08090e

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    return-object v2
.end method

.method static createInfoItem(Landroid/content/Context;Z)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;
    .locals 5

    .line 828
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1105a2

    .line 829
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 830
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d016d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    if-eqz p1, :cond_0

    const p1, 0x7f0808bc

    goto :goto_0

    :cond_0
    const p1, 0x7f0808bb

    .line 835
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    return-object v2
.end method

.method private createMenuViews(ZZ)V
    .locals 5

    .line 284
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsForeground:Z

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanel()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705f6

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    const v1, 0x7f0705f8

    .line 294
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mVertSpaceForIcons:I

    const v1, 0x7f070612

    .line 297
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSidePadding:I

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "show_notification_snooze"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    .line 308
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 310
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createAppOpsItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAppOpsItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 311
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUsingBidirectionalSwipe:Z

    if-eqz v3, :cond_3

    .line 312
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createInfoItem(Landroid/content/Context;Z)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    goto :goto_1

    .line 314
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createInfoItem(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    .line 317
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUsingBidirectionalSwipe:Z

    if-nez v2, :cond_8

    .line 325
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 326
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->canBeDismissed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 328
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createDeleteItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDeleteItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 329
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDeleteItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez p2, :cond_7

    if-eqz v0, :cond_7

    .line 332
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    if-eqz v0, :cond_6

    .line 336
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAppOpsItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAppOpsItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 345
    :cond_8
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissRtl:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    goto :goto_3

    :cond_9
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    .line 346
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->populateMenuViews()V

    if-eqz p1, :cond_a

    .line 351
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->resetState(Z)V

    goto :goto_5

    .line 353
    :cond_a
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    .line 355
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUserTouching:Z

    if-nez p1, :cond_b

    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->onSnapOpen()V

    :cond_b
    :goto_5
    return-void
.end method

.method static createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 5

    .line 802
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 803
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0170

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 804
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    const v2, 0x7f1105a4

    .line 805
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 806
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    const v3, 0x7f080915

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    return-object v2
.end method

.method private fadeInMenu(F)V
    .locals 6

    .line 717
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissing:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 720
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuLocationChange()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 721
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    .line 723
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 725
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    const/4 v4, 0x2

    .line 726
    new-array v4, v4, [F

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    aput v5, v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 727
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;FZF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 739
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 767
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 768
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 769
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method private isMenuLocationChange()Z
    .locals 5

    .line 618
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconPadding:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 619
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconPadding:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 620
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz v0, :cond_4

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method private populateMenuViews()V
    .locals 6

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 366
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    .line 370
    :goto_0
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-nez v0, :cond_3

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const-string v4, "default_slide_notification"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    if-eqz v2, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    goto :goto_1

    .line 381
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v5, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    if-nez v2, :cond_2

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    .line 385
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 386
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->addMenuView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    .line 390
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 391
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->addMenuView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private resetState(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    const/4 v0, 0x0

    .line 399
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    .line 400
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    .line 401
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAnimating:Z

    .line 402
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    .line 403
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissing:Z

    .line 404
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 407
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuReset(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setAppName(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 539
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 540
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 542
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    const v4, 0x7f1105a0

    .line 544
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 545
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getContentDescription()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 543
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 546
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getMenuView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 548
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setMenuLocation()V
    .locals 8

    .line 627
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 630
    :goto_0
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 631
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isSnapping()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    .line 632
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 636
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    .line 637
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->populateMenuViews()V

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    .line 639
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v3

    if-eq v0, v3, :cond_b

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isSnapping()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_b

    .line 640
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_6

    .line 644
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    .line 645
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    if-eq v3, v0, :cond_6

    .line 647
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->populateMenuViews()V

    .line 651
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    :goto_3
    if-ge v1, v3, :cond_a

    .line 653
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 654
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    mul-int/2addr v5, v1

    int-to-float v5, v5

    .line 655
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 660
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v0, :cond_7

    .line 661
    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSidePadding:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    goto :goto_4

    :cond_7
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSidePadding:I

    int-to-float v5, v5

    sub-float v5, v6, v5

    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move v5, v6

    .line 663
    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    goto :goto_3

    .line 667
    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    :cond_b
    :goto_6
    return-void
.end method


# virtual methods
.method protected beginDrag()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 457
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUserTouching:Z

    return-void
.end method

.method public canBeDismissed()Z
    .locals 0

    .line 920
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result p0

    return p0
.end method

.method protected cancelDrag()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createMenu(Landroid/view/ViewGroup;Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 212
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 219
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p2, :cond_2

    .line 221
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p2, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_2

    move v0, v1

    .line 220
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createMenuViews(ZZ)V

    return-void
.end method

.method public getAppOpsMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAppOpsItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object p0
.end method

.method protected getDismissThreshold()F
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 874
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p0, v0

    return p0
.end method

.method public getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    return-object p0
.end method

.method protected getMaximumSwipeDistance()F
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 515
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    int-to-float p0, p0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p0, v0

    return p0
.end method

.method public getMenuItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation

    .line 157
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    :goto_0
    return-object p0
.end method

.method public getMenuSnapTarget()I
    .locals 1

    .line 900
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    .line 902
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSpaceForMenu()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSpaceForMenu()I

    move-result p0

    neg-int p0, p0

    :goto_0
    return p0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected getMinimumSwipeDistance()F
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 507
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_0
    const v0, 0x3e19999a    # 0.15f

    .line 510
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    return p0
.end method

.method protected getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 177
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public getRevealAnimationOrigin()Landroid/graphics/Point;
    .locals 4

    .line 790
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->getMenuView()Landroid/view/View;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 792
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 793
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 796
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getRight()I

    move-result p0

    sub-int/2addr p0, v1

    .line 797
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method protected getSnapBackThreshold()F
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 865
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSpaceForMenu()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getMaximumSwipeDistance()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getSnoozeMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object p0
.end method

.method protected getSpaceForMenu()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 695
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSidePadding:I

    add-int/2addr v0, p0

    return v0

    .line 699
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method protected getTranslation()F
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 248
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    return p0
.end method

.method protected isDismissing()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 197
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissing:Z

    return p0
.end method

.method protected isMenuOnLeft()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 182
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    return p0
.end method

.method protected isMenuSnapped()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 192
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    return p0
.end method

.method protected isMenuSnappedOnLeft()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 187
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnappedOnLeft:Z

    return p0
.end method

.method public isMenuVisible()Z
    .locals 1

    .line 228
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSnappedAndOnSameSide()Z
    .locals 1

    .line 914
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuSnapped()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuSnappedOnLeft()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isSnapping()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 202
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    return p0
.end method

.method public isSwipedEnoughToShowMenu()Z
    .locals 3

    .line 889
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getMinimumSwipeDistance()F

    move-result v0

    .line 890
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getTranslation()F

    move-result v1

    .line 891
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    if-eqz p0, :cond_0

    cmpl-float p0, v1, v0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_0
    neg-float p0, v0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isTowardsMenu(F)Z
    .locals 2

    .line 523
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    cmpg-float v0, p1, v1

    if-lez v0, :cond_1

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    if-nez p0, :cond_2

    cmpl-float p0, p1, v1

    if-ltz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isUserTouching()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 233
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUserTouching:Z

    return p0
.end method

.method public isWithinSnapMenuThreshold()Z
    .locals 5

    .line 879
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getTranslation()F

    move-result v0

    .line 880
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSnapBackThreshold()F

    move-result v1

    .line 881
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getDismissThreshold()F

    move-result v2

    .line 882
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    cmpl-float p0, v0, v1

    if-lez p0, :cond_1

    cmpg-float p0, v0, v2

    if-gez p0, :cond_1

    goto :goto_0

    :cond_0
    neg-float p0, v1

    cmpg-float p0, v0, p0

    if-gez p0, :cond_1

    neg-float p0, v2

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    return v3
.end method

.method public menuItemToExposeOnSnap()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 1

    .line 785
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUsingBidirectionalSwipe:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-nez v0, :cond_0

    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParentLocation:[I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getLocationOnScreen([I)V

    .line 608
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    div-int/lit8 v0, v0, 0x2

    .line 609
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 610
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconLocation:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParentLocation:[I

    aget v3, v5, v3

    sub-int/2addr v4, v3

    add-int/2addr v4, v0

    const/4 v0, 0x1

    .line 611
    aget v2, v2, v0

    aget v0, v5, v0

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-interface {v0, v1, v4, v2, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuClicked(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setLayoutListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;)V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 492
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->cancelDrag()V

    const/4 v0, 0x0

    .line 493
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissing:Z

    return-void
.end method

.method public onLayout()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    .line 280
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeListener()V

    return-void
.end method

.method public onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuVisible()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 268
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 267
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createMenuViews(ZZ)V

    return-void
.end method

.method public onParentHeightUpdate()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    .line 556
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    goto :goto_1

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getActualHeight()I

    move-result v0

    .line 562
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mVertSpaceForIcons:I

    if-ge v0, v1, :cond_2

    .line 563
    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 565
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .line 567
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onParentTranslationUpdate(F)V
    .locals 4

    .line 572
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    .line 573
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAnimating:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 582
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    :goto_0
    mul-float/2addr v0, v1

    .line 588
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    cmpg-float v1, p1, v0

    if-gtz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    sub-float/2addr p1, v0

    .line 595
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    sub-float v1, v3, p1

    .line 597
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onSnapClosed()V
    .locals 1

    .line 485
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->cancelDrag()V

    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    return-void
.end method

.method public onSnapOpen()V
    .locals 2

    const/4 v0, 0x1

    .line 473
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    .line 474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnappedOnLeft:Z

    .line 475
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->fadeInMenu(F)V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuShown(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onTouchEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUserTouching:Z

    return-void
.end method

.method public onTouchMove(F)V
    .locals 3

    const/4 v0, 0x0

    .line 413
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isTowardsMenu(F)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuLocationChange()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 417
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    .line 420
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 422
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 425
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    .line 439
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p1, :cond_2

    .line 440
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsFullyExpanded()Z

    move-result v0

    .line 442
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mShouldShowMenu:Z

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUp(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 444
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 445
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isDark()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 446
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    .line 447
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 450
    :cond_4
    :goto_1
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    .line 451
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    const-wide/16 v0, 0x3c

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public onTouchStart()V
    .locals 0

    .line 468
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->beginDrag()V

    return-void
.end method

.method public resetMenu()V
    .locals 1

    const/4 v0, 0x1

    .line 253
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->resetState(Z)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setAppName(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setAppName(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public setDismissRtl(Z)V
    .locals 1

    .line 925
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissRtl:Z

    .line 926
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 927
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsForeground:Z

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createMenuViews(ZZ)V

    :cond_0
    return-void
.end method

.method protected setMenuAlpha(F)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 672
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 677
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    const/4 p1, 0x4

    .line 678
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 680
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 682
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_2

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setMenuClickListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    return-void
.end method

.method public setMenuItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public shouldShowGutsOnSnapOpen()Z
    .locals 0

    .line 780
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUsingBidirectionalSwipe:Z

    return p0
.end method

.method public shouldShowMenu()Z
    .locals 0

    .line 238
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mShouldShowMenu:Z

    return p0
.end method

.method public shouldSnapBack()Z
    .locals 4

    .line 907
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getTranslation()F

    move-result v0

    .line 908
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSnapBackThreshold()F

    move-result v1

    .line 909
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    cmpg-float p0, v0, v1

    if-gez p0, :cond_1

    goto :goto_0

    :cond_0
    neg-float p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method
