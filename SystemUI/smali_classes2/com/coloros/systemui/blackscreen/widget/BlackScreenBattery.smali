.class public Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;
.super Landroid/widget/LinearLayout;
.source "BlackScreenBattery.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BlackScreenBattery"


# instance fields
.field private mBatteryCharge:Landroid/widget/ImageView;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryPercent:Landroid/widget/ProgressBar;

.field private mBatteryText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 65
    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->setOrientation(I)V

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->setGravity(I)V

    .line 68
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    invoke-virtual {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setColor(I)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryPercent:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryCharge:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mContext:Landroid/content/Context;

    const v1, 0x7f080ed2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 p1, 0x1

    .line 111
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 112
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryCharge:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private updateChargingState(Z)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryCharge:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 135
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updatePercentText(I)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryText:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateProgressLevel(I)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryPercent:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onBatteryLevelChanged$0$BlackScreenBattery(IZ)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->updatePercentText(I)V

    .line 98
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->updateProgressLevel(I)V

    .line 99
    invoke-direct {p0, p2}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->updateChargingState(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenBattery"

    const-string v2, "onAttachedToWindow()"

    .line 76
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0a00fa

    .line 77
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryPercent:Landroid/widget/ProgressBar;

    const v0, 0x7f0a00fc

    .line 78
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryText:Landroid/widget/TextView;

    const v0, 0x7f0a00f2

    .line 79
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryCharge:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mContext:Landroid/content/Context;

    const v1, 0x7f06006e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->setColor(I)V

    .line 81
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 82
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 96
    new-instance p2, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenBattery$jCDSL0HLYIpn7pJa-RkVr0JZwog;

    invoke-direct {p2, p0, p1, p3}, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenBattery$jCDSL0HLYIpn7pJa-RkVr0JZwog;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;IZ)V

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenBattery"

    const-string v2, "onDetachedFromWindow()"

    .line 88
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
