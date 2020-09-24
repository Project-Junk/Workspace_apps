.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CarrierText"

.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

.field private mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

.field private mShouldMarquee:Z

.field private mShowAirplaneMode:Z

.field private mShowMissingSim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/R$styleable;->CarrierText:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    :try_start_0
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mShowAirplaneMode:Z

    const/4 v0, 0x2

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mShowMissingSim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    new-instance p1, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Lcom/android/keyguard/CarrierText;Landroid/content/Context;Z)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    :catchall_0
    move-exception p0

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    throw p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    iget-object p0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/CarrierTextController;->setListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 102
    iget-object p0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierTextController;->setListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 84
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 85
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_string_kg_text_message_separator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 87
    new-instance v0, Lcom/android/keyguard/CarrierTextController;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    iget-boolean v3, p0, Lcom/android/keyguard/CarrierText;->mShowAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/keyguard/CarrierText;->mShowMissingSim:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/keyguard/CarrierTextController;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mShouldMarquee:Z

    .line 90
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mShouldMarquee:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 107
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 110
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 112
    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void
.end method
