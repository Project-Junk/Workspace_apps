.class public Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;
.super Landroid/widget/TextView;
.source "ColorOperatorNameView.java"

# interfaces
.implements Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mCarrierTextController:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

.field private mLocal:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f11069c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 34
    iget-object p3, p0, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->mCarrierTextController:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    .line 35
    iget-object p3, p0, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->mCarrierTextController:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-virtual {p3, p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->setListening(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;)V

    .line 36
    iget-object p3, p0, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->mCarrierTextController:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-virtual {p3, p2, p1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->setSeparator(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 63
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->mCarrierTextController:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->setListening(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;)V

    .line 64
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->mLocal:Ljava/util/Locale;

    if-eq v0, v1, :cond_0

    .line 71
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->mLocal:Ljava/util/Locale;

    .line 72
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 83
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->setTextColor(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 56
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->mCarrierTextController:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->setListening(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;)V

    .line 57
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 47
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 48
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->mCarrierTextController:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->updateCarrierTextInBgThread()V

    :cond_0
    return-void
.end method

.method public updateCarrierInfo(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;)V
    .locals 0

    .line 78
    iget-object p1, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/ColorOperatorNameView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
