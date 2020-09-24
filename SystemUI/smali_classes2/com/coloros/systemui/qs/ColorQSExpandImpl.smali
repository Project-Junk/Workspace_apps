.class public Lcom/coloros/systemui/qs/ColorQSExpandImpl;
.super Landroid/widget/FrameLayout;
.source "ColorQSExpandImpl.java"

# interfaces
.implements Lcom/coloros/systemui/qs/ColorQSExpand;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final ACTION_WEATHER:Ljava/lang/String; = "com.oppo.action.oppoWeather"

.field private static final TAG:Ljava/lang/String; = "QSExpandImpl"


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mClockView:Lcom/coloros/systemui/qs/widget/ColorQSClockView;

.field private mColorQSSecurityView:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

.field private mContext:Landroid/content/Context;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field protected mQSExpandAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private mWeatherView:Lcom/coloros/systemui/qs/widget/ColorQSWeather;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 89
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 90
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 88
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-object p3, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 83
    iput-object p4, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 84
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createQSExpandAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 143
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mWeatherView:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 144
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    .line 145
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mClockView:Lcom/coloros/systemui/qs/widget/ColorQSClockView;

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    .line 146
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mColorQSSecurityView:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    .line 147
    invoke-virtual {v0, p0, v4, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p0

    const v0, 0x3ecccccd    # 0.4f

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p0

    const v0, 0x3e4ccccd    # 0.2f

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showUserSwitcher()Z
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/color/compat/os/UserManagerNative;->canShowMultiUserEntry(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 230
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->isMultiUserEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private updateExpandAnimator()V
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->createQSExpandAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mQSExpandAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void
.end method

.method private updateFontSize()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mColorQSSecurityView:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v1

    const-class v2, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    .line 129
    invoke-virtual {v1, v2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->getAdapterTextSizeSp(I)F

    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->setTextSize(F)V

    .line 130
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mWeatherView:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    .line 131
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->getAdapterTextSizeSp(I)F

    move-result v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateEverything$0$ColorQSExpandImpl()V
    .locals 5

    .line 217
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->showUserSwitcher()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getVisibility()I

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 219
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mClockView:Lcom/coloros/systemui/qs/widget/ColorQSClockView;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mExpanded:Z

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mClockView:Lcom/coloros/systemui/qs/widget/ColorQSClockView;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->setClickable(Z)V

    .line 221
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mWeatherView:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mExpanded:Z

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v0, v2}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mWeatherView:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mExpanded:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    invoke-virtual {v0, v4}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->setClickable(Z)V

    .line 223
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->setClickable(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 110
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mWeatherView:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    if-ne p1, v0, :cond_0

    .line 189
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oppo.action.oppoWeather"

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x24000000

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 195
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mContext:Landroid/content/Context;

    const-string p1, "weather_click"

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->updateExpandAnimator()V

    .line 122
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    .line 123
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->setFontScale(F)V

    .line 124
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->updateFontSize()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 115
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 116
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 95
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a03d1

    .line 96
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 97
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v1, 0x7f0a03d0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mMultiUserAvatar:Landroid/widget/ImageView;

    const v0, 0x7f0a01a0

    .line 98
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mWeatherView:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    const v0, 0x7f0a0191

    .line 99
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mClockView:Lcom/coloros/systemui/qs/widget/ColorQSClockView;

    const v0, 0x7f0a0192

    .line 100
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mColorQSSecurityView:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    .line 101
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mWeatherView:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->updateExpandAnimator()V

    .line 103
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->updateEverything()V

    .line 104
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->updateFontSize()V

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 239
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mContext:Landroid/content/Context;

    .line 240
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isGuestUser(I)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p2, Lcom/android/settingslib/drawable/UserIconDrawable;

    if-nez p1, :cond_0

    .line 242
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 243
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mContext:Landroid/content/Context;

    const p3, 0x1010030

    .line 244
    invoke-static {p1, p3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 243
    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 247
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 211
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mExpanded:Z

    .line 212
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->updateEverything()V

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mExpansionAmount:F

    .line 203
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mQSExpandAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1

    .line 161
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mColorQSSecurityView:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V

    .line 162
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    .line 163
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 183
    iget p1, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mExpansionAmount:F

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->setExpansion(F)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 171
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mListening:Z

    .line 172
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mListening:Z

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mColorQSSecurityView:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->setListening(Z)V

    .line 178
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mWeatherView:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->setListening(Z)V

    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 156
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    :cond_0
    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 216
    new-instance v0, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSExpandImpl$xzDRX3iVdOiY44u6Bxh-U1hUzso;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSExpandImpl$xzDRX3iVdOiY44u6Bxh-U1hUzso;-><init>(Lcom/coloros/systemui/qs/ColorQSExpandImpl;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSExpandImpl;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
