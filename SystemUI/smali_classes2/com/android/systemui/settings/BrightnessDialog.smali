.class public Lcom/android/systemui/settings/BrightnessDialog;
.super Landroid/app/Activity;
.source "BrightnessDialog.java"


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mColorBrightnessController:Lcom/coloros/systemui/qs/ColorBrightnessController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x30

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x2

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 53
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d01c9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/BrightnessDialog;->setContentView(Landroid/view/View;)V

    const p1, 0x7f0a0117

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/BrightnessDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/ToggleSliderView;

    .line 64
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Lcom/coloros/systemui/qs/ColorBrightnessController;

    const v1, 0x7f0a0114

    .line 68
    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/BrightnessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-direct {v0, p0, p1, v1}, Lcom/coloros/systemui/qs/ColorBrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;Landroid/widget/CheckBox;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mColorBrightnessController:Lcom/coloros/systemui/qs/ColorBrightnessController;

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa4

    if-ne p1, v0, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->finish()V

    .line 117
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStart()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 82
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mColorBrightnessController:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->registerCallbacks()V

    :goto_0
    const/16 v0, 0xdc

    .line 88
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/16 v0, 0xdc

    .line 94
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 101
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mColorBrightnessController:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->unregisterCallbacks()V

    :goto_0
    return-void
.end method
