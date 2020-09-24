.class public Lcom/coloros/systemui/qs/ColorQSBottomImpl;
.super Landroid/widget/FrameLayout;
.source "ColorQSBottomImpl.java"

# interfaces
.implements Lcom/coloros/systemui/qs/IColorQSBottom;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;


# static fields
.field public static final QS_SHOW_BRIGHTNESS:Ljava/lang/String; = "qs_show_brightness"


# instance fields
.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBrightnessView:Landroid/view/View;

.field private mColorBrightnessController:Lcom/coloros/systemui/qs/ColorBrightnessController;

.field private mDragHandle:Landroid/view/View;

.field private mExpansionAmount:F

.field protected mListening:Z

.field private mPageIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

.field private mPageIndicatorCallback:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator$PageIndicatorCallback;

.field protected mQSBottomAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mShowPageIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 212
    new-instance p1, Lcom/coloros/systemui/qs/ColorQSBottomImpl$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl$1;-><init>(Lcom/coloros/systemui/qs/ColorQSBottomImpl;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mPageIndicatorCallback:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator$PageIndicatorCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/systemui/qs/ColorQSBottomImpl;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mShowPageIndicator:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/ColorQSBottomImpl;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->updateResources()V

    return-void
.end method

.method private createQSBottomAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 130
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mDragHandle:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 131
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mPageIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    .line 132
    invoke-virtual {v0, p0, v4, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p0

    const v0, 0x3f733333    # 0.95f

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateBottomAnimator()V
    .locals 2

    .line 116
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mShowPageIndicator:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->createQSBottomAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mQSBottomAnimator:Lcom/android/systemui/qs/TouchAnimator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mQSBottomAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 120
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mDragHandle:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 121
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mPageIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private updateResources()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mDragHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 107
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mDragHandle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mPageIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 110
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mPageIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->updateBottomAnimator()V

    .line 112
    iget v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mExpansionAmount:F

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->setExpansion(F)V

    return-void
.end method

.method private updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 150
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 66
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "qs_show_brightness"

    .line 67
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mColorBrightnessController:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->registerCallbacks()V

    .line 73
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mPageIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    if-eqz v0, :cond_1

    .line 74
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mPageIndicatorCallback:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator$PageIndicatorCallback;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->addCallback(Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator$PageIndicatorCallback;)V

    :cond_1
    return-void
.end method

.method public onBrightnessMirrorReinflated(Landroid/view/View;)V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->updateBrightnessMirror()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->updateBrightnessMirror()V

    .line 95
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->updateResources()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 80
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mColorBrightnessController:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->unregisterCallbacks()V

    .line 85
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mPageIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    if-eqz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mPageIndicatorCallback:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator$PageIndicatorCallback;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->removeCallback(Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator$PageIndicatorCallback;)V

    .line 88
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0480

    .line 53
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mBrightnessView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mBrightnessView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    new-instance v0, Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0117

    .line 56
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/ToggleSlider;

    const v3, 0x7f0a0114

    .line 57
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-direct {v0, v1, v2, v3}, Lcom/coloros/systemui/qs/ColorBrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;Landroid/widget/CheckBox;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mColorBrightnessController:Lcom/coloros/systemui/qs/ColorBrightnessController;

    const v0, 0x7f0a048a

    .line 58
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mDragHandle:Landroid/view/View;

    const v0, 0x7f0a010f

    .line 59
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mPageIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    .line 60
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->updateResources()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 101
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->updateResources()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "qs_show_brightness"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mBrightnessView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshBrightness()V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mColorBrightnessController:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->checkRestrictionAndSetEnabled()V

    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 168
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->updateBrightnessMirror()V

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mExpansionAmount:F

    .line 207
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mQSBottomAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 185
    iget p1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mExpansionAmount:F

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->setExpansion(F)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 177
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mListening:Z

    .line 178
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mListening:Z

    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->refreshBrightness()V

    :cond_1
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 2

    .line 194
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 195
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    .line 197
    instance-of v0, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mPageIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setVisibility(I)V

    .line 199
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mPageIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setColorPageIndicator(Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;)V

    :cond_0
    return-void
.end method

.method public updateBrightnessMirror()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    const v0, 0x7f0a0117

    .line 155
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSliderView;

    .line 156
    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    .line 157
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSliderView;

    .line 158
    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V

    .line 159
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1, p0}, Lcom/android/systemui/settings/ToggleSliderView;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_0
    return-void
.end method
