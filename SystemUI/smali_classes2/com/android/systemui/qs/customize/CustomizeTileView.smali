.class public Lcom/android/systemui/qs/customize/CustomizeTileView;
.super Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;
.source "CustomizeTileView.java"


# instance fields
.field private mShowAppLabel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    return-void
.end method


# virtual methods
.method protected animationsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAppLabel()Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mSecondLine:Landroid/widget/TextView;

    return-object p0
.end method

.method public handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 50
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mSecondLine:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mShowAppLabel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mSecondLine:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mShowAppLabel:Z

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public setShowAppLabel(Z)V
    .locals 2

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mShowAppLabel:Z

    .line 43
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mSecondLine:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method
