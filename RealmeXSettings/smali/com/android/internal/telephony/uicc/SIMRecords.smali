.class public Lcom/android/internal/telephony/uicc/SIMRecords;
.super Lcom/android/internal/telephony/uicc/AbstractSIMRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;
    }
.end annotation


# static fields
.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CFIS_ADN_CAPABILITY_ID_OFFSET:I = 0xe

.field private static final CFIS_ADN_EXTENSION_ID_OFFSET:I = 0xf

.field private static final CFIS_BCD_NUMBER_LENGTH_OFFSET:I = 0x2

.field private static final CFIS_TON_NPI_OFFSET:I = 0x3

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field private static final EVENT_APP_LOCKED:I = 0x102

.field private static final EVENT_APP_NETWORK_LOCKED:I = 0x103

.field private static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_EHPLMN_DONE:I = 0x28

.field private static final EVENT_GET_FPLMN_DONE:I = 0x29

.field private static final EVENT_GET_GID1_DONE:I = 0x22

.field private static final EVENT_GET_GID2_DONE:I = 0x24

.field private static final EVENT_GET_HPLMN_W_ACT_DONE:I = 0x27

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field private static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_OPLMN_W_ACT_DONE:I = 0x26

.field private static final EVENT_GET_PLMN_W_ACT_DONE:I = 0x25

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field protected static final LOG_TAG:Ljava/lang/String; = "SIMRecords"

.field private static final SIM_RECORD_EVENT_BASE:I = 0x0

.field private static final SYSTEM_EVENT_BASE:I = 0x100

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final VDBG:Z = false


# instance fields
.field private mCallForwardingStatus:I

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field mEfCPHS_MWI:[B
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mEfCff:[B
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mEfCfis:[B
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mEfLi:[B
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mEfMWIS:[B
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mEfPl:[B
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mSpdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSpnDisplayCondition:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AbstractSIMRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    const/4 p2, 0x1

    .line 79
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 83
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 193
    new-instance p3, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p3, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 195
    new-instance p3, Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-direct {p3}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;-><init>()V

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    const/4 p3, 0x0

    .line 197
    iput-boolean p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 198
    iput p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mLockedRecordsReqReason:I

    .line 201
    iput p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 203
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x15

    invoke-interface {p3, p0, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 207
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p3, p0, p2, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 208
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p3, 0x102

    invoke-virtual {p2, p0, p3, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 209
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p3, 0x103

    invoke-virtual {p2, p0, p3, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 210
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SIMRecords X ctor this="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private dispatchGsmMessage(Landroid/telephony/SmsMessage;)I
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method private getExtFromEf(I)I
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/16 v0, 0x6f4a

    const/16 v1, 0x6f40

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v1, :cond_1

    const/16 v0, 0x6f4e

    :cond_1
    :goto_0
    return v0
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-eqz p1, :cond_2

    .line 1754
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1763
    :cond_0
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_1

    .line 1760
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    return-void

    .line 1767
    :cond_2
    :goto_1
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$uicc$SIMRecords$GetSpnFsmState:[I

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-eq p1, v2, :cond_10

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p1, v4, :cond_b

    const/4 v5, 0x3

    if-eq p1, v5, :cond_7

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    .line 1872
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_8

    :cond_3
    const-string p1, "No SPN loaded in either CHPS or 3GPP"

    if-eqz p2, :cond_6

    .line 1845
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    .line 1846
    iget-object p2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p2, [B

    .line 1848
    array-length v0, p2

    invoke-static {p2, v3, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 1852
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1854
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 1858
    :cond_4
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 1860
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1861
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1862
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    .line 1861
    invoke-virtual {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_3

    .line 1855
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1865
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 1866
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1869
    :goto_3
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    return-void

    :cond_7
    if-eqz p2, :cond_a

    .line 1813
    iget-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_a

    .line 1814
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 1816
    array-length p2, p1

    invoke-static {p1, v3, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 1820
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1822
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_8

    goto :goto_4

    .line 1826
    :cond_8
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 1828
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Load EF_SPN_CPHS: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1829
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1830
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    .line 1829
    invoke-virtual {p2, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 1832
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_5

    .line 1823
    :cond_9
    :goto_4
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_5

    .line 1835
    :cond_a
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1838
    :goto_5
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object p2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne p1, p2, :cond_f

    .line 1839
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 p2, 0x6f18

    .line 1840
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1839
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1841
    iget p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    return-void

    :cond_b
    if-eqz p2, :cond_e

    .line 1778
    iget-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_e

    .line 1779
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 1780
    aget-byte p2, p1, v3

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 1782
    array-length p2, p1

    sub-int/2addr p2, v2

    invoke-static {p1, v2, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1788
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_c

    goto :goto_6

    .line 1791
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Load EF_SPN: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " spnDisplayCondition: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1793
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1794
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    .line 1793
    invoke-virtual {p2, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 1796
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_7

    .line 1789
    :cond_d
    :goto_6
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_7

    .line 1799
    :cond_e
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1802
    :goto_7
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object p2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne p1, p2, :cond_f

    .line 1803
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 p2, 0x6f14

    .line 1804
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1803
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1805
    iget p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    const/4 p1, -0x1

    .line 1809
    iput p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    :cond_f
    :goto_8
    return-void

    .line 1769
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 1771
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 p2, 0x6f46

    .line 1772
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1771
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1773
    iget p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1775
    sget-object p1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    return-void
.end method

.method private handleEfCspData([B)V
    .locals 7

    .line 1993
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    .line 1997
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    mul-int/lit8 v4, v3, 0x2

    .line 1999
    aget-byte v5, p1, v4

    const/16 v6, -0x40

    if-ne v5, v6, :cond_1

    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[CSP] found ValueAddedServicesGroup, value "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr v4, v1

    aget-byte v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2001
    aget-byte p1, p1, v4

    const/16 v0, 0x80

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    .line 2005
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    return-void

    .line 2007
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    const-string p1, "[CSP] Set Automatic Network Selection"

    .line 2010
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2011
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "[CSP] Value Added Service Group (0xC0), not found!"

    .line 2017
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private handleSms([B)V
    .locals 4

    const/4 v0, 0x0

    .line 1331
    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    .line 1332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ENF"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_0
    aget-byte v1, p1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1337
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1341
    new-array v3, v1, [B

    .line 1342
    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p1, "3gpp"

    .line 1343
    invoke-static {v3, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p1

    .line 1345
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    .line 1351
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1354
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1356
    aget-byte v4, v3, v1

    if-eqz v4, :cond_0

    .line 1357
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "status "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ENF"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_0
    aget-byte v4, v3, v1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1363
    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 1367
    new-array v6, v4, [B

    .line 1368
    invoke-static {v3, v5, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v4, "3gpp"

    .line 1369
    invoke-static {v6, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1371
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    .line 1376
    aput-byte v5, v3, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1945
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 1946
    aget-byte v0, v0, v2

    const/16 v3, 0x30

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1701
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 1705
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1706
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1707
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_3
    return v0
.end method

.method private loadCallForwardingRecords()V
    .locals 4

    const/4 v0, 0x1

    .line 1525
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 1526
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6fcb

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1527
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1528
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6f13

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1529
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    return-void
.end method

.method private loadEfLiAndEfPl()V
    .locals 5

    .line 1513
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f05

    new-instance v2, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V

    const/16 v4, 0x64

    .line 1515
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1514
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1516
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1518
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f05

    new-instance v2, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V

    .line 1519
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1518
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1520
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    :cond_0
    return-void
.end method

.method private onLocked(I)V
    .locals 3

    const-string v0, "only fetch EF_LI, EF_PL and EF_ICCID in locked state"

    .line 1502
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x102

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1504
    :goto_0
    iput p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mLockedRecordsReqReason:I

    .line 1506
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    .line 1508
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1509
    iget p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    return-void
.end method

.method private onLockedAllRecordsLoaded()V
    .locals 3

    .line 1429
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSimLanguageFromEF()V

    .line 1430
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlagFromSimRecords()V

    .line 1431
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mLockedRecordsReqReason:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 1433
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mLockedRecordsReqReason:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1434
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNetworkLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 1437
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLockedAllRecordsLoaded: unexpected mLockedRecordsReqReason "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mLockedRecordsReqReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private parseBcdPlmnList([BLjava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1922
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PLMNs, raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1923
    array-length v0, p1

    if-eqz v0, :cond_3

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1927
    :cond_0
    array-length p2, p1

    div-int/lit8 p2, p2, 0x3

    .line 1929
    new-array v0, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_2

    mul-int/lit8 v3, v1, 0x3

    .line 1931
    invoke-static {p1, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdPlmnToString([BI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1933
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1935
    :cond_2
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 1924
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Received invalid "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " PLMN list"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private parseEfSpdi([B)V
    .locals 4

    .line 1883
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1887
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1889
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result p1

    const/16 v1, 0xa3

    if-ne p1, v1, :cond_0

    .line 1890
    new-instance p1, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {p1, v1, v2, v0}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    move-object v0, p1

    .line 1893
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result p1

    const/16 v1, 0x80

    if-ne p1, v1, :cond_1

    .line 1894
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object p1

    goto :goto_1

    .line 1887
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    return-void

    .line 1903
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    :goto_2
    add-int/lit8 v0, v2, 0x2

    .line 1905
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 1907
    invoke-static {p1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdPlmnToString([BI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1910
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_4

    .line 1911
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "EF_SPDI network: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1912
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x3

    goto :goto_2

    :cond_5
    return-void
.end method

.method private setSimLanguageFromEF()V
    .locals 2

    .line 1420
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100e9

    .line 1421
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSimLanguage([B[B)V

    return-void

    :cond_0
    const-string v0, "Not using EF LI/EF PL"

    .line 1424
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private setVoiceCallForwardingFlagFromSimRecords()V
    .locals 4

    .line 1404
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v0, v0, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EF_CFIS: callForwardingEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 1410
    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1411
    :goto_0
    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EF_CFF: callForwardingEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, -0x1

    .line 1414
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EF_CFIS and EF_CFF not valid. callForwardingEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1480
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    .line 1481
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1482
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private useRoamingFromServiceState()Z
    .locals 3

    .line 1681
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 1682
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 1685
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1686
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    .line 1685
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 1684
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "spn_display_rule_use_roaming_from_service_state_bool"

    .line 1687
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private validEfCfis([B)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 460
    aget-byte v1, p1, v0

    if-lez v1, :cond_0

    aget-byte v1, p1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 463
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MSP byte: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not between 1 and 4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    :cond_1
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p1, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 215
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disposing SIMRecords this="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 222
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/AbstractSIMRecords;->dispose()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 2022
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMRecords: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " extends:"

    .line 2023
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AbstractSIMRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2025
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mVmConfig="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mCallForwardingStatus="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mSpnState="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mCphsInfo="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mCspPlmnEnabled="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mEfMWIS[]="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2031
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mEfCPHS_MWI[]="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mEfCff[]="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2033
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mEfCfis[]="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mSpnDisplayCondition="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2035
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mSpdiNetworks[]="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mUsimServiceTable="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mGid1="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2039
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mFakeGid1="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeGid1()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2041
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mGid2="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2042
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2043
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mFakeGid2="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeGid2()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mPnnHomeName="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2047
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mFakePnnHomeName="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakePnnHomeName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mPlmnActRecords[]="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mOplmnActRecords[]="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mHplmnActRecords[]="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mFplmns[]="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFplmns:[Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2053
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mEhplmns[]="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEhplmns:[Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected fetchSimRecords()V
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    .line 1534
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 1536
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchSimRecords "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1538
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 1539
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1541
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x2fe2

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1542
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1546
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v3, 0x6f40

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v4

    const/16 v5, 0xa

    .line 1547
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1546
    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1548
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1551
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fc9

    invoke-virtual {v1, v4, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1552
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1554
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fad

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1555
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1558
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fca

    invoke-virtual {v1, v4, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1559
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1566
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x8

    .line 1568
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f11

    .line 1566
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1569
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1573
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadCallForwardingRecords()V

    const/4 v1, 0x0

    .line 1575
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 1577
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fcd

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1578
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1580
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fc5

    invoke-virtual {v1, v4, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1581
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1583
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f38

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1584
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1586
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x1a

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f16

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1587
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1589
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f15

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1590
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1592
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f3e

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1593
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1595
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x24

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f3f

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1596
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1598
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x25

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f60

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1599
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1601
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x26

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f61

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1602
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1604
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x27

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f62

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1605
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1607
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fd9

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1608
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1610
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x29

    const v4, 0x12e500

    const/4 v5, -0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f7b    # 3.9992E-41f

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1612
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1614
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    .line 1615
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x1c

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v3, 0x6f3c

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 1635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .locals 1

    const-string v0, "finalized"

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getDisplayRule(Landroid/telephony/ServiceState;)I
    .locals 5

    .line 1656
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1657
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1660
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    goto :goto_2

    .line 1663
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->useRoamingFromServiceState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 1664
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1666
    :goto_0
    iget p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_3

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_2

    .line 1672
    :cond_4
    iget p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    and-int/2addr p1, v3

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    return v3
.end method

.method public getForbiddenPlmns(Landroid/os/Message;)V
    .locals 3

    .line 1491
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->storePendingResponseMessage(Landroid/os/Message;)I

    move-result p1

    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x29

    const v2, 0x12e501

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const/16 v1, 0x6f7b    # 3.9992E-41f

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    return-void
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 603
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "getOperatorNumeric: IMSI == null"

    .line 605
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-object v1

    .line 608
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v2, :cond_1

    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v3, v3, 0x3

    if-lt v2, v3, :cond_2

    const/4 v1, 0x0

    .line 616
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    const-string v0, "getSIMOperatorNumeric: bad mncLength"

    .line 609
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    return-object v0
.end method

.method public getVoiceCallForwardingFlag()I
    .locals 1

    .line 511
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-eqz v0, :cond_3

    .line 482
    aget-byte v0, v0, v2

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v2, v3

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    aget-byte v0, v0, v3

    const/16 v3, 0xff

    and-int/2addr v0, v3

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_2

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v0

    .line 489
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " VoiceMessageCount from SIM MWIS = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 490
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-eqz v0, :cond_6

    .line 492
    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    const/16 v4, 0xa

    if-ne v0, v4, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    move v3, v2

    .line 501
    :cond_5
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " VoiceMessageCount from SIM CPHS = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return v3
.end method

.method protected handleFileUpdate(I)V
    .locals 4

    const/16 v0, 0x6f13

    if-eq p1, v0, :cond_5

    const/16 v0, 0x6f15

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x6f17

    if-eq p1, v0, :cond_3

    const/16 v0, 0x6f3b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6fc7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6fcb

    if-eq p1, v0, :cond_5

    .line 1315
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 1316
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    return-void

    .line 1280
    :cond_0
    iget p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1281
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v1, 0x6fc8

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/4 v3, 0x6

    .line 1282
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1281
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    return-void

    .line 1301
    :cond_1
    iget p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    const-string p1, "SIM Refresh called for EF_MSISDN"

    .line 1302
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1303
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v2

    const/16 v3, 0xa

    .line 1304
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1303
    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    return-void

    :cond_2
    const-string p1, "SIM Refresh called for EF_FDN"

    .line 1296
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1297
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    .line 1298
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    return-void

    .line 1285
    :cond_3
    iget p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1286
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6f4a

    const/16 v3, 0xb

    .line 1287
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1286
    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    return-void

    .line 1290
    :cond_4
    iget p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    const-string p1, "[CSP] SIM Refresh for EF_CSP_CPHS"

    .line 1291
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1292
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x21

    .line 1293
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1292
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    return-void

    :cond_5
    const-string p1, "SIM Refresh called for EF_CFIS or EF_CFF_CPHS"

    .line 1308
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1309
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadCallForwardingRecords()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 632
    iget-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received message "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]  while being destroyed. Ignoring."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 639
    :try_start_0
    iget v5, v2, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eq v5, v4, :cond_2f

    const/16 v6, 0x1e

    if-eq v5, v6, :cond_2d

    const/16 v6, 0x102

    if-eq v5, v6, :cond_2c

    const/16 v6, 0x103

    if-eq v5, v6, :cond_2c

    const/4 v6, 0x6

    const/16 v7, 0x6f4a

    const/16 v8, 0x6f17

    const/16 v9, 0xff

    const/16 v10, 0xb

    const/4 v11, 0x0

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    const-string v6, "Received a PlmnActRecord, raw="

    packed-switch v5, :pswitch_data_4

    .line 1241
    :try_start_1
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AbstractSIMRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_d

    .line 1217
    :pswitch_0
    :try_start_2
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1218
    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    .line 1219
    iget-object v7, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_3

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "Forbidden"

    .line 1223
    invoke-direct {v1, v6, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseBcdPlmnList([BLjava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mFplmns:[Ljava/lang/String;

    .line 1225
    iget v5, v2, Landroid/os/Message;->arg1:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const v6, 0x12e501

    if-ne v5, v6, :cond_31

    .line 1228
    :try_start_3
    iget v2, v2, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->retrievePendingResponseMessage(Ljava/lang/Integer;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1230
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mFplmns:[Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mFplmns:[Ljava/lang/String;

    array-length v5, v5

    .line 1231
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 1230
    invoke-static {v2, v4, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1232
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_d

    :cond_2
    const-string v2, "Failed to retrieve a response message for FPLMN"

    .line 1234
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_d

    .line 1220
    :cond_3
    :goto_0
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed getting Forbidden PLMNs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1205
    :pswitch_1
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1206
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 1207
    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_5

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "Equivalent Home"

    .line 1211
    invoke-direct {v1, v3, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseBcdPlmnList([BLjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEhplmns:[Ljava/lang/String;

    goto/16 :goto_e

    .line 1208
    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed getting Equivalent Home PLMNs: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1190
    :pswitch_2
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1191
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 1193
    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_7

    if-nez v3, :cond_6

    goto :goto_2

    .line 1197
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1198
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 1199
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HplmnActRecord[]="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1194
    :cond_7
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed getting Home PLMN with Access Tech Records: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1174
    :pswitch_3
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1175
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 1177
    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_9

    if-nez v3, :cond_8

    goto :goto_3

    .line 1182
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1183
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mOplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    goto/16 :goto_e

    .line 1178
    :cond_9
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed getting Operator PLMN with Access Tech Records: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1159
    :pswitch_4
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1160
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 1162
    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_b

    if-nez v3, :cond_a

    goto :goto_4

    .line 1166
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1167
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    goto/16 :goto_e

    .line 1163
    :cond_b
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed getting User PLMN with Access Tech Records: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1142
    :pswitch_5
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1143
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 1145
    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_c

    .line 1146
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Exception in get GID2 "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1147
    iput-object v11, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    goto/16 :goto_e

    .line 1151
    :cond_c
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    .line 1153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GID2: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1125
    :pswitch_6
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1126
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 1128
    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_d

    .line 1129
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Exception in get GID1 "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1130
    iput-object v11, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    goto/16 :goto_e

    .line 1134
    :cond_d
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 1136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GID1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1109
    :pswitch_7
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1111
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_e

    .line 1112
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Exception in fetching EF_CSP data "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1116
    :cond_e
    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1118
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "EF_CSP: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1119
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_e

    .line 1094
    :pswitch_8
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1095
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 1097
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_f

    .line 1098
    iput-object v11, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    goto/16 :goto_e

    .line 1100
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "EF_CFIS: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1101
    iput-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    goto/16 :goto_e

    .line 1003
    :pswitch_9
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1005
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_31

    .line 1009
    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iCPHS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_e

    .line 1077
    :pswitch_a
    :try_start_5
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1078
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_10

    .line 1079
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1080
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    goto :goto_5

    .line 1082
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set CPHS MailBox with exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1084
    :goto_5
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_30

    const-string v4, "Callback with CPHS MB successful."

    .line 1085
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1086
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1088
    iget-object v2, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_d

    .line 891
    :pswitch_b
    :try_start_6
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 892
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 894
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_11

    .line 895
    iput-object v11, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    goto/16 :goto_e

    .line 897
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "EF_CFF_CPHS: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 898
    iput-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_e

    .line 979
    :pswitch_c
    :try_start_7
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 980
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_12

    .line 981
    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSms([B)V

    goto/16 :goto_d

    .line 983
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error on GET_SMS with exp "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 964
    :pswitch_d
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 966
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 968
    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_14

    if-nez v4, :cond_13

    goto :goto_6

    :cond_13
    const-string v2, "READ EF_SMS RECORD index="

    .line 972
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 973
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v5, 0x6f3c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x16

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_d

    .line 969
    :cond_14
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error on SMS_ON_SIM with exp "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " index "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1016
    :pswitch_e
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1018
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "EVENT_SET_MBDN_DONE ex:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1019
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_15

    .line 1020
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1021
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 1024
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1025
    new-instance v13, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-direct {v13, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    .line 1035
    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_16

    iget-object v5, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v5, :cond_16

    .line 1036
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iput-object v11, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1037
    iget-object v2, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const-string v2, "Callback with MBDN successful."

    .line 1039
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    move-object v4, v11

    .line 1044
    :cond_16
    new-instance v12, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v12, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v14, 0x6f17

    const/16 v15, 0x6f4a

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v2, 0x19

    .line 1046
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 1045
    invoke-virtual/range {v12 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_d

    .line 1049
    :cond_17
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_30

    .line 1050
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const-string v5, "carrier_config"

    .line 1051
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 1052
    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_19

    if-eqz v4, :cond_19

    .line 1054
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1055
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v6

    .line 1054
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 1053
    invoke-virtual {v4, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_18

    const-string v5, "editable_voicemail_number_bool"

    .line 1056
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1060
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    const-string v6, "Update SIM voice mailbox error"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_7

    .line 1064
    :cond_18
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_7

    .line 1068
    :cond_19
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1071
    :goto_7
    iget-object v2, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_d

    :pswitch_f
    const-string v4, "ENF"

    .line 957
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "marked read: sms "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_d

    .line 948
    :pswitch_10
    :try_start_8
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 949
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_31

    .line 953
    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_e

    .line 989
    :pswitch_11
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 990
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 992
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_31

    .line 996
    new-instance v2, Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;-><init>([B)V

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    .line 997
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SST: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 926
    :pswitch_12
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 927
    iget-object v5, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 929
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_31

    .line 933
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v6, v5

    invoke-direct {v2, v5, v3, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 935
    :goto_8
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 936
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x43

    if-ne v5, v6, :cond_1a

    .line 938
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    array-length v2, v2

    .line 937
    invoke-static {v5, v3, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PNN: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 935
    :cond_1a
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_8

    .line 917
    :pswitch_13
    :try_start_9
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 918
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_30

    const-string/jumbo v4, "update failed. "

    .line 919
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_d

    .line 906
    :pswitch_14
    :try_start_a
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 907
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 909
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_31

    .line 913
    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_e

    .line 884
    :pswitch_15
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 885
    invoke-direct {v1, v3, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_e

    .line 759
    :pswitch_16
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 761
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1b

    const-string v2, "Invalid or missing EF[MSISDN]"

    .line 762
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 766
    :cond_1b
    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 768
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 769
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MSISDN: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "SIMRecords"

    iget-object v5, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 848
    :pswitch_17
    iput v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 850
    :try_start_b
    iget-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 851
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 852
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 854
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v2, :cond_1d

    .line 878
    :cond_1c
    :goto_9
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateOperatorPlmn()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_e

    .line 858
    :cond_1d
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "EF_AD: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 860
    array-length v2, v3

    const/4 v5, 0x3

    if-ge v2, v5, :cond_1e

    const-string v2, "Corrupt AD data on SIM"

    .line 861
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 865
    :cond_1e
    array-length v2, v3

    if-ne v2, v5, :cond_1f

    const-string v2, "MNC length not present in EF_AD"

    .line 866
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 870
    :cond_1f
    aget-byte v2, v3, v5

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-eq v2, v3, :cond_21

    if-ne v2, v5, :cond_20

    goto :goto_a

    :cond_20
    const-string v3, "Received invalid or unset MNC Length="

    .line 874
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 872
    :cond_21
    :goto_a
    iput v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 878
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateOperatorPlmn()V

    throw v2

    .line 814
    :pswitch_18
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 815
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 817
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EF_CPHS_MWI: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 819
    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_22

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE exception = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 827
    :cond_22
    iput-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    goto/16 :goto_e

    .line 793
    :pswitch_19
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 794
    iget-object v5, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 796
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "EF_MWIS : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 798
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_23

    .line 799
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "EVENT_GET_MWIS_DONE exception = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 803
    :cond_23
    aget-byte v2, v5, v3

    and-int/2addr v2, v9

    if-ne v2, v9, :cond_24

    const-string v2, "SIMRecords: Uninitialized record MWIS"

    .line 804
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 808
    :cond_24
    iput-object v5, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_e

    .line 707
    :pswitch_1a
    :try_start_f
    iput-object v11, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 708
    iput-object v11, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 711
    :try_start_10
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 713
    iget-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_26

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invalid or missing EF"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 716
    iget v5, v2, Landroid/os/Message;->what:I

    if-ne v5, v10, :cond_25

    const-string v5, "[MAILBOX]"

    goto :goto_b

    :cond_25
    const-string v5, "[MBDN]"

    .line 717
    :goto_b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 715
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 722
    iget v2, v2, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_31

    .line 726
    iget v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 727
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 729
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 727
    invoke-virtual {v2, v8, v7, v4, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_e

    .line 734
    :cond_26
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 736
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "VM: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 737
    iget v9, v2, Landroid/os/Message;->what:I

    if-ne v9, v10, :cond_27

    const-string v9, " EF[MAILBOX]"

    goto :goto_c

    :cond_27
    const-string v9, " EF[MBDN]"

    .line 738
    :goto_c
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 736
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_28

    iget v2, v2, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_28

    .line 744
    iget v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 745
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 747
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 745
    invoke-virtual {v2, v8, v7, v4, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_e

    .line 752
    :cond_28
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 753
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    goto/16 :goto_e

    .line 666
    :pswitch_1b
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 667
    iget-object v5, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 670
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_29

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "EF_MBI: "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 675
    aget-byte v2, v5, v3

    and-int/2addr v2, v9

    iput v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    .line 678
    iget v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    if-eqz v2, :cond_29

    iget v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    if-eq v2, v9, :cond_29

    const-string v2, "Got valid mailbox number for MBDN"

    .line 679
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    move v3, v4

    .line 685
    :cond_29
    iget v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-eqz v3, :cond_2a

    .line 689
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v3, 0x6fc7

    const/16 v5, 0x6fc8

    iget v7, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    .line 690
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 689
    invoke-virtual {v2, v3, v5, v7, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_e

    .line 694
    :cond_2a
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 696
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 694
    invoke-virtual {v2, v8, v7, v4, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_e

    .line 833
    :pswitch_1c
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 834
    iget-object v5, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 836
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_31

    .line 840
    array-length v2, v5

    invoke-static {v5, v3, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 841
    array-length v2, v5

    invoke-static {v5, v3, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mFullIccId:Ljava/lang/String;

    .line 843
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iccid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_e

    .line 652
    :pswitch_1d
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 654
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2b

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Exception querying IMSI, Exception:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto :goto_e

    .line 659
    :cond_2b
    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setImsi(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_10

    :catch_0
    move-exception v0

    move-object v2, v0

    move v3, v4

    goto :goto_f

    .line 646
    :cond_2c
    :try_start_11
    iget v2, v2, Landroid/os/Message;->what:I

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLocked(I)V

    goto :goto_d

    .line 776
    :cond_2d
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 778
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2e

    .line 779
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 780
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    const-string v4, "Success to update EF[MSISDN]"

    .line 781
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 784
    :cond_2e
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_30

    .line 785
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 786
    iget-object v2, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d

    .line 641
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onReady()V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :cond_30
    :goto_d
    move v4, v3

    :cond_31
    :goto_e
    if-eqz v4, :cond_32

    .line 1249
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    return-void

    :catchall_2
    move-exception v0

    move-object v2, v0

    move v4, v3

    goto :goto_10

    :catch_1
    move-exception v0

    move-object v2, v0

    :goto_f
    :try_start_12
    const-string v4, "Exception parsing SIM record"

    .line 1245
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v3, :cond_32

    .line 1249
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    :cond_32
    return-void

    :goto_10
    if-eqz v4, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    :cond_33
    throw v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1a
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x24
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .line 1976
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1952
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[SIMRecords] "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SIMRecords"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1958
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[SIMRecords] "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SIMRecords"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1967
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[SIMRecords] "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SIMRecords"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1962
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[SIMRecords] "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SIMRecords"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 6

    const-string v0, "record load complete"

    .line 1444
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1446
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSimLanguageFromEF()V

    .line 1447
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlagFromSimRecords()V

    .line 1451
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1452
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1453
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1455
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1456
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    .line 1455
    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "onAllRecordsLoaded empty \'gsm.sim.operator.numeric\' skipping"

    .line 1458
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1461
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 1463
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    const-string v2, "onAllRecordsLoaded set mcc imsi"

    .line 1464
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1465
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1466
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1465
    invoke-virtual {v2, v4, v1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "onAllRecordsLoaded empty imsi skipping setting mcc"

    .line 1468
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1471
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1473
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public onReady()V
    .locals 0

    .line 1498
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .line 1390
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRecordLoaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    return-void

    .line 1395
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getLockedRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getNetworkLockedRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1397
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-gez v0, :cond_2

    const-string v0, "recordsToLoad <0, programmer error suspected"

    .line 1398
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1399
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    :cond_2
    return-void

    .line 1396
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLockedAllRecordsLoaded()V

    return-void
.end method

.method public onRefresh(Z[I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 4

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 232
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 233
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    const/4 v1, -0x1

    .line 234
    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setting0 mMncLength"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 236
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 237
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFullIccId:Ljava/lang/String;

    .line 239
    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 240
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 241
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 242
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 243
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    .line 244
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 245
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    .line 246
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 247
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 248
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 249
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFplmns:[Ljava/lang/String;

    .line 250
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEhplmns:[Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    const-string v1, "SIMRecords: onRadioOffOrNotAvailable set \'gsm.sim.operator.numeric\' to operator=null"

    .line 254
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update icc_operator_numeric="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 264
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mLockedRecordsReqReason:I

    .line 265
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7

    .line 320
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    .line 321
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Set MSISDN: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    const-string v0, "SIMRecords"

    .line 324
    invoke-static {v0, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 326
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 p1, 0x6f40

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v3

    const/16 p1, 0x1e

    .line 329
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/16 v2, 0x6f40

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 328
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 9
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 524
    :cond_0
    iput p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    .line 526
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 529
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result p1

    const/16 v1, 0xe

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    .line 532
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v3, p1, v0

    or-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    goto :goto_0

    .line 534
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xfe

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 537
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "setVoiceCallForwardingFlag: enable="

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mEfCfis="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 538
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 542
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 543
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "EF_CFIS: updating cf number, "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "SIMRecords"

    invoke-static {v3, p3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logv(Ljava/lang/String;)V

    .line 544
    invoke-static {p3, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object p1

    .line 547
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v0, 0x3

    array-length v3, p1

    invoke-static {p1, v2, p3, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v0, 0x2

    array-length p1, p1

    int-to-byte p1, p1

    aput-byte p1, p3, v0

    .line 550
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 p3, -0x1

    aput-byte p3, p1, v1

    .line 551
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/16 v0, 0xf

    aput-byte p3, p1, v0

    .line 554
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x6fcb

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v7, 0x0

    const/16 p1, 0x6fcb

    .line 556
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 554
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 558
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "setVoiceCallForwardingFlag: ignoring enable="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " invalid mEfCfis="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 559
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 558
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 562
    :goto_1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 564
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    aget-byte p2, p2, v2

    and-int/lit16 p2, p2, 0xf0

    or-int/lit8 p2, p2, 0xa

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    goto :goto_2

    .line 567
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    aget-byte p2, p2, v2

    and-int/lit16 p2, p2, 0xf0

    or-int/lit8 p2, p2, 0x5

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    .line 571
    :goto_2
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/16 p3, 0x6f13

    .line 573
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 571
    invoke-virtual {p1, p3, p2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error saving call forwarding flag to SIM. Probably malformed SIM record"

    .line 576
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8

    .line 370
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 371
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/IccVmFixedException;

    const-string v0, "Voicemail number is fixed by operator"

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/uicc/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 373
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 377
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    .line 378
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    .line 380
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 p2, 0xff

    if-eq p1, p2, :cond_1

    .line 384
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v3, 0x6fc7

    const/16 v4, 0x6fc8

    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/4 v6, 0x0

    const/16 p1, 0x14

    .line 386
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 384
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    return-void

    .line 388
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 390
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v3, 0x6f17

    const/16 v4, 0x6f4a

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 p1, 0x19

    .line 392
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 390
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    return-void

    .line 395
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    const-string v0, "Update SIM voice mailbox error"

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 397
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 423
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/16 v1, 0xe

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 427
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xfe

    if-nez p2, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 428
    aput-byte v3, p1, v2

    if-gez p2, :cond_2

    .line 434
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    aput-byte v2, p1, v0

    goto :goto_1

    .line 436
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    int-to-byte v3, p2

    aput-byte v3, p1, v0

    .line 439
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v5, 0x6fca

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v8, 0x0

    const/16 p1, 0x6fca

    .line 441
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 439
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 444
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-eqz p1, :cond_5

    .line 446
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xf0

    if-nez p2, :cond_4

    const/4 p2, 0x5

    goto :goto_2

    :cond_4
    const/16 p2, 0xa

    :goto_2
    or-int/2addr p2, v0

    int-to-byte p2, p2

    .line 447
    aput-byte p2, p1, v2

    .line 448
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/16 v0, 0x6f11

    .line 450
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 448
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error saving voice mail state to SIM. Probably malformed SIM record"

    .line 453
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimRecords: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/AbstractSIMRecords;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mVmConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spnState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCphsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCspPlmnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " efMWIS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " efCPHS_MWI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mEfCff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " getOperatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
