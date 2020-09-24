.class public Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/coloros/systemui/statusbar/phone/INotificationIconAreaControllerEx;


# static fields
.field public static final HIGH_PRIORITY:Ljava/lang/String; = "high_priority"


# instance fields
.field private mAnimationsEnabled:Z

.field private mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field protected mCenteredIconArea:Landroid/view/View;

.field private mCenteredIconTint:I

.field private mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mContext:Landroid/content/Context;

.field private final mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field private mDarkAmount:F

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mFullyDark:Z

.field private mIconHPadding:I

.field private mIconSize:I

.field protected mIconTint:I

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field protected mNotificationIconArea:Landroid/view/View;

.field protected mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field protected mNotificationScrollLayout:Landroid/view/ViewGroup;

.field final mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field protected mShowLowPriority:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mTintArea:Landroid/graphics/Rect;

.field protected final mUpdateStatusBarIcons:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    .line 84
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    .line 96
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NWCrb8vzuopzf5kAygkNeXndtBo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NWCrb8vzuopzf5kAygkNeXndtBo;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    .line 111
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 112
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 114
    const-class p2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 115
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 116
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 117
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 124
    const-class p2, Lcom/android/systemui/statusbar/NotificationListener;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/NotificationListener;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationSettingsListener(Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private applyNotificationIconsTint()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 529
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 530
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 531
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    .line 532
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_1

    .line 534
    :cond_0
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$LHvVP8ZKDxtcx6Sj3gf4ttey2ho;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$LHvVP8ZKDxtcx6Sj3gf4ttey2ho;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 539
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 540
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_3

    .line 543
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$kEHcYKNlJqRNuom7zI__dD3YiUQ;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$kEHcYKNlJqRNuom7zI__dD3YiUQ;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private canShowIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Z
    .locals 1

    .line 307
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    .line 308
    invoke-static {p2}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->setNotificationData(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V

    .line 309
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->canShowIcon(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$updateCenterIcon$2(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object p0
.end method

.method static synthetic lambda$updateShelfIcons$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object p0
.end method

.method static synthetic lambda$updateStatusBarIcons$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object p0
.end method

.method private reloadDimens(Landroid/content/Context;)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 188
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0707d6

    .line 189
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    goto :goto_0

    .line 191
    :cond_0
    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_dimen_status_bar_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    :goto_0
    const v0, 0x7f0707c9

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    return-void
.end method

.method private updateAnimations()V
    .locals 5

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 377
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 378
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    return-void
.end method

.method private updateCenterIcon()V
    .locals 9

    .line 353
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$S6CJ2tXrA2ieNVmUpwBa8v9eeEY;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$S6CJ2tXrA2ieNVmUpwBa8v9eeEY;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mFullyDark:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZ)V

    return-void
.end method

.method private updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer;",
            "ZZZZZZ)V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p2

    .line 394
    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    .line 395
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    move v12, v11

    .line 398
    :goto_0
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v12, v0, :cond_2

    .line 399
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 400
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 401
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v13

    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 402
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p1

    .line 404
    invoke-interface {v0, v13}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object/from16 v0, p1

    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 416
    :cond_2
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 417
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v11

    .line 418
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_a

    .line 419
    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 420
    instance-of v5, v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v5, :cond_3

    goto :goto_6

    .line 423
    :cond_3
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 425
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 426
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    move v6, v11

    move v7, v6

    .line 427
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_6

    .line 428
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 429
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 430
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    if-nez v7, :cond_4

    move v7, v4

    goto :goto_4

    :cond_4
    move v7, v11

    goto :goto_5

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    if-eqz v7, :cond_8

    .line 440
    invoke-virtual {v0, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_7

    .line 442
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-virtual {v0, v5, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_7
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 451
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 452
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 453
    invoke-virtual {v0, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 454
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v4, :cond_b

    .line 455
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 458
    :cond_c
    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 459
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroidx/collection/ArrayMap;)V

    .line 461
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v11

    :goto_8
    if-ge v2, v0, :cond_d

    .line 463
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v9, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 466
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    move v1, v11

    .line 467
    :goto_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 468
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 470
    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeTransientView(Landroid/view/View;)V

    .line 471
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_f

    if-eqz p5, :cond_e

    .line 473
    iget-object v3, v8, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnDismissListener(Ljava/lang/Runnable;)V

    .line 475
    :cond_e
    invoke-virtual {v9, v2, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 479
    :cond_10
    invoke-virtual {v9, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v0

    move v1, v11

    :goto_a
    if-ge v1, v0, :cond_16

    .line 483
    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 495
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 497
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_11

    add-int/lit8 v3, v1, -0x1

    goto :goto_b

    :cond_11
    move v3, v1

    :goto_b
    const/4 v4, -0x1

    if-ne v3, v4, :cond_12

    goto :goto_c

    .line 503
    :cond_12
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne v2, v4, :cond_13

    goto :goto_c

    .line 507
    :cond_13
    invoke-virtual {v9, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    .line 508
    invoke-virtual {v9, v4, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;I)V

    goto :goto_c

    .line 510
    :cond_14
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne v2, v3, :cond_15

    goto :goto_c

    .line 514
    :cond_15
    invoke-virtual {v9, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    .line 515
    invoke-virtual {v9, v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;I)V

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 519
    :cond_16
    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    const/4 v0, 0x0

    .line 520
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method private updateShelfIcons()V
    .locals 9

    .line 333
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$afpYK1wAP1i0HTFHOa1jb1wzzAQ;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$afpYK1wAP1i0HTFHOa1jb1wzzAQ;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mFullyDark:Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZ)V

    return-void
.end method

.method private updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .locals 2

    .line 549
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v1, 0x7f0a02c5

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 555
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/usb/Utils;->isCTSVersion()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 556
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 559
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 561
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 562
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method


# virtual methods
.method protected generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 178
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getCenteredNotificationAreaView()Landroid/view/View;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    return-object p0
.end method

.method protected getHeight()I
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result p0

    return p0
.end method

.method public getNotificationInnerAreaView()Landroid/view/View;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    return-object p0
.end method

.method protected inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    const p0, 0x7f0d016c

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;)V
    .locals 2

    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 140
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    const v1, 0x7f0a03f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0d005b

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    .line 147
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    const v0, 0x7f0a0153

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-void
.end method

.method public synthetic lambda$applyNotificationIconsTint$3$NotificationIconAreaController(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    .line 534
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method public synthetic lambda$applyNotificationIconsTint$4$NotificationIconAreaController(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    .line 543
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    if-nez p1, :cond_0

    .line 220
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 225
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 226
    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 227
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    goto :goto_1

    .line 230
    :cond_1
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 233
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 234
    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 235
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    goto :goto_2

    .line 238
    :cond_3
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    .line 241
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    return-void
.end method

.method public onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .locals 3

    .line 156
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 158
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 160
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 162
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 164
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 168
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onDozeAmountChanged(FF)V
    .locals 0

    .line 592
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDarkAmount:F

    .line 593
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDarkAmount:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 594
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mFullyDark:Z

    if-eq p2, p1, :cond_1

    .line 595
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mFullyDark:Z

    .line 596
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateShelfIcons()V

    :cond_1
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 366
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    return-void
.end method

.method public setDark(Z)V
    .locals 4

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDark(ZZJ)V

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDark(ZZJ)V

    .line 568
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDark(ZZJ)V

    return-void
.end method

.method public setIsolatedIconLocation(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsolatedIconLocation(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 1

    .line 151
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    return-void
.end method

.method protected shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZ)Z
    .locals 4

    .line 252
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 253
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne p7, v0, :cond_1

    return v2

    .line 263
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p7

    if-nez p7, :cond_2

    .line 264
    iget-object p7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p7}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p7

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p7, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_2

    if-nez p2, :cond_2

    return v2

    :cond_2
    if-eqz p6, :cond_3

    .line 269
    iget-object p6, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object p7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p7}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_3

    return v2

    :cond_3
    if-nez p3, :cond_4

    .line 272
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result p3

    if-nez p3, :cond_4

    return v2

    .line 275
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopLevelChild()Z

    move-result p3

    if-nez p3, :cond_5

    return v2

    .line 278
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getVisibility()I

    move-result p3

    const/16 p6, 0x8

    if-ne p3, p6, :cond_6

    return v2

    .line 281
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result p3

    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    return v2

    :cond_7
    if-eqz p5, :cond_8

    .line 284
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isLastMessageFromReply()Z

    move-result p3

    if-eqz p3, :cond_8

    return v2

    :cond_8
    if-eqz p2, :cond_9

    .line 288
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mFullyDark:Z

    if-eqz p3, :cond_a

    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressStatusBar()Z

    move-result p3

    if-eqz p3, :cond_a

    return v2

    .line 294
    :cond_a
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p3

    if-eqz p3, :cond_b

    if-nez p2, :cond_b

    .line 295
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->canShowIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public showIconCentered(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 575
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 576
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 578
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons()V

    :cond_1
    return-void
.end method

.method public showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V

    return-void
.end method

.method public updateNotificationIcons()V
    .locals 1

    .line 321
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateStatusBarIcons()V

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateShelfIcons()V

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateCenterIcon()V

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    return-void
.end method

.method public updateStatusBarIcons()V
    .locals 9

    .line 343
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$ujxUr-qwlryo8PHBzga56kRshsA;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$ujxUr-qwlryo8PHBzga56kRshsA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZ)V

    return-void
.end method
