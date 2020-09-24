.class public Lcom/coloros/systemui/keyguard/clock/SingleClockController;
.super Ljava/lang/Object;
.source "SingleClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private final mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

.field private final mResources:Landroid/content/res/Resources;

.field private mTvExtraContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mResources:Landroid/content/res/Resources;

    .line 70
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 71
    iput-object p3, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 72
    new-instance p2, Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-direct {p2, p1}, Lcom/android/keyguard/clock/SmallClockPosition;-><init>(Landroid/content/res/Resources;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    const v1, 0x7f0a05e0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mTvExtraContent:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getBigClockView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 1

    .line 125
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-virtual {p1}, Lcom/android/keyguard/clock/SmallClockPosition;->getPreferredY()I

    move-result p1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0707a0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    const/4 p0, 0x0

    .line 126
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->createViews()V

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    .line 83
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mTvExtraContent:Landroid/widget/TextView;

    return-void
.end method

.method public onTimeTick()V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->refresh()V

    :cond_0
    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->onTimeZoneChanged(Ljava/util/TimeZone;)V

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

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/SingleClockView;

    if-eqz p0, :cond_1

    .line 139
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
