.class public Lcom/coloros/systemui/keyguard/clock/DualClockController;
.super Ljava/lang/Object;
.source "DualClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private mClockExtraTextView:Landroid/widget/TextView;

.field private final mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/DualClockView;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mResources:Landroid/content/res/Resources;

    .line 71
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 72
    iput-object p3, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 73
    new-instance p2, Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-direct {p2, p1}, Lcom/android/keyguard/clock/SmallClockPosition;-><init>(Landroid/content/res/Resources;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/clock/DualClockView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    .line 78
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    const v1, 0x7f0a0223

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mClockExtraTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-virtual {p1}, Lcom/android/keyguard/clock/SmallClockPosition;->getPreferredY()I

    move-result p1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f070356

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    const/4 p0, 0x0

    .line 118
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

    .line 109
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/DualClockController;->createViews()V

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    .line 84
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mClockExtraTextView:Landroid/widget/TextView;

    return-void
.end method

.method public onTimeTick()V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->refresh()V

    :cond_0
    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->refresh()V

    :cond_0
    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 126
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isClockGlobalThemeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mLockClockContainer:Lcom/coloros/systemui/keyguard/clock/DualClockView;

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->setTextColor(I)V

    .line 134
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockController;->mClockExtraTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 135
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
