.class public Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;
.super Landroid/widget/FrameLayout;
.source "NotificationsQuickSettingsContainerBase.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
.implements Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "NotificationInfoBase"


# instance fields
.field private mAlwaysRoundBothCorners:Z

.field protected mCorner:F

.field protected mIsCustomizerShowing:Z

.field protected mOutlineRadius:F

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPath:Landroid/graphics/Path;

.field protected mPathOp:Landroid/graphics/Path;

.field protected final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 54
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p1, p0, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 78
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->mAlwaysRoundBothCorners:Z

    .line 79
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->mOutlineRadius:F

    .line 80
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->mAlwaysRoundBothCorners:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->mContext:Landroid/content/Context;

    const v2, 0x1010571

    .line 82
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->mOutlineRadius:F

    :cond_0
    const v0, 0x40554fdf    # 3.333f

    .line 84
    iget v1, p0, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->mOutlineRadius:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->mCorner:F

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->mPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object p0, p0, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onHasViewsAboveShelfChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected setCustomizerShowing(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/base/NotificationsQuickSettingsContainerBase;->mIsCustomizerShowing:Z

    return-void
.end method
