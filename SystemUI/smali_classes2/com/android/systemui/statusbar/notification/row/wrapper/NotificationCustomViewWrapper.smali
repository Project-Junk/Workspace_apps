.class public Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
.source "NotificationCustomViewWrapper.java"


# instance fields
.field private mIsLegacy:Z

.field private mIsNeedUpdatePadding:Z

.field private mLegacyColor:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mIsNeedUpdatePadding:Z

    .line 44
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06029c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mLegacyColor:I

    .line 47
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 49
    iget-object p3, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz p3, :cond_0

    iget-object p2, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mIsNeedUpdatePadding:Z

    :cond_1
    return-void
.end method

.method private setViewInvert(Landroid/view/View;)V
    .locals 3

    .line 94
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 95
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 96
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 97
    instance-of v2, v1, Landroid/widget/ImageView;

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->invertViewLuminosity(Landroid/view/View;)V

    goto :goto_1

    .line 101
    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 102
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->setViewInvert(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCustomBackgroundColor()I
    .locals 2

    .line 116
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mIsLegacy:Z

    if-eqz v1, :cond_0

    .line 118
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mLegacyColor:I

    return p0

    :cond_0
    return v0
.end method

.method public isNeedUpdatePadding()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mIsNeedUpdatePadding:Z

    return p0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 5

    .line 62
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 66
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mBackgroundColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->needsInversion(ILandroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->setViewInvert(Landroid/view/View;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->invertViewLuminosity(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x3

    .line 82
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    .line 83
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mBackgroundColor:I

    invoke-static {v0, p1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 84
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mBackgroundColor:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    aget v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 85
    aget v2, p1, v0

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 86
    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mBackgroundColor:I

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public setLegacy(Z)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    .line 125
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mIsLegacy:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected shouldClearBackgroundOnReapply()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldClipToRounding(ZZ)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
