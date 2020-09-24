.class public Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;
.super Ljava/lang/Object;
.source "SimStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;
    }
.end annotation


# static fields
.field private static final AU_OPERATOR_TELSTRA:Ljava/lang/String; = "TELSTRA"

.field private static final AU_OPERATOR_TELSTRA_POSTPAID:Ljava/lang/String; = "TELSTRA_POSTPAID"

.field private static final AU_OPERATOR_TELSTRA_PREPAID:Ljava/lang/String; = "TELSTRA_PREPAID"

.field public static final DEFAULT_PIN_REMAINS:I = 0x3

.field public static final DEFAULT_PUK_REMAINS:I = 0xa

.field private static final DEFAULT_SIM_SUBSCRIPTION:Ljava/lang/String; = "persist.radio.default_sim"

.field private static final MTK_GEMINI_FEATURE:Ljava/lang/String; = "mtk.gemini.support"

.field private static final OPPO_OPERATOR:Ljava/lang/String; = "ro.oppo.operator"

.field private static final OPPO_PIN_RETRY_REMAINS_SIM_0:Ljava/lang/String; = "gsm.sim.retry.pin1"

.field private static final OPPO_PIN_RETRY_REMAINS_SIM_1:Ljava/lang/String; = "gsm.sim.retry.pin1.2"

.field private static final OPPO_PUK_RETRY_REMAINS_SIM_0:Ljava/lang/String; = "gsm.sim.retry.puk1"

.field private static final OPPO_PUK_RETRY_REMAINS_SIM_1:Ljava/lang/String; = "gsm.sim.retry.puk1.2"

.field private static final PLATFORM_QCOM_STRING:Ljava/lang/String; = "oppo.hw.manufacturer.qualcomm"

.field private static final SIM_SLOT_ID_1:I = 0x0

.field private static final SIM_SLOT_ID_2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimStateHelper"

.field private static sDefaultSubScription:I

.field private static volatile sInstance:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

.field private static sIsMultiSimEnable:Z

.field private static sIsPukUnlockEnable:Z

.field private static sPhoneCount:I

.field private static sSupportPinPukRemains:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasServiceSim1:Z

.field private mHasServiceSim2:Z

.field private mIsAuTelstra:Z

.field private mSimDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 82
    sput p1, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sPhoneCount:I

    const/4 p1, 0x0

    .line 83
    sput p1, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sDefaultSubScription:I

    .line 84
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mSimDatas:Ljava/util/HashMap;

    .line 85
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->loadMSimInfo()V

    return-void
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .line 242
    sget v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sDefaultSubScription:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;
    .locals 2

    .line 69
    sget-object v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sInstance:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sInstance:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sInstance:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    .line 74
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 76
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sInstance:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    return-object p0
.end method

.method public static getPhoneCount()I
    .locals 1

    .line 234
    sget v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sPhoneCount:I

    return v0
.end method

.method private hasService(Landroid/telephony/ServiceState;)Z
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    .line 102
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVoiceRegState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getDataRegState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isEmergencyOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimStateHelper"

    .line 103
    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    return p0

    :cond_2
    return v1

    .line 113
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 114
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 115
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-eq p1, v3, :cond_4

    return v1

    :cond_4
    return p0
.end method

.method public static isMultiSimEnable()Z
    .locals 1

    .line 238
    sget-boolean v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sIsMultiSimEnable:Z

    return v0
.end method

.method public static isPukUnlockEnable()Z
    .locals 1

    .line 276
    sget-boolean v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sIsPukUnlockEnable:Z

    return v0
.end method

.method private loadMSimInfo()V
    .locals 8

    .line 203
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.hw.manufacturer.qualcomm"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SimStateHelper"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    sput v4, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sPhoneCount:I

    .line 208
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sIsMultiSimEnable:Z

    goto :goto_1

    :cond_0
    const-string v0, "loadMSimInfo(), get TelephonyManagerService null."

    .line 210
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "mtk.gemini.support"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sIsMultiSimEnable:Z

    .line 216
    sget-boolean v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sIsMultiSimEnable:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    sput v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sPhoneCount:I

    const-string v0, "persist.radio.default_sim"

    .line 217
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sDefaultSubScription:I

    :goto_1
    const-string v0, ""

    const-string v4, "ro.oppo.operator"

    .line 219
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TELSTRA"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sSupportPinPukRemains:Z

    .line 220
    iget-object v5, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f050017

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sIsPukUnlockEnable:Z

    .line 221
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "TELSTRA_PREPAID"

    .line 223
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "TELSTRA_POSTPAID"

    .line 224
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mIsAuTelstra:Z

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadMSimInfo(), phoneCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sPhoneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMultiSimEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sIsMultiSimEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", defaultSubScription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sDefaultSubScription:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportPinPukRemains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sSupportPinPukRemains:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sIsPukUnlockEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sIsPukUnlockEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAuTelstra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mIsAuTelstra:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static supportShowPinPukRemains()Z
    .locals 1

    .line 171
    sget-boolean v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sSupportPinPukRemains:Z

    return v0
.end method


# virtual methods
.method public getIsAuTelstra()Z
    .locals 0

    .line 344
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mIsAuTelstra:Z

    return p0
.end method

.method public getSimPinLockedIds()[I
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 246
    :goto_0
    sget v2, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sPhoneCount:I

    if-ge v1, v2, :cond_2

    .line 247
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    const-string v3, "SimStateHelper"

    if-eqz v2, :cond_0

    .line 248
    array-length v4, v2

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimPinLockedIds(), slotId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", subId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    aget v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_1

    const/4 p0, 0x2

    .line 251
    new-array p0, p0, [I

    aput v1, p0, v0

    aget v0, v2, v0

    aput v0, p0, v5

    return-object p0

    .line 254
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimPinLockedIds(), getSubId null, slotId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimPinRemains(I)I
    .locals 5

    const-string p0, "getSimPinRemains(), slotID="

    const-string v0, "SimStateHelper"

    const/4 v1, 0x3

    if-nez p1, :cond_0

    :try_start_0
    const-string v2, "gsm.sim.retry.pin1"

    goto :goto_0

    :cond_0
    const-string v2, "gsm.sim.retry.pin1.2"

    .line 179
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", simPinRetry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", e="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method public getSimPukLockedIds()[I
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 261
    :goto_0
    sget v2, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->sPhoneCount:I

    if-ge v1, v2, :cond_2

    .line 262
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    const-string v3, "SimStateHelper"

    if-eqz v2, :cond_0

    .line 263
    array-length v4, v2

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimPukLockedIds(), slotId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", subId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    aget v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_1

    const/4 p0, 0x2

    .line 266
    new-array p0, p0, [I

    aput v1, p0, v0

    aget v0, v2, v0

    aput v0, p0, v5

    return-object p0

    .line 269
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimPukLockedIds(), getSubId null, slotId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimPukRemains(I)I
    .locals 5

    const-string p0, "getSimPukRemains(), slotID="

    const-string v0, "SimStateHelper"

    const/16 v1, 0xa

    if-nez p1, :cond_0

    :try_start_0
    const-string v2, "gsm.sim.retry.puk1"

    goto :goto_0

    :cond_0
    const-string v2, "gsm.sim.retry.puk1.2"

    .line 193
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", simPukRetry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", e="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p0

    .line 283
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p0
.end method

.method public handleServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .locals 1

    if-nez p1, :cond_0

    .line 90
    invoke-direct {p0, p2}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->hasService(Landroid/telephony/ServiceState;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mHasServiceSim1:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 92
    invoke-direct {p0, p2}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->hasService(Landroid/telephony/ServiceState;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mHasServiceSim2:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public handleSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3

    .line 290
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;

    .line 293
    iget v2, v1, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSlotId:I

    if-ne v2, p2, :cond_0

    .line 294
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, v1, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;

    if-nez v0, :cond_2

    .line 302
    new-instance v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;-><init>(Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 303
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 305
    :cond_2
    iput p1, v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSubId:I

    .line 306
    iput p2, v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSlotId:I

    .line 307
    iput-object p3, v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_1
    return-void
.end method

.method public hasService()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mHasServiceSim1:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mHasServiceSim2:Z

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

.method public isAirPlaneMode()Z
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isAnySimInVoWifiState()Z
    .locals 3

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isVoWifiState(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isVoWifiState(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method public isEmergencyOnly(Landroid/telephony/ServiceState;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isVoWifiState(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isVoWifiState(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public isSimPinSecure()Z
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mSimDatas:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;

    .line 352
    iget-object v2, v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_2

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public isVoWifiState(I)Z
    .locals 2

    .line 154
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 155
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->isVoWifiState(I)Z

    move-result p0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSimVoWifi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimStateHelper"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public refreshSimState(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;

    if-eqz v0, :cond_0

    .line 313
    iget-object v1, v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 318
    new-instance v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;-><init>(Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 319
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 321
    :cond_1
    iput-object p3, v0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 323
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "refreshSimState(), "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimStateHelper"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showNoNetwork()Z
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->hasService()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isVoWifiState(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isVoWifiState(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method
