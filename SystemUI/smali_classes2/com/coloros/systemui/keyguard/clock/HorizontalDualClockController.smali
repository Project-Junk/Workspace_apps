.class public Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;
.super Ljava/lang/Object;
.source "HorizontalDualClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private mClockExtraTextView:Landroid/widget/TextView;

.field private final mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mHorizontalDualClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mResources:Landroid/content/res/Resources;

    .line 73
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 74
    iput-object p3, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 75
    new-instance p2, Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-direct {p2, p1}, Lcom/android/keyguard/clock/SmallClockPosition;-><init>(Landroid/content/res/Resources;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d008f

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mHorizontalDualClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mHorizontalDualClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;

    const v1, 0x7f0a05df

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mClockExtraTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "horizontalDual"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-virtual {p1}, Lcom/android/keyguard/clock/SmallClockPosition;->getPreferredY()I

    move-result p1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0703c7

    .line 121
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    const/4 p0, 0x0

    .line 122
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, "HorizontalDual"

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mHorizontalDualClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->createViews()V

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mHorizontalDualClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mHorizontalDualClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;

    .line 87
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mClockExtraTextView:Landroid/widget/TextView;

    return-void
.end method

.method public onTimeTick()V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mHorizontalDualClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->refresh()V

    :cond_0
    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mHorizontalDualClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;

    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->refresh()V

    :cond_0
    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 131
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isClockGlobalThemeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mHorizontalDualClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->setTextColor(I)V

    .line 139
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;->mClockExtraTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
