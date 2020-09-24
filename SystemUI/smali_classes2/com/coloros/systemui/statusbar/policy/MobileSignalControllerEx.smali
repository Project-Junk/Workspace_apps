.class public Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;
.super Ljava/lang/Object;
.source "MobileSignalControllerEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileSignalControllerEx"

.field private static sInstance:Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

.field private static sTelecom:Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;


# instance fields
.field private mCardTypeFromTint:[I

.field private mContext:Landroid/content/Context;

.field private mDataActivityState:[I

.field private mDataConnected:[Z

.field private mDataNetType:[I

.field private mIsFiveG:[Z

.field private mIsInCall:[Z

.field private mLastDataNetType:[I

.field private mNetworkControllerImpEx:Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

.field private mNoVolteIcon:I

.field private mShouldShowVolte:[Z

.field private mShouldShowVowifi:[Z

.field private mShowVolteIcon:Z

.field private mVolteContenDescription:Ljava/lang/String;

.field private mVolteIcon:I

.field private mVowifiContenDescription:Ljava/lang/String;

.field private mVowifiIcon:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 46
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataActivityState:[I

    .line 47
    new-array v1, v0, [Z

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataConnected:[Z

    .line 48
    new-array v1, v0, [Z

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mIsFiveG:[Z

    .line 49
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    .line 50
    new-array v1, v0, [Z

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mIsInCall:[Z

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteIcon:I

    .line 52
    iput v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiIcon:I

    .line 53
    iput v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mNoVolteIcon:I

    const-string v2, ""

    .line 54
    iput-object v2, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteContenDescription:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiContenDescription:Ljava/lang/String;

    .line 57
    new-array v2, v0, [Z

    fill-array-data v2, :array_5

    iput-object v2, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVolte:[Z

    .line 58
    new-array v2, v0, [Z

    fill-array-data v2, :array_6

    iput-object v2, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVowifi:[Z

    .line 59
    new-array v2, v0, [I

    fill-array-data v2, :array_7

    iput-object v2, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mCardTypeFromTint:[I

    .line 60
    iput-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShowVolteIcon:Z

    .line 64
    new-array v0, v0, [I

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mLastDataNetType:[I

    .line 75
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->initTelCom()V

    .line 77
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShowVolteIcon:Z

    .line 78
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-class v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mNetworkControllerImpEx:Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;
    .locals 1

    .line 68
    sget-object v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->sInstance:Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->sInstance:Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 71
    :cond_0
    sget-object p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->sInstance:Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    return-object p0
.end method

.method private initTelCom()V
    .locals 0

    .line 82
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCuSignalViewLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 83
    new-instance p0, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;-><init>()V

    sput-object p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->sTelecom:Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;

    goto :goto_0

    .line 85
    :cond_0
    new-instance p0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;-><init>()V

    sput-object p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->sTelecom:Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;

    :goto_0
    return-void
.end method

.method private shouldShowVolte(ILandroid/telephony/ServiceState;I)Z
    .locals 1

    .line 93
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    invoke-virtual {p0, p2, p3}, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->hasRegisteredOnCHVolteNet(Landroid/telephony/ServiceState;I)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    return p2

    :cond_0
    const/16 p0, 0xd

    if-eq p1, p0, :cond_2

    const/16 p0, 0x12

    if-eq p1, p0, :cond_2

    const/16 p0, 0x8b

    if-eq p1, p0, :cond_2

    const/16 p0, 0x13

    if-eq p1, p0, :cond_2

    const/16 p0, 0x64

    if-eq p1, p0, :cond_2

    const/16 p0, 0x14

    if-eq p1, p0, :cond_2

    const/16 p0, 0x15

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return p2

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private updateNoVolteIcon(IZ)V
    .locals 3

    .line 222
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->getMainCard()I

    move-result v0

    .line 223
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCtHdSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mCardTypeFromTint:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVolte:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 225
    invoke-static {}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getNoHdIcon()I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mNoVolteIcon:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 227
    iput v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mNoVolteIcon:I

    .line 229
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNoVolteIcon:slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isVolteSwitchOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",mCardType = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mCardTypeFromTint:[I

    aget p1, p2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mNoVolte = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mNoVolteIcon:I

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    .line 232
    invoke-static {p1, p0}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getResourceName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",MainCard = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statusbar"

    const-string p2, "MobileSignalControllerEx"

    .line 229
    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateVolteIcon(Z)V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVolte:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    .line 193
    invoke-static {p1}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getVolteIcon(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteIcon:I

    .line 194
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    const v0, 0x7f1100ec

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteContenDescription:Ljava/lang/String;

    goto :goto_1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVolte:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 197
    invoke-static {v3}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getVolteIcon(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteIcon:I

    .line 198
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    const v0, 0x7f1100ed

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteContenDescription:Ljava/lang/String;

    goto :goto_1

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVolte:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 200
    invoke-static {p1}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getVolteIcon(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteIcon:I

    .line 201
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    const v0, 0x7f1100ee

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteContenDescription:Ljava/lang/String;

    goto :goto_1

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVolte:[Z

    aget-boolean v0, p1, v1

    if-nez v0, :cond_4

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_3

    goto :goto_0

    .line 207
    :cond_3
    iput v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteIcon:I

    const-string p1, ""

    .line 208
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteContenDescription:Ljava/lang/String;

    goto :goto_1

    .line 204
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getVolteIcon(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteIcon:I

    .line 205
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    const v0, 0x7f1100ef

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteContenDescription:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private updateVowifiIcon(Z)V
    .locals 5

    .line 267
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVowifi:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    const v3, 0x7f110100

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    .line 268
    invoke-static {p1}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getVowifiIcon(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiIcon:I

    .line 269
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiContenDescription:Ljava/lang/String;

    goto :goto_1

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVowifi:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 271
    invoke-static {v4}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getVowifiIcon(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiIcon:I

    .line 272
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiContenDescription:Ljava/lang/String;

    goto :goto_1

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVowifi:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 274
    invoke-static {p1}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getVowifiIcon(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiIcon:I

    .line 275
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiContenDescription:Ljava/lang/String;

    goto :goto_1

    .line 276
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVowifi:[Z

    aget-boolean v0, p1, v1

    if-nez v0, :cond_4

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_3

    goto :goto_0

    .line 280
    :cond_3
    iput v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiIcon:I

    const-string p1, ""

    .line 281
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiContenDescription:Ljava/lang/String;

    goto :goto_1

    .line 277
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getVowifiIcon(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiIcon:I

    .line 278
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiContenDescription:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public getDataActivityIcon(I)I
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataConnected:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->sTelecom:Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataActivityState:[I

    aget v2, v2, p1

    .line 307
    invoke-virtual {v0, v1, p1, v2}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getDataActivityDirection(Landroid/content/Context;II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 308
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",dataActivityIcon = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    .line 310
    invoke-static {v0, p0}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getResourceName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statusbar"

    const-string v1, "MobileSignalControllerEx"

    .line 308
    invoke-static {p1, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getDataTypeIcon(IIZ)I
    .locals 3

    .line 328
    sget-object v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->sTelecom:Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;

    invoke-virtual {v0, p2}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getOppoDataType(I)I

    move-result p2

    const/16 v0, 0x9

    const/4 v1, 0x7

    if-ne p2, v1, :cond_2

    .line 330
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p2

    const-class v2, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    invoke-virtual {p2, v2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    invoke-virtual {p2}, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->isShow4Dot5GInstead4G()Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_0
    move p2, v0

    goto :goto_1

    .line 331
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p2

    const-class v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    invoke-virtual {p2, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    invoke-virtual {p2, p1}, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->isShowLTEInstead4G(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0xa

    goto :goto_1

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    if-ne p2, v1, :cond_4

    .line 334
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p2

    const-class v2, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    invoke-virtual {p2, v2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    invoke-virtual {p2}, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->isDisplay4Dot5GNet()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 335
    :cond_3
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p2

    const-class v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    invoke-virtual {p2, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    invoke-virtual {p2, p1}, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->isShowLTEInstead4G(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0xb

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    .line 339
    sget-object p3, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->sTelecom:Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p0, p1, p2}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getDataTypeIcon(Landroid/content/Context;II)I

    move-result p0

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public getMobileStrengthIconVisibility(IZ)Z
    .locals 6

    .line 238
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    .line 239
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->getSimForbiddenStatus()[Z

    move-result-object p0

    .line 240
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    .line 241
    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->getSimInsertedStatus()[Z

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 244
    aget-boolean v4, v0, v2

    if-eqz v4, :cond_2

    aget-boolean v4, v0, v3

    if-eqz v4, :cond_2

    .line 245
    aget-boolean v4, p0, v2

    if-eqz v4, :cond_0

    aget-boolean v4, p0, v3

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    move v1, v3

    goto :goto_0

    .line 251
    :cond_0
    aget-boolean v4, p0, p1

    if-eqz v4, :cond_2

    :cond_1
    move v1, v2

    .line 257
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMobileStrengthIconVisibility :slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " SimForbin["

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean p1, p0, v2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean p0, p0, v3

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "] SimInserted["

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean p0, v0, v2

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean p0, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "] visible = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isAirplane = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statusbar"

    const-string p2, "MobileSignalControllerEx"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getNoVolteIcon()I
    .locals 0

    .line 302
    iget p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mNoVolteIcon:I

    return p0
.end method

.method public getSignalStrengthIcon(IIZ)I
    .locals 0

    if-nez p3, :cond_0

    .line 316
    sget-object p2, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->sTelecom:Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getNoServiceIcon(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 318
    :cond_0
    sget-object p3, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->sTelecom:Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p0, p1, p2}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getSignalStrength(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public getVolteContenDescription()Ljava/lang/String;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteContenDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getVolteIcon()I
    .locals 0

    .line 286
    iget p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteIcon:I

    return p0
.end method

.method public getVowifiContenDescription()Ljava/lang/String;
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiContenDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getVowifiIcon()I
    .locals 0

    .line 298
    iget p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiIcon:I

    return p0
.end method

.method public isDataTypeChanged(II)Z
    .locals 1

    .line 436
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mLastDataNetType:[I

    aget v0, p0, p1

    if-eq v0, p2, :cond_0

    .line 437
    aput p2, p0, p1

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFiveG()Z
    .locals 3

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->isFiveG(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->isFiveG(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method public isFiveG(I)Z
    .locals 2

    .line 514
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    aget v0, p0, p1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    aget v0, p0, p1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    aget p0, p0, p1

    const/16 p1, 0x15

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isVoWifiState(I)Z
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVowifi:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public isVolteOrVowifiStatusChange(IZZI)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p4, :cond_0

    .line 169
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVowifi:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_1

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_0
    if-ne p4, v0, :cond_1

    .line 173
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVolte:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_1

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public resetVolteStatus()V
    .locals 2

    .line 187
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVolte:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    .line 188
    aput-boolean v0, p0, v1

    return-void
.end method

.method public setIsFiveG(IZ)V
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mIsFiveG:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public updateDataActivityState(II)V
    .locals 3

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDataActivityState:slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",data,dataState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "MobileSignalControllerEx"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataActivityState:[I

    aput p2, p0, p1

    return-void
.end method

.method public updateDataConnected(IZ)V
    .locals 3

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDataConnected:slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",data,dataConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "MobileSignalControllerEx"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataConnected:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public updateDataType(IILandroid/telephony/ServiceState;I)I
    .locals 5

    if-nez p3, :cond_0

    return p2

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    aput p2, v0, p1

    .line 366
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mCardTypeFromTint:[I

    aput p4, v1, p1

    .line 368
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mIsInCall:[Z

    aget-boolean v1, v1, p1

    const/16 v2, 0x12

    if-eqz v1, :cond_2

    .line 369
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    aput v1, v0, p1

    .line 370
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    aget v1, v0, p1

    if-eqz v1, :cond_1

    aget v0, v0, p1

    if-ne v0, v2, :cond_4

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    aput v1, v0, p1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    if-ne p2, v2, :cond_4

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    aput v1, v0, p1

    .line 382
    :cond_4
    :goto_0
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 385
    :cond_5
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    const/16 v2, 0x64

    aput v2, v1, p1

    .line 392
    :cond_6
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    aget v2, v1, p1

    const/16 v3, 0x13

    const/16 v4, 0xd

    if-eq v2, v4, :cond_7

    aget v1, v1, p1

    if-ne v1, v3, :cond_9

    :cond_7
    if-eqz p3, :cond_8

    .line 394
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 395
    iget-object p3, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    aput v3, p3, p1

    goto :goto_1

    .line 397
    :cond_8
    iget-object p3, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    aput v4, p3, p1

    .line 405
    :cond_9
    :goto_1
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCmccVolteIcon()Z

    move-result p3

    if-nez p3, :cond_a

    sget-object p3, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->sTelecom:Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;

    const/4 p3, 0x1

    if-ne p4, p3, :cond_a

    iget-object p3, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    aget p3, p3, p1

    if-ne p3, v4, :cond_a

    .line 408
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCaSupport()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 409
    iget-object p3, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    aput v3, p3, p1

    .line 412
    :cond_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDataType : slotId = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mIsInCall = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mIsInCall:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",dataType = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",nrState = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",mDataNetType = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    aget p2, p2, p1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",carType = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Statusbar"

    const-string p4, "MobileSignalControllerEx"

    invoke-static {p3, p4, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mDataNetType:[I

    aget p0, p0, p1

    return p0
.end method

.method public updateDataTypeByCallState(IILandroid/telephony/ServiceState;I)I
    .locals 3

    .line 350
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mIsInCall:[Z

    const/4 v1, 0x0

    aput-boolean v1, p2, p1

    goto :goto_1

    .line 353
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mIsInCall:[Z

    aput-boolean v1, p2, p1

    .line 357
    :goto_1
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->updateDataType(IILandroid/telephony/ServiceState;I)I

    move-result p0

    return p0
.end method

.method public updateFiveGSignalStrength(ILandroid/telephony/SignalStrength;Z)I
    .locals 0

    .line 447
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isPlatformMtk()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 448
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p3, :cond_0

    .line 449
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result p0

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateSignalStrength(ILandroid/telephony/ServiceState;Landroid/telephony/SignalStrength;Landroid/telephony/SubscriptionInfo;Z)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    if-eqz p4, :cond_0

    .line 466
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v1

    const-class v2, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    invoke-virtual {v1, p1, p4}, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->setMccMnc(ILandroid/telephony/SubscriptionInfo;)V

    .line 468
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mCardTypeFromTint:[I

    invoke-virtual {p4}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result p4

    aput p4, v1, p1

    .line 469
    iget-object p4, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mCardTypeFromTint:[I

    aget v1, v1, p1

    invoke-static {p4, p3, p1, v1}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->getSignalStrengthLevel(Landroid/content/Context;Landroid/telephony/SignalStrength;II)I

    move-result p4

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p4

    .line 476
    :goto_0
    invoke-static {p3}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->getColorOSLevel(Landroid/telephony/SignalStrength;)[I

    move-result-object p3

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 477
    array-length v1, p3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 478
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    .line 479
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p2

    .line 481
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mCardTypeFromTint:[I

    aget v2, v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 485
    aget p4, p3, v0

    :cond_1
    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    .line 491
    aget p2, p3, v3

    goto :goto_1

    :cond_2
    move p2, p4

    .line 495
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mIsInCall:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_3

    .line 497
    aget v0, p3, v0

    goto :goto_2

    :cond_3
    move v0, p2

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    .line 503
    aget v0, p3, v3

    goto :goto_2

    :cond_5
    move v0, p4

    .line 508
    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateSignalStrength:slotId = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",connected = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",currentLevel = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statusbar"

    const-string p2, "MobileSignalControllerEx"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public updateVolteOrVowifiIcon(IZIIZZZILandroid/telephony/ServiceState;Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p10

    .line 114
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v9

    const-class v10, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v9, v10}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v9}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->getSimInsertedStatus()[Z

    move-result-object v9

    .line 115
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v10

    const-class v11, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v10, v11}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v10}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->getSimForbiddenStatus()[Z

    move-result-object v10

    const/4 v11, 0x2

    .line 116
    new-array v11, v11, [Z

    fill-array-data v11, :array_0

    const/4 v12, 0x0

    .line 118
    aget-boolean v13, v9, v12

    const/4 v14, 0x1

    if-eqz v13, :cond_0

    aget-boolean v13, v9, v14

    if-eqz v13, :cond_0

    move v13, v14

    goto :goto_0

    :cond_0
    move v13, v12

    .line 119
    :goto_0
    aget-boolean v15, v9, v12

    if-eqz v15, :cond_1

    aget-boolean v15, v10, v12

    if-nez v15, :cond_1

    move v15, v14

    goto :goto_1

    :cond_1
    move v15, v12

    :goto_1
    aput-boolean v15, v11, v12

    .line 120
    aget-boolean v15, v9, v14

    if-eqz v15, :cond_2

    aget-boolean v15, v10, v14

    if-nez v15, :cond_2

    move v15, v14

    goto :goto_2

    :cond_2
    move v15, v12

    :goto_2
    aput-boolean v15, v11, v14

    if-nez v7, :cond_5

    .line 123
    iget-object v15, v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVowifi:[Z

    aput-boolean v12, v15, v1

    .line 124
    iget-object v15, v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVolte:[Z

    iget-boolean v12, v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShowVolteIcon:Z

    if-eqz v12, :cond_4

    if-eqz v2, :cond_4

    if-eqz v6, :cond_4

    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    move-object/from16 v12, p9

    .line 125
    invoke-direct {v0, v3, v12, v1}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->shouldShowVolte(ILandroid/telephony/ServiceState;I)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v14

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_3
    aput-boolean v12, v15, v1

    goto :goto_5

    :cond_5
    if-ne v14, v7, :cond_8

    .line 127
    iget-object v12, v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVolte:[Z

    const/4 v15, 0x0

    aput-boolean v15, v12, v1

    .line 128
    iget-object v12, v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVowifi:[Z

    if-eqz v8, :cond_7

    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    move v15, v14

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    aput-boolean v15, v12, v1

    goto :goto_5

    .line 130
    :cond_8
    iget-object v12, v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVowifi:[Z

    const/4 v15, 0x0

    aput-boolean v15, v12, v1

    .line 131
    iget-object v12, v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVolte:[Z

    aput-boolean v15, v12, v1

    :goto_5
    const/4 v12, 0x0

    :goto_6
    if-gt v12, v14, :cond_b

    .line 138
    iget-object v15, v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVolte:[Z

    aget-boolean v16, v15, v12

    if-eqz v16, :cond_9

    aget-boolean v16, v11, v12

    if-eqz v16, :cond_9

    move/from16 v16, v14

    goto :goto_7

    :cond_9
    const/16 v16, 0x0

    :goto_7
    aput-boolean v16, v15, v12

    .line 139
    iget-object v15, v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mShouldShowVowifi:[Z

    aget-boolean v16, v15, v12

    if-eqz v16, :cond_a

    aget-boolean v16, v11, v12

    if-eqz v16, :cond_a

    move/from16 v16, v14

    goto :goto_8

    :cond_a
    const/16 v16, 0x0

    :goto_8
    aput-boolean v16, v15, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 142
    :cond_b
    invoke-direct {v0, v13}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->updateVolteIcon(Z)V

    .line 143
    invoke-direct {v0, v13}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->updateVowifiIcon(Z)V

    .line 144
    invoke-direct/range {p0 .. p2}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->updateNoVolteIcon(IZ)V

    .line 146
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateVolteOrVowifiIcon : ,slotId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "simInsert1 = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-boolean v12, v9, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ",simInsert2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v9, v9, v14

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",simForbidden1 = "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v1, v10, v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",simForbidden2 = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v1, v10, v14

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mVolteIcon = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVolteIcon:I

    iget-object v9, v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    .line 152
    invoke-static {v1, v9}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getResourceName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mVowifiIcon = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mVowifiIcon:I

    iget-object v0, v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->mContext:Landroid/content/Context;

    .line 153
    invoke-static {v1, v0}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getResourceName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isVolteSwitchOn = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",voiceNetType = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",dataNetType = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",voiceCapable = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",dataCapable = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",imsRegistered = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",registerTech = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isWfcCallingEnabledbyUser = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "MobileSignalControllerEx"

    .line 146
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
