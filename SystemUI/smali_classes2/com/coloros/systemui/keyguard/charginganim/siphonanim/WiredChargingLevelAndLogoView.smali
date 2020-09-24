.class public Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;
.super Landroid/widget/LinearLayout;
.source "WiredChargingLevelAndLogoView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final ALITA_LETTER_SPACEING:F = -0.085f

.field private static final FADE_ANIM_DURATION:I = 0xc8

.field private static final LETTER_SPACEING:F = -0.045f

.field private static final POWER_VALUE_100:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WiredChargingLevelAndLogoView"


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

.field private mDot:Ljava/lang/String;

.field private mFadeinAnimating:Z

.field private mLevel:I

.field private mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

.field private mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

.field private mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

.field private mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 26

    move-object/from16 v0, p0

    .line 73
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

    .line 48
    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mCustomizeDotLocales:[Ljava/lang/String;

    const-string v2, "ar"

    const-string v3, "as"

    const-string v4, "bn"

    const-string v5, "fa"

    const-string v6, "mr"

    const-string v7, "ne"

    const-string v8, "my"

    .line 52
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mCustomizePercentOffset:[Ljava/lang/String;

    const-string v1, "ar"

    const-string v2, "fa"

    const-string v3, "ks"

    .line 53
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mCustomizePercentLocales:[Ljava/lang/String;

    const-string v1, "ug"

    const-string v2, "ur"

    const-string v3, "iw"

    .line 54
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mCustomizeLevelRTLLocales:[Ljava/lang/String;

    const/4 v1, -0x1

    .line 65
    iput v1, v0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevel:I

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mFadeinAnimating:Z

    return p1
.end method

.method static synthetic access$102(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private checkCustomizeLocale(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 132
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

    const-string v2, "WiredChargingLevelAndLogoView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 139
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mCustomizePercentLocales:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 140
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mCustomizeLevelRTLLocales:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    move v5, v3

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v5, v1, v3

    .line 146
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 151
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mCustomizePercentOffset:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    move v6, v3

    :goto_4
    if-ge v3, v2, :cond_6

    aget-object v6, v1, v3

    .line 152
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

    .line 159
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mCustomizeDotLocales:[Ljava/lang/String;

    array-length v1, p1

    move v2, v0

    move v3, v2

    :goto_6
    if-ge v2, v1, :cond_9

    aget-object v3, p1, v2

    .line 160
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

    .line 166
    :goto_8
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mDot:Ljava/lang/String;

    const p1, 0x7f0a00f7

    .line 168
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    if-ne p3, p2, :cond_b

    if-eqz v5, :cond_b

    .line 170
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    goto :goto_9

    .line 172
    :cond_b
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    :goto_9
    if-eqz v4, :cond_c

    const p1, 0x7f110401

    goto :goto_a

    :cond_c
    const p1, 0x7f110402

    .line 177
    :goto_a
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iput-boolean v6, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mCustomSmallItemOffset:Z

    .line 180
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->layoutView()V

    return-void
.end method

.method private layoutView()V
    .locals 12

    .line 184
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    .line 193
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 194
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    .line 195
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 196
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "OPPOSANS_Number_Regular.ttf"

    const v6, -0x42c7ae14    # -0.045f

    if-nez v3, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0708d8

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 199
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0708d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const v8, 0x7f0708d5

    .line 201
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    const v9, 0x7f0708d4

    .line 203
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 207
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f07076a

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 210
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070769

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_0
    move v0, v4

    goto/16 :goto_1

    .line 215
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportGundamAnimation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0708b3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 219
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0708b4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const v5, 0x7f0708b0

    .line 221
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    const v5, 0x7f0708b2

    .line 223
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v9, 0x7f0708af

    .line 225
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v9, 0x7f0708b1

    .line 227
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 229
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mCustomSmallItemOffset:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f0708ae

    .line 230
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

    .line 232
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0708aa

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 234
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0708ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const v6, -0x4251eb85    # -0.085f

    const v8, 0x7f0708a7

    .line 237
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    const v9, 0x7f0708a6

    .line 240
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 242
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v0, v8

    .line 247
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-static {v9, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 249
    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can\'t find the typeface "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "Keyguard"

    const-string v10, "WiredChargingLevelAndLogoView"

    invoke-static {v9, v10, v5}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 252
    iget-object v9, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 253
    iget-object v9, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    iget-object v9, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4
    if-eqz v3, :cond_6

    .line 257
    iget-object v5, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 258
    iget-boolean v9, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mCustomSmallItemOffset:Z

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 259
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    const/4 v3, 0x1

    if-eqz v7, :cond_7

    .line 262
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryLevelPercent:Landroid/widget/TextView;

    int-to-float v5, v7

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    if-eqz v8, :cond_8

    .line 265
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    int-to-float v5, v8

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_8
    if-eqz v0, :cond_9

    .line 268
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v4, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 270
    :cond_9
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 271
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 272
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    :cond_a
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 275
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateLevelAndLogoColor()V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 355
    new-array v2, v2, [I

    const v3, 0x7f0405d2

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    .line 357
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 358
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 359
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mChargeTypeLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method private updateLogoResource()V
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f080470

    .line 321
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0708a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 323
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0708a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVoocChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080ce7

    .line 327
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0708db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 329
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0708da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isVoocChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f080ce8

    .line 333
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0708dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 335
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0708dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v0

    move v3, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 339
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mChargeTypeLogo:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mChargeTypeLogo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 341
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 342
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 343
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mChargeTypeLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mChargeTypeLogo:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 345
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mChargeTypeLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 346
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->startLogoAlphaFadeinAnimation()V

    goto :goto_1

    .line 348
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mChargeTypeLogo:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public createLevelAndLogoFadeAnimation(Z)Landroid/animation/ValueAnimator;
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v0, 0xc8

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 398
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    .line 399
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 401
    :cond_1
    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    .line 402
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$1;-><init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 411
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$2;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$2;-><init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 438
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

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
    .locals 1

    .line 109
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 110
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 116
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a00f5

    .line 79
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    const v0, 0x7f0a00f4

    .line 80
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    const v0, 0x7f0a015a

    .line 81
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mChargeTypeLogo:Landroid/widget/ImageView;

    const v0, 0x7f0a00f9

    .line 82
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryLevelPercent:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    .line 84
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->layoutView()V

    .line 85
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->updateLevelAndLogoColor()V

    return-void
.end method

.method public onLocaleChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 125
    iget v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevel:I

    if-ltz v0, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->updateBatteryLevelView(I)V

    .line 128
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->checkCustomizeLocale(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->updateLevelAndLogoColor()V

    return-void
.end method

.method public onWiredChargingAnimChanged()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->updateLogoResource()V

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    .line 100
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVoocChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->startCalculateBatteryRate()V

    .line 102
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->layoutView()V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 91
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startCalculateBatteryRate()V
    .locals 2

    .line 367
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    .line 368
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->setLevelAndLogoView(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;)V

    .line 369
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    iget v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevel:I

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->setLevelFromBroadcast(I)V

    .line 370
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->startCalculateBatteryRate()V

    return-void
.end method

.method public startLevelAndLogoFadeinAnimation()V
    .locals 2

    .line 374
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mFadeinAnimating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 375
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->createLevelAndLogoFadeAnimation(Z)Landroid/animation/ValueAnimator;

    .line 376
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 377
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mFadeinAnimating:Z

    :cond_0
    return-void
.end method

.method public startLevelAndLogoFadeoutAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->createLevelAndLogoFadeAnimation(Z)Landroid/animation/ValueAnimator;

    .line 383
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelAndLogoAlphaFadeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 384
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevelToDecimalHelper:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->stopCalculateBatteryRate()V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

    :cond_1
    return-void
.end method

.method public startLogoAlphaFadeinAnimation()V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mChargeTypeLogo:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

    .line 444
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 445
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLogoAlphaFadeinAnimation:Landroid/animation/ObjectAnimator;

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

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBatteryLevelView level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard"

    const-string v2, "WiredChargingLevelAndLogoView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iput p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mLevel:I

    .line 281
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
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

    .line 291
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateBatteryLevelView(III)V
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x64

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_2

    .line 302
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    .line 304
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
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

    .line 308
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 309
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v1

    invoke-static {v3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 310
    iget-object p3, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryIntegerLevelView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object p3, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mBatteryDecimalLevelView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->mDot:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
