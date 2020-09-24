.class public Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileView;
.source "ColorQSTileView.java"


# instance fields
.field private mLastFlipFont:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;->mLastFlipFont:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;->mLastFlipFont:I

    .line 32
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;->mLastFlipFont:I

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;->setTextViewTypeface()V

    return-void
.end method

.method private setTextViewTypeface()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;->mLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;->mLabel:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;->mSecondLine:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;->mSecondLine:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    .line 43
    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result p1

    .line 44
    iget v0, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;->mLastFlipFont:I

    if-eq p1, v0, :cond_0

    .line 45
    iput p1, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;->mLastFlipFont:I

    .line 46
    invoke-direct {p0}, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;->setTextViewTypeface()V

    :cond_0
    return-void
.end method
