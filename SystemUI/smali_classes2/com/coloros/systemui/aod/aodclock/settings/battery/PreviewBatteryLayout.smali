.class public Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;
.super Landroid/widget/LinearLayout;
.source "PreviewBatteryLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryLayout"


# instance fields
.field private mAodClockModeObserver:Landroid/database/ContentObserver;

.field private final mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryChargeView:Landroid/widget/ImageView;

.field private mBatteryLevelView:Landroid/widget/TextView;

.field private mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

.field private mBatteryView:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

.field private mColorOSContext:Landroid/content/Context;

.field private mLocale:Ljava/util/Locale;

.field private mShouldShowChargingIcon:Z

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 67
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    new-instance p2, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout$1;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance p2, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout$2;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout$2;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mAodClockModeObserver:Landroid/database/ContentObserver;

    .line 68
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mColorOSContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->setOrientation(I)V

    .line 70
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->setPreviewVisiable()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;III)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->updateBatteryStatus(III)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->updateTextColor()V

    return-void
.end method

.method private addBatteryChargeView()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 113
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const/16 v1, 0x10

    .line 115
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 116
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080489

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mTextColor:I

    invoke-static {v1, v2}, Lcom/color/support/util/ColorTintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private addBatteryLevelView()V
    .locals 3

    .line 123
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 124
    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mShouldShowChargingIcon:Z

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 130
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 131
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addBatteryView()V
    .locals 2

    .line 102
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 103
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 104
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryView:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryView:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mLocale:Ljava/util/Locale;

    .line 88
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mColorOSContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    .line 89
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryView:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

    .line 90
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->updateInfo()V

    .line 92
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->updateTextColor()V

    .line 93
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->addBatteryView()V

    .line 94
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mShouldShowChargingIcon:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->addBatteryChargeView()V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->addBatteryLevelView()V

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->updateBatteryLevel(Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;)V

    return-void
.end method

.method private isNeedShowPreviewBattery()Z
    .locals 2

    .line 83
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mColorOSContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "Setting_AodEnableClockOnly"

    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private registerBatteryBroadcast()V
    .locals 4

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mColorOSContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string p0, "Aod"

    const-string v0, "BatteryLayout"

    const-string v1, "registerAodBroadcast: with oppo safe permissions"

    .line 139
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateBatteryChargeView(Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;)V
    .locals 0

    .line 194
    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->shouldShowChargingIcon()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mShouldShowChargingIcon:Z

    .line 195
    iget-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mShouldShowChargingIcon:Z

    if-eqz p1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->addBatteryChargeView()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private updateBatteryLevel(Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 171
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryView:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->setBatteryLevel(I)V

    .line 175
    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->shouldShowChargingIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mShouldShowChargingIcon:Z

    .line 176
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mShouldShowChargingIcon:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->removeView(Landroid/view/View;)V

    .line 178
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->addBatteryLevelView()V

    .line 180
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->updateBatteryChargeView(Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;)V

    .line 181
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 182
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->isMyMMLanguage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 186
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mLocale:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->getLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "%d%c"

    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mColorOSContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonColorFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 190
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateBatteryLevel: batteryStatus is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Aod"

    const-string v0, "BatteryLayout"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateBatteryStatus(III)V
    .locals 3

    .line 203
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mColorOSContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 204
    :goto_0
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->setIsCharging(Z)V

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 205
    :goto_1
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->setIsFull(Z)V

    .line 206
    invoke-virtual {v0, p3}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->setLevel(I)V

    .line 207
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

    .line 208
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "battery status not change , so return"

    .line 209
    invoke-static {p3, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_2
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    .line 213
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->updateBatteryLevel(Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;)V

    return-void
.end method

.method private updateTextColor()V
    .locals 3

    .line 161
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mColorOSContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getTextColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mTextColor:I

    .line 162
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryView:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

    if-eqz v0, :cond_0

    .line 163
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mTextColor:I

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->setBatteryColor(I)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryLevelView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 165
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080489

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mTextColor:I

    invoke-static {v1, p0}, Lcom/color/support/util/ColorTintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryView:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;

    .line 218
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryChargeView:Landroid/widget/ImageView;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 230
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 231
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->init()V

    .line 232
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->registerBatteryBroadcast()V

    .line 233
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mColorOSContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mAodClockModeObserver:Landroid/database/ContentObserver;

    const-string v1, "Setting_AodPreviewClockMode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerAsSecure(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 223
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 224
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mColorOSContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mColorOSContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->mAodClockModeObserver:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setPreviewVisiable()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->isNeedShowPreviewBattery()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->setVisibility(I)V

    .line 76
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->updateTextColor()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 78
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
