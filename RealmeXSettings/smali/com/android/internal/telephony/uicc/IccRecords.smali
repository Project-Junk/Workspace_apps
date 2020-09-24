.class public abstract Lcom/android/internal/telephony/uicc/IccRecords;
.super Landroid/os/Handler;
.source "IccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;
    }
.end annotation


# static fields
.field public static final CALL_FORWARDING_STATUS_DISABLED:I = 0x0

.field public static final CALL_FORWARDING_STATUS_ENABLED:I = 0x1

.field public static final CALL_FORWARDING_STATUS_UNKNOWN:I = -0x1

.field protected static final DBG:Z = true

.field public static final DEFAULT_VOICE_MESSAGE_COUNT:I = -0x2

.field private static final EVENT_AKA_AUTHENTICATE_DONE:I = 0x5a

.field protected static final EVENT_APP_READY:I = 0x1

.field public static final EVENT_CFI:I = 0x1

.field public static final EVENT_GET_ICC_RECORD_DONE:I = 0x64

.field protected static final EVENT_GET_SMS_RECORD_SIZE_DONE:I = 0x1c

.field public static final EVENT_MWI:I = 0x0

.field public static final EVENT_REFRESH:I = 0x1f

.field public static final EVENT_SPN:I = 0x2

.field protected static final HANDLER_ACTION_BASE:I = 0x12e500

.field protected static final HANDLER_ACTION_NONE:I = 0x12e500

.field protected static final HANDLER_ACTION_SEND_RESPONSE:I = 0x12e501

.field protected static final LOCKED_RECORDS_REQ_REASON_LOCKED:I = 0x1

.field protected static final LOCKED_RECORDS_REQ_REASON_NETWORK_LOCKED:I = 0x2

.field protected static final LOCKED_RECORDS_REQ_REASON_NONE:I = 0x0

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

.field public static final SPN_RULE_SHOW_PLMN:I = 0x2

.field public static final SPN_RULE_SHOW_SPN:I = 0x1

.field protected static final UNINITIALIZED:I = -0x1

.field protected static final UNKNOWN:I = 0x0

.field public static final UNKNOWN_VOICE_MESSAGE_COUNT:I = -0x1

.field protected static final VDBG:Z = false

.field protected static sNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mEhplmns:[Ljava/lang/String;

.field protected mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mFplmns:[Ljava/lang/String;

.field protected mFullIccId:Ljava/lang/String;

.field protected mGid1:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mGid2:Ljava/lang/String;

.field protected mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

.field protected mIccId:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mImsi:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mImsiReadyRegistrants:Landroid/os/RegistrantList;

.field protected mIsVoiceMailFixed:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLock:Ljava/lang/Object;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected mLockedRecordsReqReason:I

.field protected mMailboxIndex:I

.field protected mMncLength:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mMsisdn:Ljava/lang/String;

.field protected mMsisdnTag:Ljava/lang/String;

.field protected mNetworkLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

.field protected mNewMsisdn:Ljava/lang/String;

.field protected mNewMsisdnTag:Ljava/lang/String;

.field protected mNewSmsRegistrants:Landroid/os/RegistrantList;

.field protected mNewVoiceMailNum:Ljava/lang/String;

.field protected mNewVoiceMailTag:Ljava/lang/String;

.field protected mOplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

.field protected mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected final mPendingResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mPlmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

.field protected mPnnHomeName:Ljava/lang/String;

.field protected mPrefLang:Ljava/lang/String;

.field protected mRecordsEventsRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected mRecordsOverrideRegistrants:Landroid/os/RegistrantList;

.field protected mRecordsRequested:Z

.field protected mRecordsToLoad:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mSmsCountOnIcc:I

.field private mSpn:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mSpnUpdatedRegistrants:Landroid/os/RegistrantList;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mVoiceMailNum:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mVoiceMailTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 152

    const-string v0, "302370"

    const-string v1, "302720"

    const-string v2, "310260"

    const-string v3, "405025"

    const-string v4, "405026"

    const-string v5, "405027"

    const-string v6, "405028"

    const-string v7, "405029"

    const-string v8, "405030"

    const-string v9, "405031"

    const-string v10, "405032"

    const-string v11, "405033"

    const-string v12, "405034"

    const-string v13, "405035"

    const-string v14, "405036"

    const-string v15, "405037"

    const-string v16, "405038"

    const-string v17, "405039"

    const-string v18, "405040"

    const-string v19, "405041"

    const-string v20, "405042"

    const-string v21, "405043"

    const-string v22, "405044"

    const-string v23, "405045"

    const-string v24, "405046"

    const-string v25, "405047"

    const-string v26, "405750"

    const-string v27, "405751"

    const-string v28, "405752"

    const-string v29, "405753"

    const-string v30, "405754"

    const-string v31, "405755"

    const-string v32, "405756"

    const-string v33, "405799"

    const-string v34, "405800"

    const-string v35, "405801"

    const-string v36, "405802"

    const-string v37, "405803"

    const-string v38, "405804"

    const-string v39, "405805"

    const-string v40, "405806"

    const-string v41, "405807"

    const-string v42, "405808"

    const-string v43, "405809"

    const-string v44, "405810"

    const-string v45, "405811"

    const-string v46, "405812"

    const-string v47, "405813"

    const-string v48, "405814"

    const-string v49, "405815"

    const-string v50, "405816"

    const-string v51, "405817"

    const-string v52, "405818"

    const-string v53, "405819"

    const-string v54, "405820"

    const-string v55, "405821"

    const-string v56, "405822"

    const-string v57, "405823"

    const-string v58, "405824"

    const-string v59, "405825"

    const-string v60, "405826"

    const-string v61, "405827"

    const-string v62, "405828"

    const-string v63, "405829"

    const-string v64, "405830"

    const-string v65, "405831"

    const-string v66, "405832"

    const-string v67, "405833"

    const-string v68, "405834"

    const-string v69, "405835"

    const-string v70, "405836"

    const-string v71, "405837"

    const-string v72, "405838"

    const-string v73, "405839"

    const-string v74, "405840"

    const-string v75, "405841"

    const-string v76, "405842"

    const-string v77, "405843"

    const-string v78, "405844"

    const-string v79, "405845"

    const-string v80, "405846"

    const-string v81, "405847"

    const-string v82, "405848"

    const-string v83, "405849"

    const-string v84, "405850"

    const-string v85, "405851"

    const-string v86, "405852"

    const-string v87, "405853"

    const-string v88, "405854"

    const-string v89, "405855"

    const-string v90, "405856"

    const-string v91, "405857"

    const-string v92, "405858"

    const-string v93, "405859"

    const-string v94, "405860"

    const-string v95, "405861"

    const-string v96, "405862"

    const-string v97, "405863"

    const-string v98, "405864"

    const-string v99, "405865"

    const-string v100, "405866"

    const-string v101, "405867"

    const-string v102, "405868"

    const-string v103, "405869"

    const-string v104, "405870"

    const-string v105, "405871"

    const-string v106, "405872"

    const-string v107, "405873"

    const-string v108, "405874"

    const-string v109, "405875"

    const-string v110, "405876"

    const-string v111, "405877"

    const-string v112, "405878"

    const-string v113, "405879"

    const-string v114, "405880"

    const-string v115, "405881"

    const-string v116, "405882"

    const-string v117, "405883"

    const-string v118, "405884"

    const-string v119, "405885"

    const-string v120, "405886"

    const-string v121, "405908"

    const-string v122, "405909"

    const-string v123, "405910"

    const-string v124, "405911"

    const-string v125, "405912"

    const-string v126, "405913"

    const-string v127, "405914"

    const-string v128, "405915"

    const-string v129, "405916"

    const-string v130, "405917"

    const-string v131, "405918"

    const-string v132, "405919"

    const-string v133, "405920"

    const-string v134, "405921"

    const-string v135, "405922"

    const-string v136, "405923"

    const-string v137, "405924"

    const-string v138, "405925"

    const-string v139, "405926"

    const-string v140, "405927"

    const-string v141, "405928"

    const-string v142, "405929"

    const-string v143, "405930"

    const-string v144, "405931"

    const-string v145, "405932"

    const-string v146, "502142"

    const-string v147, "502143"

    const-string v148, "502145"

    const-string v149, "502146"

    const-string v150, "502147"

    const-string v151, "502148"

    .line 52
    filled-new-array/range {v0 .. v151}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccRecords;->sNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3

    .line 252
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 91
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 92
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 93
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    .line 94
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    .line 96
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    .line 97
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    .line 98
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpnUpdatedRegistrants:Landroid/os/RegistrantList;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsOverrideRegistrants:Landroid/os/RegistrantList;

    .line 116
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 117
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdn:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdnTag:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    .line 132
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    const/4 v2, -0x1

    .line 139
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    .line 141
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    .line 146
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    .line 163
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingResponses:Ljava/util/HashMap;

    .line 253
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    .line 254
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 255
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 256
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 257
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 260
    new-instance p1, Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-direct {p1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    .line 261
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x1f

    invoke-interface {p1, p0, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method protected static findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 881
    array-length v4, p0

    if-ge v3, v4, :cond_3

    .line 882
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, p0, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move v5, v1

    .line 883
    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_2

    .line 884
    aget-object v6, p1, v5

    if-eqz v6, :cond_1

    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v4, :cond_1

    aget-object v6, p1, v5

    .line 885
    invoke-virtual {v6, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 282
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 284
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 287
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 288
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 289
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 290
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 284
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1095
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "IccRecords: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mDestroyed="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mCi="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mFh="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mParentApp="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " recordsLoadedRegistrants: size="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p3}, Landroid/os/RegistrantList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    .line 1101
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    const-string v1, "]="

    if-ge p3, v0, :cond_0

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  recordsLoadedRegistrants["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 1103
    invoke-virtual {v1, p3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1102
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1105
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mLockedRecordsLoadedRegistrants: size="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 1106
    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1105
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1107
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    const-string v2, "  mLockedRecordsLoadedRegistrants["

    if-ge p3, v0, :cond_1

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 1109
    invoke-virtual {v2, p3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 1111
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mNetworkLockedRecordsLoadedRegistrants: size="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 1112
    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1111
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1113
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 1115
    invoke-virtual {v3, p3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1114
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 1117
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mImsiReadyRegistrants: size="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1118
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_3

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  mImsiReadyRegistrants["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    .line 1120
    invoke-virtual {v2, p3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1119
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 1122
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mRecordsEventsRegistrants: size="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1123
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  mRecordsEventsRegistrants["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    .line 1125
    invoke-virtual {v2, p3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1124
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 1127
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mNewSmsRegistrants: size="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1128
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_5

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  mNewSmsRegistrants["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    .line 1130
    invoke-virtual {v2, p3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1129
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 1132
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mNetworkSelectionModeAutomaticRegistrants: size="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    .line 1133
    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1132
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1134
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_6

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  mNetworkSelectionModeAutomaticRegistrants["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    .line 1136
    invoke-virtual {v2, p3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 1138
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mRecordsRequested="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1139
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mLockedRecordsReqReason="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1140
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mRecordsToLoad="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1141
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mRdnCache="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {p3}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1144
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, " iccid="

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1145
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mMsisdn="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mMsisdnTag="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mVoiceMailNum="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1148
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mVoiceMailTag="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mNewVoiceMailNum="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mNewVoiceMailTag="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mIsVoiceMailFixed="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mImsi="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_7
    const-string p1, "null"

    :goto_7
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1152
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1154
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1155
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mFakeImsi="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIMSI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mMncLength="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1158
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mMailboxIndex="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mSpn="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1160
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1161
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mFakeSpn="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeSpn()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    :cond_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    return-object v0
.end method

.method public abstract getDisplayRule(Landroid/telephony/ServiceState;)I
.end method

.method public getFullIccId()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeGid1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeGid1()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid1:Ljava/lang/String;

    return-object v0
.end method

.method public getGid2()Ljava/lang/String;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeGid2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeGid2()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid2:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIMSI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIMSI()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIccid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIccid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "getIccSimChallengeResponse:"

    .line 1047
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1050
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1051
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1052
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 1055
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5a

    .line 1056
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1054
    invoke-interface {v2, p1, p2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1058
    :try_start_2
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1069
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1076
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    if-nez p1, :cond_0

    const-string p1, "getIccSimChallengeResponse: No authentication response"

    .line 1077
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string p1, "getIccSimChallengeResponse: return auth_rsp"

    .line 1081
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1083
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    :try_start_4
    const-string p1, "getIccSimChallengeResponse: Fail, interrupted while trying to request Icc Sim Auth"

    .line 1060
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 1062
    monitor-exit v1

    return-object v0

    :cond_1
    const-string p1, "getIccSimChallengeResponse: Fail, ci or parentApp is null"

    .line 1065
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 1067
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    .line 1069
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    const-string p1, "getIccSimChallengeResponse: Fail while trying to request Icc Sim Auth"

    .line 1071
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLockedRecordsLoaded()Z
    .locals 2

    .line 760
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getNAI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNetworkLockedRecordsLoaded()Z
    .locals 2

    .line 765
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPnnHomeName()Ljava/lang/String;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    .line 636
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakePnnHomeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakePnnHomeName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPnnHomeName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordsLoaded()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 756
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeSpn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeSpn()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    .line 675
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_3

    .line 677
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 679
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 681
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getServiceProviderName: override, providerName="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 684
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getServiceProviderName: no brandOverride, providerName="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getServiceProviderName: card is null, providerName="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getServiceProviderName: mParentApp is null, providerName="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getSimLanguage()Ljava/lang/String;
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsCapacityOnIcc()I
    .locals 2

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSmsCapacityOnIcc: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1091
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceCallForwardingFlag()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getVoiceMessageCount()I
.end method

.method protected abstract handleFileUpdate(I)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 774
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 848
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 777
    :cond_0
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 778
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;->getEfName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 781
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Record Load Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_1
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;->onRecordLoaded(Landroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "Exception parsing SIM record: "

    .line 788
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    throw p1

    .line 806
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    .line 807
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    const-string v0, "EVENT_AKA_AUTHENTICATE_DONE"

    .line 808
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 809
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception ICC SIM AKA: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 813
    :cond_3
    :try_start_2
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 814
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ICC SIM AKA: auth_rsp = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->auth_rsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 816
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to parse ICC SIM AKA contents: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 819
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_3
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 821
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 796
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    const-string v0, "Card REFRESH occurred: "

    .line 797
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 798
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_5

    .line 799
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    return-void

    .line 801
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Icc refresh Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    return-void

    .line 825
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 827
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in EVENT_GET_SMS_RECORD_SIZE_DONE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    return-void

    .line 832
    :cond_7
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v0, 0x2

    .line 837
    :try_start_4
    aget v1, p1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EVENT_GET_SMS_RECORD_SIZE_DONE Size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " total "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ArrayIndexOutOfBoundsException in EVENT_GET_SMS_RECORD_SIZE_DONE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 842
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "handleRefresh received without input"

    .line 900
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    return-void

    .line 904
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 905
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 910
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eqz v0, :cond_2

    const-string p1, "handleRefresh with unknown operation"

    .line 917
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "handleRefresh with SIM_FILE_UPDATED"

    .line 912
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 913
    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleFileUpdate(I)V

    return-void
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract log(Ljava/lang/String;)V
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected abstract onAllRecordsLoaded()V
.end method

.method public abstract onReady()V
.end method

.method protected abstract onRecordLoaded()V
.end method

.method public abstract onRefresh(Z[I)V
.end method

.method public registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 435
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 439
    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public registerForLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 392
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 393
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getLockedRecordsLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 396
    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public registerForNetworkLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 415
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 416
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 418
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNetworkLockedRecordsLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 419
    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 490
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 491
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 479
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 480
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 464
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 465
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    const/4 p1, 0x0

    .line 469
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 470
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 356
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 359
    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public registerForRecordsOverride(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 377
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 380
    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public registerForSpnUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 451
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 452
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpnUpdatedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 454
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 455
    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public retrievePendingResponseMessage(Ljava/lang/Integer;)Landroid/os/Message;
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingResponses:Ljava/util/HashMap;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingResponses:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 323
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->override(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3, p7}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 269
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 3

    .line 520
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Invalid IMSI padding digits received."

    .line 522
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 525
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 527
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v1, "[0-9]+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Invalid non-numeric IMSI digits received."

    .line 528
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 529
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 535
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v1, 0x6

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0xf

    if-le p1, v2, :cond_4

    .line 536
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "invalid IMSI "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 537
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 540
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IMSI: mMncLength="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 542
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_5

    .line 543
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IMSI: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 547
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->updateOperatorPlmn()V

    .line 549
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string p1, "setMsisdn() should not be invoked on base IccRecords"

    .line 646
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 648
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v0, 0x6a

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    .line 649
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object p2

    iput-object p2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 650
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected setServiceProviderName(Ljava/lang/String;)V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpnUpdatedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 698
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected setSimLanguage([B[B)V
    .locals 3

    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    .line 862
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 864
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse EF-LI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 867
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 869
    :try_start_1
    invoke-static {p2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 871
    :catch_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unable to parse EF-PL: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1030
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[key, value]="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    return-void
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(II)V
.end method

.method public storePendingResponseMessage(Landroid/os/Message;)I
    .locals 4

    .line 309
    sget-object v0, Lcom/android/internal/telephony/uicc/IccRecords;->sNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingResponses:Ljava/util/HashMap;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingResponses:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDestroyed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mFh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mParentApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " recordsToLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " adnCache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " recordsRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " lockedRecordsReqReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " iccid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mFakeIccid="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIccid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " msisdnTag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " voiceMailNum="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    const/4 v4, 0x0

    .line 219
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " voiceMailTag="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    .line 221
    invoke-static {v4, v0}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " newVoiceMailTag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isVoiceMailFixed="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mImsi="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " mFakeImsi="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mncLength="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mailboxIndex="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " spn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " mFakeSpn="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeSpn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterForImsiReady(Landroid/os/Handler;)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForLockedRecordsLoaded(Landroid/os/Handler;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNetworkLockedRecordsLoaded(Landroid/os/Handler;)V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNewSms(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRecordsEvents(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRecordsOverride(Landroid/os/Handler;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSpnUpdate(Landroid/os/Handler;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpnUpdatedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method protected updateOperatorPlmn()V
    .locals 8

    .line 554
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 558
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    if-lt v1, v4, :cond_2

    .line 559
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 560
    sget-object v4, Lcom/android/internal/telephony/uicc/IccRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 561
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 562
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "IMSI: setting1 mMncLength="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 570
    :cond_2
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    if-nez v1, :cond_3

    .line 572
    :try_start_0
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 573
    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "setting2 mMncLength="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 576
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Corrupt IMSI! setting3 mMncLength="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 580
    :cond_3
    :goto_2
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    if-eqz v1, :cond_4

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    .line 581
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/2addr v4, v2

    if-lt v1, v4, :cond_4

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update mccmnc="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
