.class public Lcom/coloros/systemui/qs/ColorQSFooterImpl;
.super Landroid/widget/FrameLayout;
.source "ColorQSFooterImpl.java"

# interfaces
.implements Lcom/android/systemui/qs/QSFooter;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final EXPANSION_MAX:F = 1.0f

.field private static final EXPANSION_SEVENTY_PERCENT:F = 0.7f

.field private static final FOOTER_ANIMATOR_END_DELAY:F = 0.3f

.field private static final FOOTER_ANIMATOR_START_DELAY:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ColorQSFooterImpl"


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mColorQSCarrier:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

.field private mColorSettingsButton:Landroid/view/View;

.field private mDateView:Lcom/coloros/systemui/qs/widget/ColorQSDateView;

.field private mDeveloperSettingsListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

.field protected mEdit:Landroid/view/View;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field protected mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeightDiff:I

.field private mKeyguardShowing:Z

.field private mListening:Z

.field private mQsDisabled:Z

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field protected mSettingsContainer:Landroid/view/View;

.field private mTranslationScaleY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 108
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 109
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance p1, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSFooterImpl$I4wMw304plwRTPMVjhOHZch2W3o;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSFooterImpl$I4wMw304plwRTPMVjhOHZch2W3o;-><init>(Lcom/coloros/systemui/qs/ColorQSFooterImpl;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mDeveloperSettingsListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 96
    new-instance p1, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSFooterImpl$C2WLSnY1f2qUu32CEddWx_TwYsA;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSFooterImpl$C2WLSnY1f2qUu32CEddWx_TwYsA;-><init>(Lcom/coloros/systemui/qs/ColorQSFooterImpl;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 103
    iput-object p3, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method private createEditAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 215
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mEdit:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    .line 216
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p0

    const v0, 0x3e99999a    # 0.3f

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setBuildText()V
    .locals 6

    const v0, 0x7f0a012c

    .line 149
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_string_bugreport_status:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 160
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private startSettingsActivity()V
    .locals 2

    .line 377
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateClickabilities()V
    .locals 4

    .line 330
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mEdit:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 331
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mColorSettingsButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private updateFontSize()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mDateView:Lcom/coloros/systemui/qs/widget/ColorQSDateView;

    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v1

    const-class v2, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    .line 181
    invoke-virtual {v1, v2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->getAdapterTextSizeSp(I)F

    move-result v1

    .line 180
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->setTextSize(F)V

    .line 182
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mColorQSCarrier:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    .line 183
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->getAdapterTextSizeSp(I)F

    move-result v0

    .line 182
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->setTextSize(F)V

    return-void
.end method

.method private updateFooterAnimator()V
    .locals 1

    .line 207
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->createEditAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void
.end method

.method private updateResources()V
    .locals 4

    .line 194
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->updateFooterAnimator()V

    .line 195
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mSettingsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x7f07072e

    .line 197
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 198
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mSettingsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/common/util/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mExpanded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mKeyguardShowing:Z

    iget v1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mTranslationScaleY:F

    iget v2, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mHeightDiff:I

    iget v3, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mExpansionAmount:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->setTranslation(ZFIF)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method private updateVisibilities()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mEdit:Landroid/view/View;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mExpanded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mColorSettingsButton:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 303
    :goto_0
    iget-boolean p2, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 306
    :cond_1
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mQsDisabled:Z

    .line 307
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->updateEverything()V

    return-void
.end method

.method public synthetic lambda$new$0$ColorQSFooterImpl(Z)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->setBuildText()V

    return-void
.end method

.method public synthetic lambda$new$1$ColorQSFooterImpl(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->updateEverything()V

    return-void
.end method

.method public synthetic lambda$null$2$ColorQSFooterImpl(Landroid/view/View;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isExpanded()Z

    move-result v0

    const-string v1, "ColorQSFooterImpl"

    const-string v2, "Statusbar"

    if-nez v0, :cond_0

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Quit expand, isExpanded = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isExpanded()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Start show Edit"

    .line 123
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "It is DragState"

    .line 126
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$3$ColorQSFooterImpl(Landroid/view/View;)V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "ColorQSFooterImpl"

    const-string v2, "Edit Button------------Clicked"

    .line 117
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSFooterImpl$nVbMGQXMZmghRVgF1ltUxD1j87w;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSFooterImpl$nVbMGQXMZmghRVgF1ltUxD1j87w;-><init>(Lcom/coloros/systemui/qs/ColorQSFooterImpl;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$updateEverything$4$ColorQSFooterImpl()V
    .locals 1

    .line 323
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->updateVisibilities()V

    .line 324
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->updateClickabilities()V

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->setClickable(Z)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->updateResources()V

    .line 167
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 253
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 254
    invoke-static {}, Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;->getInstance()Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mDeveloperSettingsListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 255
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mColorSettingsButton:Landroid/view/View;

    const-string v1, "ColorQSFooterImpl"

    const-string v2, "Statusbar"

    if-ne p1, v0, :cond_1

    const-string p1, "Setting Button------------Clicked"

    .line 348
    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mExpanded:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x196

    goto :goto_0

    :cond_0
    const/16 v0, 0x1ea

    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 352
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->startSettingsActivity()V

    .line 355
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mContext:Landroid/content/Context;

    const-string p1, "settings_click"

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mDateView:Lcom/coloros/systemui/qs/widget/ColorQSDateView;

    if-ne p1, v0, :cond_3

    const-string p1, "Date Button------------Clicked"

    .line 358
    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 360
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.coloros.calendar"

    const-string v1, "com.coloros.calendar.LaunchActivity"

    .line 361
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "KEY_CHECK_PASSWORD"

    .line 362
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v0, "com.google.android.calendar"

    const-string v1, "com.android.calendar.AllInOneActivity"

    .line 364
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x8000

    .line 365
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_1
    const/high16 v0, 0x10000000

    .line 367
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 371
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mContext:Landroid/content/Context;

    const-string p1, "date_click"

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 173
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    .line 174
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->setFontScale(F)V

    .line 176
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->updateResources()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->setListening(Z)V

    .line 262
    invoke-static {}, Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;->getInstance()Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mDeveloperSettingsListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;->removeListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 263
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 264
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 114
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x1020003

    .line 115
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mEdit:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mEdit:Landroid/view/View;

    new-instance v1, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSFooterImpl$BPHvPrQMixXCXpFFhGAMuxDCfeQ;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSFooterImpl$BPHvPrQMixXCXpFFhGAMuxDCfeQ;-><init>(Lcom/coloros/systemui/qs/ColorQSFooterImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0520

    .line 134
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mSettingsContainer:Landroid/view/View;

    const v0, 0x7f0a051f

    .line 135
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mColorSettingsButton:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mColorSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0181

    .line 137
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mDateView:Lcom/coloros/systemui/qs/widget/ColorQSDateView;

    .line 138
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mDateView:Lcom/coloros/systemui/qs/widget/ColorQSDateView;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0190

    .line 139
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mColorQSCarrier:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    .line 140
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->updateResources()V

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->setImportantForAccessibility(I)V

    .line 143
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->updateEverything()V

    .line 144
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->setBuildText()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 296
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 297
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 189
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 190
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->updateResources()V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/high16 v0, 0x40000

    if-ne p1, v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 287
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    .line 291
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mExpandClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 238
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mExpanded:Z

    .line 239
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->updateEverything()V

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mExpansionAmount:F

    .line 246
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mKeyguardShowing:Z

    .line 225
    iget p1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mExpansionAmount:F

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->setExpansion(F)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 272
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mListening:Z

    .line 273
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mColorQSCarrier:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->setListening(Z)V

    if-eqz p1, :cond_1

    .line 276
    invoke-static {}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->removeListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    :goto_0
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-void
.end method

.method public setTranslation(ZFIF)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070724

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 313
    iput p2, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mTranslationScaleY:F

    .line 314
    iput p3, p0, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->mHeightDiff:I

    if-eqz p1, :cond_0

    int-to-float p1, p3

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    goto :goto_1

    :cond_0
    const p1, 0x3f333333    # 0.7f

    div-float/2addr p4, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, p4, p1

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    move p1, p4

    :goto_0
    mul-float p2, p1, v0

    .line 315
    :goto_1
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->setTranslationY(F)V

    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 322
    new-instance v0, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSFooterImpl$UpQWnvgIeYDB4e-HSZ9i-Pruo0c;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSFooterImpl$UpQWnvgIeYDB4e-HSZ9i-Pruo0c;-><init>(Lcom/coloros/systemui/qs/ColorQSFooterImpl;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSFooterImpl;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
