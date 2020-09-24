.class public Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;
.super Ljava/lang/Object;
.source "HeadsUpAppearanceController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# static fields
.field public static final CONTENT_FADE_DELAY:I = 0x64

.field public static final CONTENT_FADE_DURATION:I = 0x6e


# instance fields
.field private mAnimationsEnabled:Z

.field private final mCenteredIconView:Landroid/view/View;

.field private final mClockView:Landroid/view/View;

.field private final mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field mExpandFraction:F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mExpandedHeight:F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

.field mIsExpanded:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private final mOperatorNameView:Landroid/view/View;

.field private final mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mParentClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field mPoint:Landroid/graphics/Point;

.field private final mSetExpandedHeight:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetTrackingHeadsUp:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private mShown:Z

.field private final mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private final mUpdatePanelTranslation:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Landroid/view/View;)V
    .locals 10

    const v0, 0x7f0a02af

    .line 92
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    const v0, 0x7f0a040d

    .line 93
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const v0, 0x7f0a0407

    .line 94
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v0, 0x7f0a016b

    .line 95
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f0a041c

    .line 96
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v0, 0x7f0a0154

    .line 97
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 91
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$u27UVgFXO2Fq-gY8QI0m_qAQyl8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$u27UVgFXO2Fq-gY8QI0m_qAQyl8;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$22QZFjoGlQJQoKOrFe-bHbZltB4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$22QZFjoGlQJQoKOrFe-bHbZltB4;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mUpdatePanelTranslation:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DialNTWPBOn27MISeLu6p9klZxI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DialNTWPBOn27MISeLu6p9klZxI;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$hwNOwOgXItDjQM7QwL00pigpnrk;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$hwNOwOgXItDjQM7QwL00pigpnrk;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$1;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mParentClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAnimationsEnabled:Z

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 111
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 112
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 113
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    .line 114
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    .line 115
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1d3l5klDiH8maZOdHwrJBKgigPE;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1d3l5klDiH8maZOdHwrJBKgigPE;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V

    .line 117
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 118
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 119
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    invoke-virtual {p5, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    .line 120
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mUpdatePanelTranslation:Ljava/lang/Runnable;

    invoke-virtual {p5, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addVerticalTranslationListener(Ljava/lang/Runnable;)V

    .line 121
    invoke-virtual {p5, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 122
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addOnExpandedHeightListener(Ljava/util/function/BiConsumer;)V

    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 124
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 125
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    .line 126
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mOperatorNameView:Landroid/view/View;

    .line 127
    const-class p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 128
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 130
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    new-instance p2, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$2;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)Lcom/android/systemui/statusbar/HeadsUpStatusBarView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    return-object p0
.end method

.method private getRtlTranslation()I
    .locals 6

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 227
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 228
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 229
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 230
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    if-eqz v3, :cond_5

    .line 231
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v5

    goto :goto_4

    :cond_5
    move v5, v1

    :goto_4
    if-eqz v3, :cond_6

    .line 232
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    .line 233
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 234
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 236
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRight()I

    move-result p0

    add-int/2addr v3, p0

    add-int/2addr v3, v1

    sub-int/2addr v3, v0

    return v3
.end method

.method private hide(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 351
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;ILjava/lang/Runnable;)V

    return-void
.end method

.method private hide(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 3

    .line 364
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAnimationsEnabled:Z

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x6e

    const/4 p0, 0x0

    .line 365
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$0bcvEqUzxr8DAGZB7IQ47gZ8Z9k;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$0bcvEqUzxr8DAGZB7IQ47gZ8Z9k;-><init>(Landroid/view/View;ILjava/lang/Runnable;)V

    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JILjava/lang/Runnable;)V

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_1

    .line 375
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$hide$4(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 369
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private setShown(Z)V
    .locals 4

    .line 290
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    if-eq v0, p1, :cond_8

    .line 291
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 293
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateParentClipping(Z)V

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->show(Landroid/view/View;)V

    .line 300
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    .line 301
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v1

    const-class v3, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {v1, v3}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    .line 302
    invoke-virtual {v1, p1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCircleBatteryVisibleByHeadsUp(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;I)V

    .line 306
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 307
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;I)V

    .line 309
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mOperatorNameView:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 310
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;I)V

    goto :goto_0

    .line 317
    :cond_3
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 318
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-class v1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    const/4 v1, 0x1

    .line 319
    invoke-virtual {p1, v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCircleBatteryVisibleByHeadsUp(Z)Z

    move-result p1

    if-nez p1, :cond_5

    .line 320
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->show(Landroid/view/View;)V

    .line 323
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_6

    .line 324
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->show(Landroid/view/View;)V

    .line 326
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mOperatorNameView:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 327
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->show(Landroid/view/View;)V

    .line 329
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$5yJ6zXPrjSk_KB2fbcTxEu2j2TI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$5yJ6zXPrjSk_KB2fbcTxEu2j2TI;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;ILjava/lang/Runnable;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private show(Landroid/view/View;)V
    .locals 2

    .line 381
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAnimationsEnabled:Z

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x6e

    const/16 p0, 0x64

    .line 382
    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;JI)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 385
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateHeadsUpBackground()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$hT_w3ukCyh6y9jXSgXiSRlD2loE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$hT_w3ukCyh6y9jXSgXiSRlD2loE;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateHeadsUpHeaders()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$6gdN5vZzycQ9pGJbSu0YlEBwzK4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$6gdN5vZzycQ9pGJbSu0YlEBwzK4;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateIsolatedIconLocation(Z)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getIconDrawingRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 158
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setIsolatedIconLocation(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private updateParentClipping(Z)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mParentClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    invoke-static {v0, p1, p0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    return-void
.end method

.method private updateTopEntry()V
    .locals 6

    .line 252
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 255
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getShowingEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    .line 256
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    if-eq v0, v2, :cond_6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 263
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v2

    const-class v5, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {v2, v5}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    .line 265
    invoke-virtual {v2, v3}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->setViewVisibleByHeadsUp(Z)V

    .line 268
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setShown(Z)V

    .line 269
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    :goto_1
    xor-int/2addr v2, v3

    goto :goto_2

    :cond_2
    if-nez v2, :cond_4

    .line 275
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v2

    const-class v5, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {v2, v5}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    .line 277
    invoke-virtual {v2, v4}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->setViewVisibleByHeadsUp(Z)V

    .line 280
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setShown(Z)V

    .line 281
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    goto :goto_1

    :cond_4
    move v2, v4

    .line 283
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateIsolatedIconLocation(Z)V

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V

    :cond_6
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->removeListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mUpdatePanelTranslation:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeVerticalTranslationListener(Ljava/lang/Runnable;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->removeOnExpandedHeightListener(Ljava/util/function/BiConsumer;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public isShown()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 396
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    return p0
.end method

.method public synthetic lambda$new$0$HeadsUpAppearanceController(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updatePanelTranslation()V

    return-void
.end method

.method public synthetic lambda$new$1$HeadsUpAppearanceController()V
    .locals 1

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateIsolatedIconLocation(Z)V

    return-void
.end method

.method public synthetic lambda$setShown$3$HeadsUpAppearanceController()V
    .locals 1

    const/4 v0, 0x1

    .line 330
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateParentClipping(Z)V

    return-void
.end method

.method public synthetic lambda$updateHeadsUpBackground$2$HeadsUpAppearanceController(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeadsUpBackground(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public synthetic lambda$updateHeadsUpHeaders$5$HeadsUpAppearanceController(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 464
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 168
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeadsUpBackground(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    .line 412
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 415
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeadsUpBackground(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method readFrom(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 489
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 490
    iget v0, p1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    .line 491
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    .line 492
    iget p1, p1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandFraction:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandFraction:F

    :cond_0
    return-void
.end method

.method setAnimationsEnabled(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 391
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAnimationsEnabled:Z

    return-void
.end method

.method public setExpandedHeight(FF)V
    .locals 3

    .line 422
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 423
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    .line 424
    iput p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandFraction:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 427
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeadsUpHeaders()V

    .line 430
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 431
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeadsUpBackground()V

    .line 435
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    if-eq v1, p1, :cond_3

    .line 436
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    .line 437
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    :cond_3
    return-void
.end method

.method public setPublicMode(Z)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setPublicMode(Z)V

    .line 484
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 450
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 455
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 456
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeadsUpBackground(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method public shouldBeVisible()Z
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 469
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    .line 471
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 472
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandFraction:F

    .line 474
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeaderVisibleAmount(F)V

    return-void
.end method

.method public updateHeadsUpBackground(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 183
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 186
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandFraction:F

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move p0, v0

    .line 188
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackground(F)V

    return-void
.end method

.method public updatePanelTranslation()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->getRtlTranslation()I

    move-result v0

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLeft()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    .line 247
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setPanelTranslation(F)V

    return-void
.end method
