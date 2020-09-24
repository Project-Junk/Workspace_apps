.class public Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;
.super Ljava/lang/Object;
.source "HorizontalSingleClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private final mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mHorizontalSingleClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mResources:Landroid/content/res/Resources;

.field private mTvExtraContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mResources:Landroid/content/res/Resources;

    .line 73
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 74
    iput-object p3, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 75
    new-instance p2, Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-direct {p2, p1}, Lcom/android/keyguard/clock/SmallClockPosition;-><init>(Landroid/content/res/Resources;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0090

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mHorizontalSingleClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mHorizontalSingleClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;

    const v1, 0x7f0a05e0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mTvExtraContent:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "horizontalSingle"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-virtual {p1}, Lcom/android/keyguard/clock/SmallClockPosition;->getPreferredY()I

    move-result p1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0703ce

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    const/4 p0, 0x0

    .line 125
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

    const-string p0, "HorizontalSingle"

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mHorizontalSingleClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->createViews()V

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mHorizontalSingleClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mHorizontalSingleClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;

    return-void
.end method

.method public onTimeTick()V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mHorizontalSingleClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;

    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->refresh()V

    :cond_0
    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mHorizontalSingleClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;

    if-eqz p0, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method

.method public setColorPalette(Z[I)V
    .locals 0

    return-void
.end method

.method public setExtraTextVisibility(I)V
    .locals 0

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 134
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isClockGlobalThemeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;->mHorizontalSingleClockView:Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;

    if-eqz p0, :cond_1

    .line 138
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
