.class public Lcom/android/internal/telephony/CarrierResolver;
.super Landroid/os/Handler;
.source "CarrierResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;
    }
.end annotation


# static fields
.field private static final CARRIER_ID_DB_UPDATE_EVENT:I = 0x4

.field private static final CONTENT_URL_PREFER_APN:Landroid/net/Uri;

.field private static final DBG:Z = true

.field private static final ICC_CHANGED_EVENT:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierResolver"

.field private static final PREFER_APN_UPDATE_EVENT:I = 0x3

.field private static final SIM_LOAD_EVENT:I = 0x1

.field private static final VDBG:Z


# instance fields
.field private mCarrierId:I

.field private final mCarrierIdLocalLog:Landroid/util/LocalLog;

.field private mCarrierMatchingRulesOnMccMnc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;",
            ">;"
        }
    .end annotation
.end field

.field private mCarrierName:Ljava/lang/String;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mMnoCarrierId:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreferApn:Ljava/lang/String;

.field private mSpecificCarrierId:I

.field private mSpecificCarrierName:Ljava/lang/String;

.field private mSpn:Ljava/lang/String;

.field private final mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mTestOverrideApn:Ljava/lang/String;

.field private mTestOverrideCarrierPriviledgeRule:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    const-class v0, Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 59
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    .line 67
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "preferapn"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierResolver;->CONTENT_URL_PREFER_APN:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    .line 75
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    .line 79
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    const-string v0, ""

    .line 91
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    .line 96
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdLocalLog:Landroid/util/LocalLog;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/CarrierResolver$1;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/telephony/CarrierResolver$1;-><init>(Lcom/android/internal/telephony/CarrierResolver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContentObserver:Landroid/database/ContentObserver;

    .line 176
    new-instance v0, Lcom/android/internal/telephony/CarrierResolver$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierResolver$2;-><init>(Lcom/android/internal/telephony/CarrierResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating CarrierResolver["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 116
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 119
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/CarrierResolver;->CONTENT_URL_PREFER_APN:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/internal/telephony/CarrierResolver;->CONTENT_URL_PREFER_APN:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 56
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CarrierResolver;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static equals(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 983
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getCarrierIdFromIdentifier(Landroid/content/Context;Landroid/service/carrier/CarrierIdentifier;)I
    .locals 17

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 855
    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v6

    .line 856
    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v7

    .line 857
    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v4

    .line 858
    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v9

    .line 859
    sget-boolean v0, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v0, :cond_0

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getCarrierIdFromIdentifier] mnnmnc:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " imsi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    .line 864
    invoke-static {v1, v4}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " spn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 868
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v15}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILcom/android/internal/telephony/CarrierResolver$1;)V

    .line 877
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$1000(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    .line 876
    invoke-static {v2, v1}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierMatchingRulesFromMccMnc(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 878
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    .line 879
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->match(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V

    .line 880
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$400(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    if-le v5, v3, :cond_1

    .line 881
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$400(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v2

    .line 882
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$600(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v3

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static getCarrierIdFromMccMnc(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    .line 945
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "mccmnc=? AND gid1 is NULL AND gid2 is NULL AND imsi_prefix_xpattern is NULL AND spn is NULL AND iccid_prefix is NULL AND plmn is NULL AND privilege_access_rule is NULL AND apn is NULL"

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v4, p0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    .line 961
    :try_start_1
    sget-boolean v0, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v0, :cond_0

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getCarrierIdFromMccMnc]- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Records(s) in DB mccmnc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 965
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "carrier_id"

    .line 966
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 971
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1

    :cond_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 975
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[getCarrierIdFromMccMnc]- ex: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getCarrierIdsFromApnQuery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 896
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mccmnc="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "spn"

    .line 898
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\'"

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 899
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND spn=\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "imsi"

    .line 900
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 901
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND imsi_prefix_xpattern=\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "gid1"

    .line 902
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 903
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND gid1=\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "gid2"

    .line 904
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 905
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND gid2=\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p2, "mvno case empty or other invalid values"

    .line 907
    invoke-static {p2}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 910
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 912
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_6

    .line 919
    :try_start_1
    sget-boolean p3, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz p3, :cond_4

    .line 920
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[getCarrierIdsFromApnQuery]- "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Records(s) in DB"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 923
    :cond_4
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "carrier_id"

    .line 924
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    .line 925
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 926
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    if-eqz p0, :cond_5

    .line 932
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p3

    :cond_6
    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 936
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "[getCarrierIdsFromApnQuery]- ex: "

    invoke-virtual {p3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    .line 938
    :cond_7
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    return-object p2
.end method

.method private static getCarrierMatchingRulesFromMccMnc(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "mccmnc=?"

    const/4 p0, 0x1

    new-array v5, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v5, p0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 313
    :try_start_1
    sget-boolean v1, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v1, :cond_0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[loadCarrierMatchingRules]- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Records(s) in DB mccmnc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 317
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 318
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 319
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->makeCarrierMatchingRule(Landroid/database/Cursor;)Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 324
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 328
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[loadCarrierMatchingRules]- ex: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getCarrierNameFromId(I)Ljava/lang/String;
    .locals 7

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "carrier_id=?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 283
    :try_start_1
    sget-boolean v1, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v1, :cond_0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getCarrierNameFromId]- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Records(s) in DB cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 287
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "carrier_name"

    .line 288
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 293
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 297
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[getCarrierNameFromId]- ex: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPreferApn()Ljava/lang/String;
    .locals 8

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideApn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "[getPreferApn]- "

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " test override"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideApn:Ljava/lang/String;

    return-object v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "preferapn/subId/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 341
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "apn"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 339
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 345
    :try_start_0
    sget-boolean v3, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v3, :cond_1

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Records(s) in DB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 348
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 349
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 359
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "[getPreferApn]- exception: "

    .line 356
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_1

    :goto_0
    if-eqz v2, :cond_3

    .line 359
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    if-eqz v2, :cond_5

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSubscriptionMatchingRule()Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;
    .locals 17

    move-object/from16 v0, p0

    .line 688
    iget-object v1, v0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v2, v0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v4

    .line 689
    iget-object v1, v0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v6

    .line 690
    iget-object v1, v0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v7

    .line 691
    iget-object v1, v0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v8

    .line 692
    iget-object v1, v0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    .line 693
    iget-object v1, v0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v9

    .line 694
    iget-object v10, v0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    .line 695
    iget-object v11, v0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    .line 698
    iget-object v1, v0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideCarrierPriviledgeRule:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 699
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v12, v0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideCarrierPriviledgeRule:Ljava/lang/String;

    aput-object v12, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 701
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCertsFromCarrierPrivilegeAccessRules()Ljava/util/List;

    move-result-object v1

    :goto_0
    move-object v12, v1

    .line 704
    sget-boolean v1, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v1, :cond_2

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[matchSubscriptionCarrier] mnnmnc:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " gid1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " gid2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " imsi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    .line 709
    invoke-static {v2, v5}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " iccid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    .line 710
    invoke-static {v2, v6}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " plmn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " spn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " apn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " accessRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_1

    move-object v2, v12

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 714
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 716
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILcom/android/internal/telephony/CarrierResolver$1;)V

    return-object v1
.end method

.method private handleSimAbsent()V
    .locals 7

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    .line 171
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/CarrierResolver;->updateCarrierIdAndName(ILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private handleSimLoaded()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, "mIccRecords is null on SIM_LOAD_EVENT, could not get SPN"

    .line 161
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    .line 163
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->getPreferApn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->loadCarrierMatchingRulesOnMccMnc()V

    return-void
.end method

.method private loadCarrierMatchingRulesOnMccMnc()V
    .locals 8

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "mccmnc=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    .line 254
    :try_start_1
    sget-boolean v2, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v2, :cond_0

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[loadCarrierMatchingRules]- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Records(s) in DB mccmnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver;->makeCarrierMatchingRule(Landroid/database/Cursor;)Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->matchSubscriptionCarrier()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 266
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 270
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[loadCarrierMatchingRules]- ex: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    .line 989
    sget-object v0, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    .line 992
    sget-object v0, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static makeCarrierMatchingRule(Landroid/database/Cursor;)Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "privilege_access_rule"

    .line 454
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 453
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    new-instance v16, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    const-string v2, "mccmnc"

    .line 456
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "imsi_prefix_xpattern"

    .line 457
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "iccid_prefix"

    .line 459
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "gid1"

    .line 461
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "gid2"

    .line 462
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "plmn"

    .line 463
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v2, "spn"

    .line 464
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v2, "apn"

    .line 465
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 466
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    move-object v11, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v2

    :goto_0
    const-string v1, "carrier_id"

    .line 467
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v1, "carrier_name"

    .line 468
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "parent_carrier_id"

    .line 469
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v15}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILcom/android/internal/telephony/CarrierResolver$1;)V

    return-object v16
.end method

.method private matchSubscriptionCarrier()V
    .locals 17

    move-object/from16 v6, p0

    .line 726
    iget-object v0, v6, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[matchSubscriptionCarrier]skip before sim records loaded"

    .line 727
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    return-void

    .line 742
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CarrierResolver;->getSubscriptionMatchingRule()Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    move-result-object v7

    .line 744
    iget-object v0, v6, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move v10, v8

    move-object v1, v9

    move-object v2, v1

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    .line 745
    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->match(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V

    .line 746
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$400(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    if-le v5, v10, :cond_2

    .line 747
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$400(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v1

    move v10, v1

    move-object v1, v4

    move-object v2, v1

    goto :goto_1

    :cond_2
    if-ltz v10, :cond_4

    .line 750
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$400(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    if-ne v5, v10, :cond_4

    .line 753
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$500(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$600(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v11

    if-ne v5, v11, :cond_3

    move-object v1, v4

    goto :goto_1

    .line 755
    :cond_3
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$500(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$600(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v11

    if-ne v5, v11, :cond_4

    move-object v2, v4

    .line 759
    :cond_4
    :goto_1
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$400(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    const/16 v11, 0x100

    if-ne v5, v11, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_5
    if-ne v10, v8, :cond_6

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[matchSubscriptionCarrier - no match] cid: -1 name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    move v1, v8

    move v3, v1

    move v5, v3

    move-object v2, v9

    move-object v4, v2

    goto/16 :goto_3

    :cond_6
    if-ne v1, v2, :cond_7

    .line 772
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$500(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v0

    if-eq v0, v8, :cond_7

    .line 773
    new-instance v2, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    invoke-direct {v2, v1, v9}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;Lcom/android/internal/telephony/CarrierResolver$1;)V

    .line 774
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$500(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$602(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;I)I

    .line 775
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$600(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v0

    invoke-direct {v6, v0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierNameFromId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$802(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;Ljava/lang/String;)Ljava/lang/String;

    .line 777
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "[matchSubscriptionCarrier] specific cid: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$600(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " specific name: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$800(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cid: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$600(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " name: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$800(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 780
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$600(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v0

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$800(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v2

    .line 781
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$600(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v4

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$800(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_8

    .line 782
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$600(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v1

    goto :goto_2

    :cond_8
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$600(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v1

    :goto_2
    move v3, v4

    move-object v4, v5

    move v5, v1

    move v1, v0

    :goto_3
    move-object/from16 v0, p0

    .line 780
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/CarrierResolver;->updateCarrierIdAndName(ILjava/lang/String;ILjava/lang/String;I)V

    and-int/lit8 v0, v10, 0x20

    if-nez v0, :cond_9

    .line 796
    invoke-static {v7}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$900(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v7}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$900(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_4

    :cond_9
    move-object/from16 v16, v9

    :goto_4
    if-eq v10, v8, :cond_a

    if-nez v0, :cond_b

    .line 799
    :cond_a
    invoke-static {v7}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$1000(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v7}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->access$1000(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v9

    :cond_b
    move-object v15, v9

    .line 800
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v11

    iget-object v0, v6, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 801
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierListVersion()I

    move-result v13

    iget v14, v6, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    .line 800
    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeCarrierIdMatchingEvent(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateCarrierIdAndName(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 7

    .line 379
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    const/4 v1, 0x0

    const-string v2, " to:"

    const/4 v3, 0x1

    if-eq p3, v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "[updateSpecificCarrierId] from:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 382
    iput p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v1

    .line 385
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    if-eq p4, v0, :cond_1

    .line 386
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[updateSpecificCarrierName] from:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 388
    iput-object p4, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    move p3, v3

    :cond_1
    const-string p4, "android.telephony.extra.SUBSCRIPTION_ID"

    const-string v0, " name:"

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    .line 392
    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdLocalLog:Landroid/util/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[updateSpecificCarrierIdAndName] cid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 394
    new-instance p3, Landroid/content/Intent;

    const-string v5, "android.telephony.action.SUBSCRIPTION_SPECIFIC_CARRIER_IDENTITY_CHANGED"

    invoke-direct {p3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    iget v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    const-string v6, "android.telephony.extra.SPECIFIC_CARRIER_ID"

    invoke-virtual {p3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    const-string v6, "android.telephony.extra.SPECIFIC_CARRIER_NAME"

    invoke-virtual {p3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {p3, p4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 402
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 403
    iget v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "specific_carrier_id"

    invoke-virtual {p3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    const-string v6, "specific_carrier_id_name"

    invoke-virtual {p3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 406
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-static {v6}, Landroid/provider/Telephony$CarrierId;->getSpecificCarrierIdUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v6

    .line 405
    invoke-virtual {v5, v6, p3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 411
    :cond_2
    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-static {p2, p3, v3}, Lcom/android/internal/telephony/CarrierResolver;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_3

    .line 412
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "[updateCarrierName] from:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 413
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    move v1, v3

    .line 416
    :cond_3
    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    if-eq p1, p2, :cond_4

    .line 417
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[updateCarrierId] from:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 418
    iput p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    move v1, v3

    .line 421
    :cond_4
    iget p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    if-eq p5, p1, :cond_5

    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[updateMnoCarrierId] from:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 423
    iput p5, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    move v1, v3

    :cond_5
    if-eqz v1, :cond_6

    .line 427
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdLocalLog:Landroid/util/LocalLog;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[updateCarrierIdAndName] cid:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " mnoCid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 429
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    const-string p3, "android.telephony.extra.CARRIER_ID"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    const-string p3, "android.telephony.extra.CARRIER_NAME"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 438
    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "carrier_id"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    const-string p3, "carrier_name"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 441
    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    invoke-static {p3}, Landroid/provider/Telephony$CarrierId;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object p3

    .line 440
    invoke-virtual {p2, p3, p1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 446
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 448
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionController;->setCarrierId(II)I

    :cond_7
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 995
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, "mCarrierResolverLocalLogs:"

    .line 996
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 998
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1001
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mCarrierId: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mSpecificCarrierId: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mMnoCarrierId: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mCarrierName: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mSpecificCarrierName: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "carrier_list_version: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierListVersion()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mCarrierMatchingRules on mccmnc: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1009
    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1008
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1011
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    .line 1012
    invoke-virtual {p2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1014
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1016
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mSpn: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mPreferApn: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    return-void
.end method

.method public getCarrierId()I
    .locals 1

    .line 814
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    return v0
.end method

.method public getCarrierListVersion()I
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "get_version"

    .line 807
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 806
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 809
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    .line 810
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    return-object v0
.end method

.method public getMnoCarrierId()I
    .locals 1

    .line 844
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    return v0
.end method

.method public getSpecificCarrierId()I
    .locals 1

    .line 832
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    return v0
.end method

.method public getSpecificCarrierName()Ljava/lang/String;
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid msg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->loadCarrierMatchingRulesOnMccMnc()V

    return-void

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->getPreferApn()Ljava/lang/String;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/CarrierResolver;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updatePreferApn] from:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 215
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    .line 216
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->matchSubscriptionCarrier()V

    return-void

    .line 221
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 222
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 221
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v0, p1, :cond_4

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v0, "Removing stale icc objects."

    .line 225
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsOverride(Landroid/os/Handler;)V

    .line 228
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "new Icc object"

    .line 231
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 233
    invoke-virtual {p1, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsOverride(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 234
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    :cond_4
    :goto_0
    return-void

    .line 206
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->handleSimLoaded()V

    return-void
.end method

.method public resolveSubscriptionCarrierId(Ljava/lang/String;)V
    .locals 4

    .line 138
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[resolveSubscriptionCarrierId] simState: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x79d7dbfb

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x6d207e22

    if-eq v0, v1, :cond_1

    const v1, 0x72b3d739

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ABSENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "CARD_IO_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_2
    const-string v0, "LOADED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_2

    .line 147
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->handleSimLoaded()V

    :goto_2
    return-void

    .line 144
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->handleSimAbsent()V

    return-void
.end method

.method public setTestOverrideApn(Ljava/lang/String;)V
    .locals 2

    .line 366
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[setTestOverrideApn]: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 367
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideApn:Ljava/lang/String;

    return-void
.end method

.method public setTestOverrideCarrierPriviledgeRule(Ljava/lang/String;)V
    .locals 2

    .line 371
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[setTestOverrideCarrierPriviledgeRule]: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 372
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideCarrierPriviledgeRule:Ljava/lang/String;

    return-void
.end method
