.class public Lcom/android/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"

# interfaces
.implements Lcom/android/keyguard/SecurityMessageDisplay;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;
    }
.end annotation


# static fields
.field private static final ANNOUNCEMENT_DELAY:J = 0xfaL

.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object;

.field private static final DEFAULT_COLOR:I = -0x1


# instance fields
.field private mBouncerVisible:Z

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mDefaultColorState:Landroid/content/res/ColorStateList;

.field private final mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mMessage:Ljava/lang/CharSequence;

.field private mNextMessageColorState:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 64
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    .line 67
    new-instance p1, Lcom/android/keyguard/KeyguardMessageArea$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 85
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This constructor should never be invoked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 64
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    .line 67
    new-instance p1, Lcom/android/keyguard/KeyguardMessageArea$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setLayerType(ILandroid/graphics/Paint;)V

    .line 99
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 100
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object p4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 102
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->onThemeChanged()V

    .line 105
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 91
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardMessageArea;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBouncerVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    return-void
.end method

.method private clearMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    return-void
.end method

.method public static findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 3

    const v0, 0x7f0a0309

    .line 177
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find keyguard_message_area in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private securityMessageChanged(Ljava/lang/CharSequence;)V
    .locals 5

    .line 194
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 195
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 196
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 197
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xfa

    add-long/2addr v1, v3

    .line 197
    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method private update()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBouncerVisible:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mDefaultColorState:Landroid/content/res/ColorStateList;

    .line 211
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    .line 213
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    .line 215
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public varargs formatMessage(I[Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 173
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->onThemeChanged()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010095

    aput v3, v1, v2

    const v3, 0x7f120134

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(IF)V

    .line 146
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f0405d2

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v1, -0x10000

    .line 134
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    iput-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mDefaultColorState:Landroid/content/res/ColorStateList;

    .line 137
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 164
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->clearMessage()V

    :goto_0
    return-void
.end method

.method public setNextMessageColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    return-void
.end method
