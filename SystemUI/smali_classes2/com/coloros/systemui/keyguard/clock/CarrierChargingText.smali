.class public Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;
.super Landroid/widget/TextView;
.source "CarrierChargingText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/clock/CarrierChargingText$CarrierTextTransformationMethod;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarrierChargingText"


# instance fields
.field private mCallback:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;

.field private mCarrierTextController:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

.field private mLastFont:I

.field private mLastLocale:Ljava/lang/String;

.field private mShouldMarquee:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p1, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText$1;-><init>(Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mCallback:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;

    .line 66
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mLastLocale:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mLastFont:I

    .line 69
    new-instance p1, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText$CarrierTextTransformationMethod;

    iget-object p2, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText$CarrierTextTransformationMethod;-><init>(Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;Landroid/content/Context;Z)V

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mCarrierTextController:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mCallback:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->setListening(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 84
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result v0

    .line 86
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastFont = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mLastFont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newFont = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarrierChargingText"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget v1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mLastFont:I

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 91
    iput v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mLastFont:I

    .line 92
    invoke-static {}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getSansMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->setTypeface(Landroid/graphics/Typeface;)V

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLastLocale = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mLastLocale:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newLocale = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mLastLocale:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mLastLocale:Ljava/lang/String;

    move v0, v3

    .line 103
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mCarrierTextController:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->updateChargingText()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 117
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mCarrierTextController:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->setListening(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 76
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mCarrierTextController:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    .line 78
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mShouldMarquee:Z

    .line 79
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->mShouldMarquee:Z

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->setSelected(Z)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 125
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 127
    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void
.end method
