.class public Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
.super Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.source "DemoStatusIcons.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "DemoStatusIcons"


# instance fields
.field private mColor:I

.field private mDemoMode:Z

.field private final mIconSize:I

.field private final mMobileViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/StatusBarMobileView;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusIcons:Landroid/widget/LinearLayout;

.field private mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 2

    .line 56
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 58
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    const/4 p2, -0x1

    .line 59
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    .line 61
    instance-of p2, p1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    if-eqz p2, :cond_0

    .line 62
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->isRestrictingIcons()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setShouldRestrictIcons(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setShouldRestrictIcons(Z)V

    .line 66
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 68
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    .line 67
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setPadding(IIII)V

    .line 69
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setOrientation(I)V

    const/16 p1, 0x10

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setGravity(I)V

    .line 71
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 72
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 299
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    const/4 v1, -0x2

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private matchingMobileView(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .locals 4

    .line 284
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 288
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 289
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 290
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-ne v2, v3, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method private updateColors()V
    .locals 3

    const/4 v0, 0x0

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 88
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(I)V

    .line 89
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSlot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 175
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v1, p2

    const/4 p2, 0x0

    move v0, p2

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v7, 0x1

    if-ge v0, v2, :cond_5

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 180
    instance-of v4, v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v4, :cond_2

    goto :goto_1

    .line 183
    :cond_2
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 184
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez p3, :cond_3

    goto :goto_2

    .line 189
    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object p0

    .line 190
    iput-boolean v7, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 191
    iget-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 192
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 193
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    return-void

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v3

    :goto_2
    if-nez p3, :cond_7

    if-eq v0, v3, :cond_6

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->removeViewAt(I)V

    :cond_6
    return-void

    .line 204
    :cond_7
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "Demo"

    move-object v0, v8

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 205
    iput-boolean v7, v8, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 206
    new-instance p3, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    .line 207
    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p3, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 209
    iget p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 210
    iget p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addDemoWifiView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 4

    const-string v0, "DemoStatusIcons"

    const-string v1, "addDemoWifiView: "

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->slot:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    .line 220
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 221
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 222
    instance-of v3, v3, Lcom/android/systemui/statusbar/StatusBarMobileView;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    .line 229
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 230
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setStaticDrawableColor(I)V

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addMobileView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 2

    const-string v0, "DemoStatusIcons"

    const-string v1, "addMobileView: "

    .line 244
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slot:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object v0

    .line 247
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 248
    iget p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setStaticDrawableColor(I)V

    .line 251
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 97
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    goto/16 :goto_9

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v0, :cond_1

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    goto/16 :goto_9

    .line 103
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v0, :cond_16

    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "volume"

    .line 104
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 111
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v3

    const-string v4, "vibrate"

    .line 112
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    const v0, 0x7f080e81

    goto :goto_0

    :cond_2
    const v0, 0x7f080fe1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 115
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    const-string p1, "zen"

    .line 117
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "dnd"

    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f080f6e

    goto :goto_1

    :cond_5
    move v0, v2

    .line 120
    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    const-string p1, "bluetooth"

    .line 122
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v3, "connected"

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f080f45

    goto :goto_2

    :cond_7
    move v0, v2

    .line 126
    :goto_2
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_8
    const-string p1, "location"

    .line 128
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "show"

    if-eqz v0, :cond_a

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f080f74

    goto :goto_3

    :cond_9
    move v0, v2

    .line 132
    :goto_3
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a
    const-string p1, "alarm"

    .line 134
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 136
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const p1, 0x7f080f3e

    goto :goto_4

    :cond_b
    move p1, v2

    :goto_4
    const-string v0, "alarm_clock"

    .line 138
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_c
    const-string p1, "tty"

    .line 140
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f081148

    goto :goto_5

    :cond_d
    move v0, v2

    .line 144
    :goto_5
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_e
    const-string p1, "mute"

    .line 146
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x1080076

    goto :goto_6

    :cond_f
    move v0, v2

    .line 150
    :goto_6
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_10
    const-string p1, "speakerphone"

    .line 152
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 154
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x1080087

    goto :goto_7

    :cond_11
    move v0, v2

    .line 156
    :goto_7
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_12
    const-string p1, "cast"

    .line 158
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f080f43

    goto :goto_8

    :cond_13
    move v0, v2

    .line 161
    :goto_8
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_14
    const-string p1, "hotspot"

    .line 163
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 165
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    const v2, 0x7f080f73

    .line 166
    :cond_15
    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_16
    :goto_9
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-static {p1, v0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setColor(I)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/StatusBarWifiView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 309
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 310
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRemoveIcon(Lcom/android/systemui/statusbar/StatusIconDisplayable;)V
    .locals 2

    .line 271
    invoke-interface {p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 273
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    goto :goto_0

    .line 275
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->matchingMobileView(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->removeView(Landroid/view/View;)V

    .line 278
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public remove()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateColors()V

    return-void
.end method

.method public updateMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 4

    const-string v0, "DemoStatusIcons"

    const-string v1, "updateMobileState: "

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 260
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-ne v2, v3, :cond_0

    .line 261
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addMobileView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    return-void
.end method

.method public updateWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 2

    const-string v0, "DemoStatusIcons"

    const-string v1, "updateWifiState: "

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addDemoWifiView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    :goto_0
    return-void
.end method
