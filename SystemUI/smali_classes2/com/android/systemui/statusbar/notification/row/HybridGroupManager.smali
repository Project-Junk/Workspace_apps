.class public Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;
.super Ljava/lang/Object;
.source "HybridGroupManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOverflowNumberColor:I

.field private mOverflowNumberPadding:I

.field private mOverflowNumberSize:F

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->initDimens()V

    return-void
.end method

.method private bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
    .locals 0

    if-nez p1, :cond_0

    .line 115
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->inflateHybridViewWithStyle(I)Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object p1

    .line 117
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 118
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 119
    invoke-virtual {p1, p3, p0}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private inflateHybridViewWithStyle(I)Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
    .locals 3

    .line 59
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-class p1, Landroid/view/LayoutInflater;

    .line 60
    invoke-virtual {v0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    const v1, 0x7f0d00cc

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method private inflateOverflowNumber()Landroid/widget/TextView;
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    const v2, 0x7f0d00cd

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    :cond_0
    return-object v0
.end method

.method private resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 1

    .line 124
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.text"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    .line 126
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.bigText"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 1

    .line 132
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    .line 134
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.title.big"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private updateOverFlowNumberColor(Landroid/widget/TextView;)V
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public bindFromNotification(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
    .locals 1

    const v0, 0x7f120131

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object p0

    return-object p0
.end method

.method public bindOverflowNumber(Landroid/widget/TextView;I)Landroid/widget/TextView;
    .locals 6

    if-nez p1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->inflateOverflowNumber()Landroid/widget/TextView;

    move-result-object p1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11059c

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 143
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    .line 148
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberSize:F

    invoke-virtual {p1, v5, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 153
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p2

    .line 154
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberPadding:I

    .line 155
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 153
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 162
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p2

    if-nez p2, :cond_2

    .line 163
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    :cond_2
    return-object p1
.end method

.method public initDimens()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703b3

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberSize:F

    const v1, 0x7f0703b2

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberPadding:I

    return-void
.end method

.method public setOverflowNumberColor(Landroid/widget/TextView;I)V
    .locals 0

    .line 91
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberColor:I

    if-eqz p1, :cond_0

    .line 99
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p2

    if-nez p2, :cond_0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method
