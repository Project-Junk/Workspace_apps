.class public Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;
.super Ljava/lang/Object;
.source "MobileSignalExpController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileSignalExpController"

.field private static sInstance:Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;


# instance fields
.field private mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

.field private mContext:Landroid/content/Context;

.field private final mHasCHVolteMccMncs:[Ljava/lang/String;

.field private mMccMncMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mShow4Dot5GRegionOrOperators:[Ljava/lang/String;

.field private final mShowLteInstead4GMccMncs:[Ljava/lang/String;

.field private final mShowLteInstead4GRegionOrOperators:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "26006"

    const-string v2, "26007"

    const-string v3, "26098"

    const-string v4, "22288"

    const-string v5, "22299"

    const-string v6, "26201"

    .line 32
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mShowLteInstead4GMccMncs:[Ljava/lang/String;

    const-string v1, "PL"

    .line 36
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mShowLteInstead4GRegionOrOperators:[Ljava/lang/String;

    const-string v2, "22801"

    const-string v3, "20416"

    const-string v4, "20420"

    const-string v5, "23420"

    const-string v6, "20408"

    const-string v7, "20402"

    const-string v8, "20404"

    const-string v9, "21403"

    const-string v10, "21405"

    const-string v11, "21407"

    const-string v12, "23410"

    const-string v13, "26203"

    const-string v14, "26207"

    const-string v15, "20801"

    .line 39
    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mHasCHVolteMccMncs:[Ljava/lang/String;

    const-string v1, "TR"

    const-string v2, "TELCEL"

    .line 49
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mShow4Dot5GRegionOrOperators:[Ljava/lang/String;

    .line 59
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mMccMncMap:Landroid/util/SparseArray;

    move-object/from16 v1, p1

    .line 61
    iput-object v1, v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mContext:Landroid/content/Context;

    .line 62
    iget-object v1, v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;
    .locals 1

    .line 66
    sget-object v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->sInstance:Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    invoke-direct {v0, p0}, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->sInstance:Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    .line 69
    :cond_0
    sget-object p0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->sInstance:Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    return-object p0
.end method


# virtual methods
.method public hasRegisteredOnCHVolteNet(Landroid/telephony/ServiceState;I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {v1, p2}, Landroid/telephony/ColorOSTelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasRegisteredOnCHVolteNet---voiceMccMncStr = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataMccMncStr = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Statusbar"

    const-string v2, "MobileSignalExpController"

    invoke-static {v1, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mHasCHVolteMccMncs:[Ljava/lang/String;

    array-length p2, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_5

    aget-object v3, p0, v2

    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public isDisplay4Dot5GNet()Z
    .locals 5

    .line 84
    iget-object p0, p0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mShow4Dot5GRegionOrOperators:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 85
    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getCurRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public isShow4Dot5GInstead4G()Z
    .locals 1

    .line 94
    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getCurRegion()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isShowLTEInstead4G(I)Z
    .locals 7

    .line 125
    iget-object v0, p0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mShowLteInstead4GMccMncs:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 127
    iget-object v6, p0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mMccMncMap:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShowLTEInstead4G slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MccMnc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mMccMncMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statusbar"

    const-string v0, "MobileSignalExpController"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    :cond_1
    iget-object p0, p0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mShowLteInstead4GRegionOrOperators:[Ljava/lang/String;

    array-length p1, p0

    move v0, v2

    :goto_1
    if-ge v0, p1, :cond_4

    aget-object v1, p0, v0

    .line 135
    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 136
    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getCurRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v4

    :cond_4
    return v2
.end method

.method public setMccMnc(ILandroid/telephony/SubscriptionInfo;)V
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 76
    :cond_0
    iget-object p2, p0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    invoke-virtual {p2, p1}, Landroid/telephony/ColorOSTelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMccMnc slotId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " MccMnc: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Statusbar"

    const-string v2, "MobileSignalExpController"

    invoke-static {v1, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->mMccMncMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
