.class public Lcom/coloros/systemui/notification/base/ExpandableViewBase;
.super Landroid/widget/FrameLayout;
.source "ExpandableViewBase.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private mBackgroundPadding:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPath:Landroid/graphics/Path;

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

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 42
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p1, p0, Lcom/coloros/systemui/notification/base/ExpandableViewBase;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 46
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/base/ExpandableViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705b8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/base/ExpandableViewBase;->mBackgroundPadding:I

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/base/ExpandableViewBase;->mPaint:Landroid/graphics/Paint;

    .line 48
    iget-object p1, p0, Lcom/coloros/systemui/notification/base/ExpandableViewBase;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object p0, p0, Lcom/coloros/systemui/notification/base/ExpandableViewBase;->mPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getBgHorizontalPadding()I
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/base/ExpandableViewBase;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    instance-of v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v2, :cond_0

    .line 61
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 62
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandedHeight()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/base/ExpandableViewBase;->isPinned()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/base/ExpandableViewBase;->isHeadsUpAnimatingAway()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-nez v0, :cond_2

    iget v1, p0, Lcom/coloros/systemui/notification/base/ExpandableViewBase;->mBackgroundPadding:I

    :cond_2
    return v1
.end method

.method public getTransientContainer()Landroid/view/ViewGroup;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isHeadsUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHeadsUpAnimatingAway()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPinned()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public makeQuickSettingsContainerInvalidate()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/base/ExpandableViewBase;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method
