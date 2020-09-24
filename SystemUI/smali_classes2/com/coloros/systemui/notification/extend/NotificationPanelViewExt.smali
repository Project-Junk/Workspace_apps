.class public Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;
.super Ljava/lang/Object;
.source "NotificationPanelViewExt.java"


# static fields
.field public static final NOTIFICATION_CLOSE_BUTTON_GONE_FRACTION:F = 0.2f

.field public static final TAG:Ljava/lang/String; = "NotificationPanelViewEXT"


# instance fields
.field private buttonClickListener:Landroid/view/View$OnClickListener;

.field private closeText:Ljava/lang/CharSequence;

.field private mCloseButtonMarginTopRelative:I

.field private mCloseButtonPaddingHorizontal:I

.field private mCloseButtonPaddingVertical:I

.field private mContext:Landroid/content/Context;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mFocusModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mIsFocusMode:Z

.field private mLastButtonShowVisible:Z

.field private mNotificationCloseBtn:Landroid/widget/Button;

.field private mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/coloros/systemui/notification/extend/-$$Lambda$NotificationPanelViewExt$8AoVPkmOKwBAhfAlMGomigS2Txc;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/extend/-$$Lambda$NotificationPanelViewExt$8AoVPkmOKwBAhfAlMGomigS2Txc;-><init>(Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mFocusModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 81
    new-instance v0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt$1;-><init>(Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->buttonClickListener:Landroid/view/View$OnClickListener;

    .line 59
    iput-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mContext:Landroid/content/Context;

    .line 60
    const-class p1, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iput-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 61
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 64
    invoke-static {}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->getsInstance()Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->isFocusMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mIsFocusMode:Z

    .line 65
    invoke-static {}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->getsInstance()Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mFocusModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    return-object p0
.end method

.method private onFocusModeChanged()V
    .locals 2

    .line 172
    invoke-static {}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->getsInstance()Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->isFocusMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mIsFocusMode:Z

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsFocusMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mIsFocusMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Notification"

    const-string v1, "NotificationPanelViewEXT"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initCloseButtonAttributeValue()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705c0

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mCloseButtonMarginTopRelative:I

    const v1, 0x7f110597

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->closeText:Ljava/lang/CharSequence;

    .line 147
    iget-object v1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    const v2, 0x7f060283

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 148
    iget-object v1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    const v2, 0x7f080de1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0705c1

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mCloseButtonPaddingHorizontal:I

    const v1, 0x7f0705c2

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mCloseButtonPaddingVertical:I

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$NotificationPanelViewExt(Z)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->onFocusModeChanged()V

    return-void
.end method

.method public setNotificationCloseButton(Landroid/widget/Button;)V
    .locals 1

    .line 70
    iput-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    .line 71
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 72
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->initCloseButtonAttributeValue()V

    .line 74
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    iget-object p0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 76
    iget-object p0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNotificationCloseButtonAlpha(F)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Button;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 115
    iget-object p0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public updateAllNotificationsClose(Z)V
    .locals 1

    .line 155
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz p0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 159
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setClose(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateKeyguardNotificationState(Z)V
    .locals 1

    .line 93
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mLastButtonShowVisible:Z

    if-eq p1, v0, :cond_2

    .line 97
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mLastButtonShowVisible:Z

    .line 98
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/common/helper/KeyguardHelper;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 102
    iget-boolean p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mLastButtonShowVisible:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mIsFocusMode:Z

    if-nez p1, :cond_1

    .line 105
    iget-object p0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateNotificationCloseButtonPosition(I)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iget v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mCloseButtonMarginTopRelative:I

    add-int/2addr p1, v0

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 123
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq p1, v1, :cond_0

    .line 124
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 125
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    .line 127
    invoke-virtual {p1}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0705b8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 128
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->closeText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->closeText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->closeText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    :cond_1
    iget p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mCloseButtonPaddingHorizontal:I

    iget-object v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingStart()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mCloseButtonPaddingVertical:I

    iget-object v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    .line 135
    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mNotificationCloseBtn:Landroid/widget/Button;

    iget v0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mCloseButtonPaddingHorizontal:I

    iget p0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->mCloseButtonPaddingVertical:I

    invoke-virtual {p1, v0, p0, v0, p0}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    :cond_3
    return-void
.end method
