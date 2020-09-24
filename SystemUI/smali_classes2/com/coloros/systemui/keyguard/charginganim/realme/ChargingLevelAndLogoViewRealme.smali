.class public Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;
.super Landroid/widget/LinearLayout;
.source "ChargingLevelAndLogoViewRealme.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;
    }
.end annotation


# static fields
.field private static final ALITA_LETTER_SPACEING:F = -0.085f

.field private static final DECIMAL_SHOW_TIME_LENGTH:I = 0x4e20

.field private static final FADE_ANIM_DURATION:I = 0xc8

.field private static final LETTER_SPACEING:F = -0.045f

.field private static final MSG_CHARGE_ANIM_STOP:I = 0x2

.field private static final MSG_DECIMAL_SHOW_TIME_LENGTH:I = 0x1

.field private static final POWER_VALUE_100:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ChargingLevelAndLogoViewRealme"


# instance fields
.field private mBatteryDecimalLevelView:Landroid/widget/TextView;

.field private mBatteryIntegerLevelView:Landroid/widget/TextView;

.field private mBatteryLevelPercent:Landroid/widget/TextView;

.field private mChargeTypeLogo:Landroid/widget/ImageView;

.field private mCustomSmallItemOffset:Z

.field private final mCustomizeDotLocales:[Ljava/lang/String;

.field private final mCustomizeLevelRTLLocales:[Ljava/lang/String;

.field private final mCustomizePercentLocales:[Ljava/lang/String;

.field private final mCustomizePercentOffset:[Ljava/lang/String;

.field private mDecimalLevelIsShowing:Z

.field private mDot:Ljava/lang/String;

.field private mFadeinAnimating:Z

.field private mIsStopCharging:Z

.field mKeyguardShowingCallBack:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private mLevel:I

.field private mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

.field private mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

.field private mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

.field mScreenCallBack:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

.field private mWorkHandler:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 26

    move-object/from16 v0, p0

    .line 84
    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "es-AR"

    const-string v2, "es-CL"

    const-string v3, "ar-AE"

    const-string v4, "cs-CZ"

    const-string v5, "nl-NL"

    const-string v6, "fa-IR"

    const-string v7, "fr-FR"

    const-string v8, "de-DE"

    const-string v9, "el-GR"

    const-string v10, "hu-HU"

    const-string v11, "in-ID"

    const-string v12, "it-IT"

    const-string v13, "ka-KA"

    const-string v14, "nb-NO"

    const-string v15, "pl-PL"

    const-string v16, "pt-BR"

    const-string v17, "pt-PT"

    const-string v18, "ro-RO"

    const-string v19, "es-ES"

    const-string v20, "sv-SE"

    const-string v21, "tr-TR"

    const-string v22, "vi-VN"

    const-string v23, "gl-ES"

    const-string v24, "rw-RW"

    const-string v25, "ru-RU"

    .line 56
    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mCustomizeDotLocales:[Ljava/lang/String;

    const-string v2, "ar"

    const-string v3, "as"

    const-string v4, "bn"

    const-string v5, "fa"

    const-string v6, "mr"

    const-string v7, "ne"

    const-string v8, "my"

    .line 60
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mCustomizePercentOffset:[Ljava/lang/String;

    const-string v1, "ar"

    const-string v2, "fa"

    const-string v3, "ks"

    .line 61
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mCustomizePercentLocales:[Ljava/lang/String;

    const-string v1, "ug"

    const-string v2, "ur"

    const-string v3, "iw"

    .line 62
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mCustomizeLevelRTLLocales:[Ljava/lang/String;

    const/4 v1, -0x1

    .line 73
    iput v1, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevel:I

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mDecimalLevelIsShowing:Z

    .line 76
    iput-boolean v1, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mIsStopCharging:Z

    .line 132
    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$1;

    invoke-direct {v1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$1;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V

    iput-object v1, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mKeyguardShowingCallBack:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 139
    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$2;

    invoke-direct {v1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$2;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V

    iput-object v1, v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mScreenCallBack:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->handleDecimalShow()V

    return-void
.end method

.method static synthetic access$202(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mFadeinAnimating:Z

    return p1
.end method

.method static synthetic access$302(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->handleDecimalShowLength()V

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->handleChargeAnimeStop()V

    return-void
.end method

.method private checkCustomizeLocale(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCustomizeLocale, languageTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard"

    const-string v2, "ChargingLevelAndLogoViewRealme"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 204
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mCustomizePercentLocales:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 205
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mCustomizeLevelRTLLocales:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    move v5, v3

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v5, v1, v3

    .line 211
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 216
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mCustomizePercentOffset:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    move v6, v3

    :goto_4
    if-ge v3, v2, :cond_6

    aget-object v6, v1, v3

    .line 217
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    move v4, v0

    move v5, v4

    move v6, v5

    :cond_6
    :goto_5
    if-eqz p2, :cond_8

    .line 224
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mCustomizeDotLocales:[Ljava/lang/String;

    array-length v1, p1

    move v2, v0

    move v3, v2

    :goto_6
    if-ge v2, v1, :cond_9

    aget-object v3, p1, v2

    .line 225
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    move v3, v0

    :cond_9
    :goto_7
    if-eqz v3, :cond_a

    const-string p1, ","

    goto :goto_8

    :cond_a
    const-string p1, "."

    .line 231
    :goto_8
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mDot:Ljava/lang/String;

    const p1, 0x7f0a00f7

    .line 233
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    if-ne p3, p2, :cond_b

    if-eqz v5, :cond_b

    .line 235
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    goto :goto_9

    .line 237
    :cond_b
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    :goto_9
    if-eqz v4, :cond_c

    const p1, 0x7f110401

    goto :goto_a

    :cond_c
    const p1, 0x7f110402

    .line 242
    :goto_a
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iput-boolean v6, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mCustomSmallItemOffset:Z

    .line 245
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->layoutView()V

    return-void
.end method

.method private handleChargeAnimeStop()V
    .locals 2

    const/4 v0, 0x1

    .line 542
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mIsStopCharging:Z

    .line 543
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWorkHandler:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWorkHandler:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private handleDecimalShow()V
    .locals 4

    .line 156
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->isShowBatteryDecimalLevelView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->isKeyguardShowingAndScreenOn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDecimalShow mDecimalLevelIsShowing = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mDecimalLevelIsShowing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Keyguard"

    const-string v3, "ChargingLevelAndLogoViewRealme"

    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mDecimalLevelIsShowing:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->setLevelAndLogoView(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V

    .line 161
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    iget v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevel:I

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->setLevelFromBroadcast(I)V

    .line 162
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->startCalculateBatteryRate()V

    .line 163
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mDecimalLevelIsShowing:Z

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWorkHandler:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWorkHandler:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;->removeMessages(I)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWorkHandler:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;->removeMessages(I)V

    .line 170
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWorkHandler:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private handleDecimalShowLength()V
    .locals 2

    const/4 v0, 0x0

    .line 532
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mDecimalLevelIsShowing:Z

    .line 533
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mIsStopCharging:Z

    if-nez v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->stopCalculateBatteryRate(Z)V

    .line 536
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    .line 537
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private isKeyguardShowingAndScreenOn()Z
    .locals 1

    .line 152
    const-class p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isShowBatteryDecimalLevelView()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    .line 111
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVoocChargerTechnology()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isSupportDartDecimal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isVoocChargerTechnology()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private layoutView()V
    .locals 12

    .line 249
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    .line 258
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 259
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    .line 260
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 261
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "OPPOSANS_Number_Regular.ttf"

    const v6, -0x42c7ae14    # -0.045f

    if-nez v3, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0708d8

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 264
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0708d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const v8, 0x7f0708d5

    .line 266
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    const v9, 0x7f0708d4

    .line 268
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 272
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f07076a

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 275
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070769

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_0
    move v0, v4

    goto/16 :goto_1

    .line 280
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportGundamAnimation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0708b3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 284
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0708b4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const v5, 0x7f0708b0

    .line 286
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    const v5, 0x7f0708b2

    .line 288
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v9, 0x7f0708af

    .line 290
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v9, 0x7f0708b1

    .line 292
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 294
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mCustomSmallItemOffset:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f0708ae

    .line 295
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const-string v0, "gundam_type.otf"

    move v11, v5

    move-object v5, v0

    move v0, v11

    goto :goto_1

    .line 297
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0708aa

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 299
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0708ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const v6, -0x4251eb85    # -0.085f

    const v8, 0x7f0708a7

    .line 302
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    const v9, 0x7f0708a6

    .line 305
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 307
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v0, v8

    .line 312
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-static {v9, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 314
    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can\'t find the typeface "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "Keyguard"

    const-string v10, "ChargingLevelAndLogoViewRealme"

    invoke-static {v9, v10, v5}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 317
    iget-object v9, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 318
    iget-object v9, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 319
    iget-object v9, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4
    if-eqz v3, :cond_6

    .line 322
    iget-object v5, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 323
    iget-boolean v9, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mCustomSmallItemOffset:Z

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 324
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    const/4 v3, 0x1

    if-eqz v7, :cond_7

    .line 327
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryLevelPercent:Landroid/widget/TextView;

    int-to-float v5, v7

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    if-eqz v8, :cond_8

    .line 330
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    int-to-float v5, v8

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_8
    if-eqz v0, :cond_9

    .line 333
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v4, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 335
    :cond_9
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVoocChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 336
    :cond_a
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 337
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    :cond_b
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 340
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateLevelAndLogoColor()V
    .locals 5

    .line 431
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 433
    new-array v2, v2, [I

    const v3, 0x7f0405d2

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    .line 435
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 436
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 437
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mChargeTypeLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method private updateLogoResource()V
    .locals 6

    .line 384
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v0

    const v1, 0x7f0708d1

    const v2, 0x7f0708d2

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVoocChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isVoocChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isShowVoocLogo()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080ce8

    .line 403
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 405
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0708dc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_2

    :cond_1
    const v0, 0x7f080ce5

    .line 409
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 411
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_1

    :cond_2
    move v0, v3

    move v1, v0

    move v2, v1

    goto :goto_2

    .line 385
    :cond_3
    :goto_0
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isShowVoocLogo()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f080ce7

    .line 387
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 389
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0708da

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_2

    :cond_4
    const v0, 0x7f080ce6

    .line 394
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 396
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_1
    move v5, v2

    move v2, v1

    move v1, v5

    :goto_2
    if-eqz v0, :cond_5

    .line 417
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mChargeTypeLogo:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mChargeTypeLogo:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 419
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 420
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 421
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mChargeTypeLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mChargeTypeLogo:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 423
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mChargeTypeLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->startLogoAlphaFadeinAnimation()V

    goto :goto_3

    .line 426
    :cond_5
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mChargeTypeLogo:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public createLevelAndLogoFadeAnimation(Z)Landroid/animation/ValueAnimator;
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v0, 0xc8

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 480
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    .line 481
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 483
    :cond_1
    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    .line 484
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 486
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$3;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$3;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 493
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$4;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$4;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 520
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 126
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 127
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mScreenCallBack:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 128
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mKeyguardShowingCallBack:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    const-string p0, "Keyguard"

    const-string v0, "ChargingLevelAndLogoViewRealme"

    const-string v1, "onAttachedToWindow"

    .line 129
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 177
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 178
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 179
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mScreenCallBack:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 180
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mKeyguardShowingCallBack:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    const-string p0, "Keyguard"

    const-string v0, "ChargingLevelAndLogoViewRealme"

    const-string v1, "onDetachedFromWindow"

    .line 181
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 90
    new-instance v0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$1;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWorkHandler:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;

    .line 91
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    const v0, 0x7f0a00f5

    .line 92
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    const v0, 0x7f0a00f4

    .line 93
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    const v0, 0x7f0a015a

    .line 94
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mChargeTypeLogo:Landroid/widget/ImageView;

    const v0, 0x7f0a00f9

    .line 95
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryLevelPercent:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    .line 97
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->layoutView()V

    .line 98
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->updateLevelAndLogoColor()V

    return-void
.end method

.method public onLocaleChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 190
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevel:I

    if-ltz v0, :cond_0

    .line 191
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->updateBatteryLevelView(I)V

    .line 193
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->checkCustomizeLocale(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->updateLevelAndLogoColor()V

    return-void
.end method

.method public onWiredChargingAnimChanged()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->updateLogoResource()V

    .line 117
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->isShowBatteryDecimalLevelView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->isKeyguardShowingAndScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->startCalculateBatteryRate()V

    .line 119
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->layoutView()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 104
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startCalculateBatteryRate()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->setLevelAndLogoView(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V

    .line 446
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevel:I

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->setLevelFromBroadcast(I)V

    .line 447
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->startCalculateBatteryRate()V

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mDecimalLevelIsShowing:Z

    return-void
.end method

.method public startLevelAndLogoFadeinAnimation()V
    .locals 2

    .line 452
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mFadeinAnimating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 453
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->createLevelAndLogoFadeAnimation(Z)Landroid/animation/ValueAnimator;

    .line 454
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 455
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mFadeinAnimating:Z

    :cond_0
    return-void
.end method

.method public startLevelAndLogoFadeoutAnimation()V
    .locals 4

    const/4 v0, 0x0

    .line 460
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->createLevelAndLogoFadeAnimation(Z)Landroid/animation/ValueAnimator;

    .line 461
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 462
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->stopCalculateBatteryRate(Z)V

    const-string v1, "Keyguard"

    const-string v2, "ChargingLevelAndLogoViewRealme"

    const-string v3, "anim stop so stopCalculateBatteryRate"

    .line 463
    invoke-static {v1, v2, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isSupportDartDecimal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mDecimalLevelIsShowing:Z

    .line 466
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWorkHandler:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;->removeMessages(I)V

    .line 467
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mWorkHandler:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

    :cond_1
    return-void
.end method

.method public startLogoAlphaFadeinAnimation()V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mChargeTypeLogo:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

    .line 526
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 527
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateBatteryLevelView(I)V
    .locals 3

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBatteryLevelView level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard"

    const-string v2, "ChargingLevelAndLogoViewRealme"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iput p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mLevel:I

    .line 346
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->isShowBatteryDecimalLevelView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mDecimalLevelIsShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "%d"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 356
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateBatteryLevelView(III)V
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x64

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_2

    .line 367
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    .line 369
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "%d"

    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 374
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v1

    invoke-static {v3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 375
    iget-object p3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object p3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->mDot:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
