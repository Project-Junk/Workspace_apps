.class public Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;
.super Landroid/widget/TextView;
.source "ClockExtraTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$CarrierTextTransformationMethod;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockExtraTextView"


# instance fields
.field private final KEY_OPPO_SCREEN_LOCK_SIGNATURE:Ljava/lang/String;

.field private mCallback:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

.field private mCanShowSignature:Z

.field private mClockExtraTextController:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

.field private mLastFont:I

.field private mLastLocale:Ljava/lang/String;

.field private mShouldMarquee:Z

.field private mSignatureTextObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "key_oppo_screen_lock_signature"

    .line 48
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->KEY_OPPO_SCREEN_LOCK_SIGNATURE:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$1;-><init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mCallback:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mLastLocale:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mLastFont:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/R$styleable;->ClockExtraTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    :try_start_0
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mCanShowSignature:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    new-instance p1, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    iget-object p2, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mClockExtraTextController:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    .line 93
    new-instance p1, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$CarrierTextTransformationMethod;

    iget-object p2, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2, v1}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$CarrierTextTransformationMethod;-><init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;Landroid/content/Context;Z)V

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    :catchall_0
    move-exception p0

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    throw p0
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->updateSignatureText()V

    return-void
.end method

.method private updateSignatureText()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_oppo_screen_lock_signature"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current signature text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClockExtraTextView"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mClockExtraTextController:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->setSignatureText(Ljava/lang/String;)V

    .line 195
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mClockExtraTextController:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->updateExtraText()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 133
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 135
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mCanShowSignature:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->updateSignatureText()V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->registerContentObserver()V

    .line 139
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mClockExtraTextController:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mCallback:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->setListening(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 105
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result v0

    .line 107
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastFont = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mLastFont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newFont = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClockExtraTextView"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget v1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mLastFont:I

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 112
    iput v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mLastFont:I

    .line 113
    invoke-static {}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getSansMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->setTypeface(Landroid/graphics/Typeface;)V

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLastLocale = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mLastLocale:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newLocale = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mLastLocale:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mLastLocale:Ljava/lang/String;

    move v0, v3

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mClockExtraTextController:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 125
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mCanShowSignature:Z

    if-eqz p1, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->updateSignatureText()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 144
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 145
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mClockExtraTextController:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->setListening(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;)V

    .line 146
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->unRegisterContentObserver()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 98
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mShouldMarquee:Z

    .line 100
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mShouldMarquee:Z

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->setSelected(Z)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 151
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 154
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 156
    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void
.end method

.method public registerContentObserver()V
    .locals 4

    .line 164
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mCanShowSignature:Z

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$2;-><init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mSignatureTextObserver:Landroid/database/ContentObserver;

    .line 172
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_oppo_screen_lock_signature"

    .line 173
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mSignatureTextObserver:Landroid/database/ContentObserver;

    .line 174
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 172
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method

.method public unRegisterContentObserver()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mSignatureTextObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->mSignatureTextObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
