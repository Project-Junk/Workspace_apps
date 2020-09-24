.class public Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
.super Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;
.source "NotificationsQuickSettingsContainer.java"


# instance fields
.field private mBottomPadding:I

.field private mCustomizerAnimating:Z

.field private mHasViewsAboveShelf:Z

.field private mInflated:Z

.field private mKeyguardStatusBar:Landroid/view/View;

.field private mQsExpanded:Z

.field private mQsFrame:Landroid/widget/FrameLayout;

.field private mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mStackScrollerMargin:I

.field private mUserSwitcher:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private reloadWidth(Landroid/view/View;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setBottomMargin(Landroid/view/View;I)V
    .locals 0

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 214
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 215
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    .line 228
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 229
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mParent:Landroid/view/ViewParent;

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 230
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v2

    if-nez v2, :cond_d

    .line 232
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v2

    .line 233
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandedHeight()F

    move-result v3

    .line 234
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutHeight()I

    move-result v4

    .line 235
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getStackTranslation()F

    move-result v5

    .line 236
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v6

    .line 237
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v7

    .line 238
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isQsExpanded()Z

    move-result v8

    .line 239
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v9

    .line 240
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v10

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getWidth()I

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    const/4 v12, 0x2

    div-int/2addr v11, v12

    .line 243
    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTranslationX()F

    move-result v13

    .line 245
    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v14

    .line 246
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v12, v15}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v12

    .line 247
    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v15

    move/from16 v16, v13

    .line 248
    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastVisibleView()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v13

    .line 249
    sget-boolean v17, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    move-object/from16 v18, v13

    const-string v13, "NotificationInfoBase"

    move-object/from16 v19, v1

    const-string v1, "Notification"

    if-eqz v17, :cond_0

    move-object/from16 v17, v1

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v13

    const-string v13, "dispatchDraw--headsUpTransition: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "--expandedHeight: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, "--currentStackHeight: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "--stackTranslation: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, "--topPadding: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "--notGoneChildCount: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "--qsExpanded: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "--contentHeight: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "--appearEndPosition: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, "--panelHorizontalPadding: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "--overScrollPixels: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, "--animating: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "--rubberBandFactor: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, "--mStatusBarStateController.getState(): "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 255
    invoke-interface {v13}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->getState()I

    move-result v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v13, v20

    move-object/from16 v21, v17

    move/from16 v17, v12

    move-object/from16 v12, v21

    .line 250
    invoke-static {v12, v13, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v17, v12

    move-object v12, v1

    :goto_0
    const/4 v1, 0x1

    const/16 v20, 0x0

    if-eqz v2, :cond_2

    cmpg-float v2, v3, v10

    if-gez v2, :cond_1

    int-to-float v2, v6

    add-float/2addr v2, v5

    int-to-float v3, v4

    add-float/2addr v2, v3

    goto/16 :goto_3

    .line 266
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 267
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPinnedHeadsUpHeight()I

    move-result v2

    add-int/2addr v6, v2

    int-to-float v2, v6

    .line 266
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto/16 :goto_3

    .line 271
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->getState()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 273
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    .line 274
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionHeight()F

    move-result v5

    .line 275
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v6

    const-class v7, Lcom/coloros/systemui/notification/extend/NotificationStackScrollLayoutExt;

    .line 276
    invoke-virtual {v6, v7}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getExt(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coloros/systemui/notification/extend/NotificationStackScrollLayoutExt;

    cmpl-float v2, v2, v20

    if-lez v2, :cond_3

    if-eqz v6, :cond_3

    .line 277
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 278
    invoke-virtual {v6, v2}, Lcom/coloros/systemui/notification/extend/NotificationStackScrollLayoutExt;->hasKeyguardNotification(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 279
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShelf;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto/16 :goto_3

    :cond_3
    int-to-float v2, v4

    .line 284
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto/16 :goto_3

    :cond_4
    if-nez v7, :cond_5

    int-to-float v2, v6

    add-float/2addr v2, v5

    goto/16 :goto_3

    :cond_5
    if-eqz v8, :cond_7

    .line 295
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mIsCustomizerShowing:Z

    if-eqz v2, :cond_6

    .line 296
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 297
    :cond_6
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    int-to-float v2, v2

    goto :goto_3

    :cond_7
    if-eqz v15, :cond_b

    if-eqz v18, :cond_b

    .line 301
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getY()F

    move-result v2

    int-to-float v3, v6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    move-object/from16 v2, v18

    instance-of v3, v2, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v3, :cond_9

    .line 302
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getActualHeight()I

    move-result v3

    add-int/2addr v6, v3

    int-to-float v3, v6

    goto :goto_2

    :cond_8
    move-object/from16 v2, v18

    .line 304
    :cond_9
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getY()F

    move-result v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 306
    :goto_2
    sget-boolean v4, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v4, :cond_a

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchDraw--lastVisibleView.getY(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "---lastVisibleView.getActualHeight(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getActualHeight()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-static {v12, v13, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move v2, v3

    goto :goto_3

    :cond_b
    int-to-float v2, v4

    .line 312
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v3, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 318
    :goto_3
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mPath:Landroid/graphics/Path;

    if-nez v3, :cond_c

    .line 319
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mPath:Landroid/graphics/Path;

    .line 321
    :cond_c
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 322
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mPath:Landroid/graphics/Path;

    int-to-float v3, v11

    add-float v5, v3, v16

    const/4 v6, 0x0

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getWidth()I

    move-result v3

    sub-int/2addr v3, v11

    int-to-float v3, v3

    add-float v7, v3, v16

    mul-float v14, v14, v17

    sub-float v8, v2, v14

    const/16 v2, 0x8

    new-array v9, v2, [F

    const/4 v2, 0x0

    aput v20, v9, v2

    aput v20, v9, v1

    const/4 v1, 0x2

    aput v20, v9, v1

    const/4 v1, 0x3

    aput v20, v9, v1

    const/4 v1, 0x4

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCorner:F

    aput v2, v9, v1

    const/4 v1, 0x5

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCorner:F

    aput v2, v9, v1

    const/4 v1, 0x6

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCorner:F

    aput v2, v9, v1

    const/4 v1, 0x7

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCorner:F

    aput v2, v9, v1

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 322
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 326
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mPath:Landroid/graphics/Path;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_4

    :cond_d
    move-object/from16 v2, p1

    .line 329
    :goto_4
    invoke-super/range {p0 .. p1}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInflated:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 135
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 137
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHasViewsAboveShelf:Z

    if-eqz v2, :cond_2

    .line 138
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    :goto_2
    if-nez v2, :cond_3

    .line 139
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    .line 142
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    if-ne p2, v4, :cond_7

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 143
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    goto :goto_5

    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    :goto_5
    invoke-super {p0, p1, v2, p3, p4}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0

    .line 147
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-ne p2, v4, :cond_b

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 148
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    goto :goto_6

    :cond_8
    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    move-object v3, v2

    :cond_a
    :goto_6
    invoke-super {p0, p1, v3, p3, p4}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0

    .line 153
    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    if-ne p2, v4, :cond_d

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    move-object v2, v3

    .line 154
    :goto_7
    invoke-super {p0, p1, v2, p3, p4}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0

    .line 158
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    if-ne p2, v0, :cond_e

    .line 159
    invoke-super {p0, p1, v3, p3, p4}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0

    .line 163
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 127
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mBottomPadding:I

    .line 128
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mBottomPadding:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setPadding(IIII)V

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->onAttachedToWindow()V

    .line 90
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string v1, "QS"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 102
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f07074a

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->reloadWidth(Landroid/view/View;I)V

    .line 103
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const v0, 0x7f070603

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->reloadWidth(Landroid/view/View;I)V

    .line 107
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070172

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScrollerMargin:I

    .line 109
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScrollerMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 111
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->onDetachedFromWindow()V

    .line 96
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string v1, "QS"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/fragments/FragmentHostManager;->removeTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->onFinishInflate()V

    const v0, 0x7f0a0491

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0a040d

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScrollerMargin:I

    const v0, 0x7f0a0303

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    const v0, 0x7f0a031b

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 83
    invoke-virtual {v0, p0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 84
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    return-void
.end method

.method public onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .line 177
    check-cast p2, Lcom/android/systemui/plugins/qs/QS;

    .line 178
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/qs/QS;->setContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onHasViewsAboveShelfChanged(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHasViewsAboveShelf:Z

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->invalidate()V

    return-void
.end method

.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 170
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInflated:Z

    :cond_0
    return-void
.end method

.method public setCustomizerAnimating(Z)V
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCustomizerAnimating:Z

    if-eq v0, p1, :cond_0

    .line 190
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCustomizerAnimating:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCustomizerShowing(Z)V
    .locals 2

    .line 199
    invoke-super {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->setCustomizerShowing(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setPadding(IIII)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setBottomMargin(Landroid/view/View;I)V

    goto :goto_0

    .line 206
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mBottomPadding:I

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setPadding(IIII)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScrollerMargin:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setBottomMargin(Landroid/view/View;I)V

    .line 209
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsCustomizerShowing(Z)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsExpanded:Z

    if-eq v0, p1, :cond_0

    .line 183
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsExpanded:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->invalidate()V

    :cond_0
    return-void
.end method
