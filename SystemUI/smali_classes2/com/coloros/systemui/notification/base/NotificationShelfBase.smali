.class public abstract Lcom/coloros/systemui/notification/base/NotificationShelfBase;
.super Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.source "NotificationShelfBase.java"


# instance fields
.field protected final KEYGUARD:I

.field protected final NOT_KEYGUARD:I

.field protected final QS_EXPAND_AND_KEYGUARD_STATE:I

.field protected final QS_EXPAND_STATE:I

.field protected final SHARE_LOCK:I

.field protected mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

.field protected mDarkTopPadding:I

.field protected mFooterShowDismiss:Z

.field protected mIbStowIcon:Landroid/widget/ImageView;

.field protected mIsStowContentVisible:Z

.field protected mLastViewScreenState:I

.field protected mStowIcon:Landroid/widget/ImageView;

.field protected mStowLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->mIsStowContentVisible:Z

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->KEYGUARD:I

    .line 37
    iput p1, p0, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->QS_EXPAND_AND_KEYGUARD_STATE:I

    const/4 p1, 0x2

    .line 38
    iput p1, p0, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->QS_EXPAND_STATE:I

    const/4 p1, 0x3

    .line 39
    iput p1, p0, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->SHARE_LOCK:I

    const/4 p1, 0x4

    .line 40
    iput p1, p0, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->NOT_KEYGUARD:I

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->mLastViewScreenState:I

    return-void
.end method


# virtual methods
.method protected setCleanAllBtnVisible(I)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->mCleanAllBtn:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setCleanAllBtnVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->setCleanAllBtnVisible(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 73
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->setCleanAllBtnVisible(I)V

    .line 75
    :goto_0
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->mFooterShowDismiss:Z

    return-void
.end method

.method protected setStowButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->mStowLayout:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected setStowContentVisible(Z)V
    .locals 2

    .line 57
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->mIsStowContentVisible:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->mStowLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 58
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 59
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/base/NotificationShelfBase;->mIsStowContentVisible:Z

    :cond_1
    return-void
.end method
