.class public Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ColorQuickQSStatusBarContainer.java"


# instance fields
.field private mClockIsLocateCenter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private updateClockLocationInternal(Z)V
    .locals 3

    const v0, 0x7f0a016b

    const/4 v1, 0x7

    if-eqz p1, :cond_0

    .line 68
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 69
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 71
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 74
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/16 v2, 0x8

    .line 75
    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 76
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 6

    .line 49
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    .line 50
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "display_ring_power_switch"

    .line 50
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 52
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 53
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const-string v5, "display_power_percent"

    .line 52
    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 54
    :goto_1
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;->mClockIsLocateCenter:Z

    .line 55
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;->mClockIsLocateCenter:Z

    invoke-direct {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;->updateClockLocationInternal(Z)V

    return-void
.end method

.method public updateClockLocation(Z)V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;->mClockIsLocateCenter:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 62
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;->mClockIsLocateCenter:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;->updateClockLocationInternal(Z)V

    return-void
.end method
