.class public Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;
.super Landroid/widget/LinearLayout;
.source "BatteryLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryLayout"


# instance fields
.field private final mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryChargeView:Landroid/widget/ImageView;

.field private mBatteryLevelView:Landroid/widget/TextView;

.field private mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

.field private mBatteryView:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

.field private mClockTextColor:I

.field private mContext:Landroid/content/Context;

.field private mHasRegisterReceiver:Z

.field private mIsNeedShowBattery:Z

.field private mLocale:Ljava/util/Locale;

.field private mShouldShowChargingIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 70
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    new-instance p2, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout$1;-><init>(Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->setOrientation(I)V

    .line 73
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->isNeedShowBattery()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mIsNeedShowBattery:Z

    .line 76
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->isShowBattery()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mIsNeedShowBattery:Z

    .line 80
    :cond_0
    iget-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mIsNeedShowBattery:Z

    if-eqz p1, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->init()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 83
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;III)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->updateBatteryStatus(III)V

    return-void
.end method

.method private addBatteryChargeView()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 127
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const/16 v1, 0x10

    .line 129
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 130
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080489

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mClockTextColor:I

    invoke-static {v1, v2}, Lcom/color/support/util/ColorTintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private addBatteryLevelView()V
    .locals 3

    .line 137
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mShouldShowChargingIcon:Z

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :goto_0
    const/16 v1, 0x10

    .line 143
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 144
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 147
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonColorFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 148
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addBatteryView()V
    .locals 2

    .line 116
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 117
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 118
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryView:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryView:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mLocale:Ljava/util/Locale;

    .line 100
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getTextColorForLockScreen(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mClockTextColor:I

    .line 101
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    .line 102
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryView:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

    .line 103
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->updateInfo()V

    .line 105
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->registerBatteryBroadcast()V

    .line 106
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->addBatteryView()V

    .line 107
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mShouldShowChargingIcon:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->addBatteryChargeView()V

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->addBatteryLevelView()V

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->updateBatteryLevel(Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;)V

    return-void
.end method

.method private isNeedShowBattery()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableClockOnly()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerBatteryBroadcast()V
    .locals 4

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mHasRegisterReceiver:Z

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string p0, "Aod"

    const-string v0, "BatteryLayout"

    const-string v1, "registerAodBroadcast: with oppo safe permissions"

    .line 155
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateBatteryChargeView(Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;)V
    .locals 0

    .line 191
    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->shouldShowChargingIcon()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mShouldShowChargingIcon:Z

    .line 192
    iget-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mShouldShowChargingIcon:Z

    if-eqz p1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->addBatteryChargeView()V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private updateBatteryStatus(III)V
    .locals 3

    .line 200
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 201
    :goto_0
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->setIsCharging(Z)V

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 202
    :goto_1
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->setIsFull(Z)V

    .line 203
    invoke-virtual {v0, p3}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->setLevel(I)V

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateBatteryStatus: batteryStatus is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatteryLayout"

    const-string p3, "Aod"

    invoke-static {p3, p2, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "battery status not change , so return"

    .line 207
    invoke-static {p3, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 211
    :cond_2
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->isLowBattery()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "updateBatteryStatus: hide clock because battery has no enough power to show."

    .line 212
    invoke-static {p3, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->hideClock()V

    return-void

    .line 217
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodIsInShow()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 218
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object p1

    const-wide/16 p2, 0x2710

    invoke-virtual {p1, p2, p3}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 219
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->updateAodDozeStateAndStart(I)V

    .line 220
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    .line 221
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->updateBatteryLevel(Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;)V

    .line 222
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->setAodSuspendState()V

    :cond_4
    return-void
.end method


# virtual methods
.method public onBatteryLayoutDestroy()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mHasRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public updateBatteryLevel(Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryView:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->setBatteryLevel(I)V

    .line 173
    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->shouldShowChargingIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mShouldShowChargingIcon:Z

    .line 174
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mShouldShowChargingIcon:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->removeView(Landroid/view/View;)V

    .line 176
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->addBatteryLevelView()V

    .line 178
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->updateBatteryChargeView(Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;)V

    .line 179
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 180
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isMyMmLanguage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 184
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonColorFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 185
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mClockTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryLayout;->mLocale:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->getLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%d%c"

    invoke-static {p0, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Aod"

    const-string v0, "BatteryLayout"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
