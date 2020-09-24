.class public Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
.super Lcom/android/internal/telephony/uicc/UiccCard;
.source "EuiccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;,
        Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;,
        Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;
    }
.end annotation


# static fields
.field private static final APDU_ERROR_SIM_REFRESH:I = 0x6f00

.field private static final CODE_NOTHING_TO_DELETE:I = 0x1

.field private static final CODE_NO_RESULT_AVAILABLE:I = 0x1

.field private static final CODE_OK:I = 0x0

.field private static final CODE_PROFILE_NOT_IN_EXPECTED_STATE:I = 0x2

.field private static final DBG:Z = true

.field private static final DEV_CAP_CDMA_1X:Ljava/lang/String; = "cdma1x"

.field private static final DEV_CAP_CRL:Ljava/lang/String; = "crl"

.field private static final DEV_CAP_EHRPD:Ljava/lang/String; = "ehrpd"

.field private static final DEV_CAP_EUTRAN:Ljava/lang/String; = "eutran"

.field private static final DEV_CAP_GSM:Ljava/lang/String; = "gsm"

.field private static final DEV_CAP_HRPD:Ljava/lang/String; = "hrpd"

.field private static final DEV_CAP_NFC:Ljava/lang/String; = "nfc"

.field private static final DEV_CAP_UTRAN:Ljava/lang/String; = "utran"

.field private static final ICCID_LENGTH:I = 0x14

.field private static final ISD_R_AID:Ljava/lang/String; = "A0000005591010FFFFFFFF8900000100"

.field private static final LOG_TAG:Ljava/lang/String; = "EuiccCard"

.field private static final SGP22_V_2_0:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

.field private static final SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;


# instance fields
.field private final mApduSender:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

.field private volatile mEid:Ljava/lang/String;

.field private mEidReadyRegistrants:Landroid/os/RegistrantList;

.field private mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;-><init>(III)V

    sput-object v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->SGP22_V_2_0:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;-><init>(III)V

    sput-object v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;)V
    .locals 1

    .line 122
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;)V

    .line 124
    new-instance p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    const-string p5, "A0000005591010FFFFFFFF8900000100"

    const/4 v0, 0x0

    invoke-direct {p1, p2, p5, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;-><init>(Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mApduSender:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    .line 126
    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "no eid given in constructor for phone "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loge(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loadEidAndNotifyRegistrants()V

    return-void

    .line 130
    :cond_0
    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    .line 131
    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mCardId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)Landroid/os/RegistrantList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Landroid/os/RegistrantList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mCardId:Ljava/lang/String;

    return-object p1
.end method

.method private static buildCarrierIdentifier(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/service/carrier/CarrierIdentifier;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1233
    new-array v1, v0, [I

    const/16 v2, 0x81

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1234
    new-array v1, v0, [I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 1237
    :goto_0
    new-array v2, v0, [I

    const/16 v4, 0x82

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1238
    new-array v2, v0, [I

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1240
    :cond_1
    new-instance v2, Landroid/service/carrier/CarrierIdentifier;

    const/16 v4, 0x80

    new-array v0, v0, [I

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object p0

    invoke-direct {v2, p0, v1, v3}, Landroid/service/carrier/CarrierIdentifier;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static buildProfile(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;Landroid/service/euicc/EuiccProfileInfo$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1178
    new-array v1, v0, [I

    const/16 v2, 0x90

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1179
    new-array v1, v0, [I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setNickname(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1182
    :cond_0
    new-array v1, v0, [I

    const/16 v2, 0x91

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1183
    new-array v1, v0, [I

    .line 1184
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v1

    .line 1183
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setServiceProviderName(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1187
    :cond_1
    new-array v1, v0, [I

    const/16 v2, 0x92

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1188
    new-array v1, v0, [I

    .line 1189
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v1

    .line 1188
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setProfileName(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1192
    :cond_2
    new-array v1, v0, [I

    const/16 v2, 0xb7

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1193
    new-array v1, v0, [I

    .line 1194
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->buildCarrierIdentifier(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v1

    .line 1193
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setCarrierIdentifier(Landroid/service/carrier/CarrierIdentifier;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1197
    :cond_3
    new-array v1, v0, [I

    const v2, 0x9f70

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1199
    new-array v1, v0, [I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setState(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    goto :goto_0

    .line 1201
    :cond_4
    invoke-virtual {p1, v0}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setState(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1204
    :goto_0
    new-array v1, v0, [I

    const/16 v2, 0x95

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1206
    new-array v1, v0, [I

    .line 1207
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v1

    .line 1206
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setProfileClass(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    .line 1209
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setProfileClass(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1212
    :goto_1
    new-array v1, v0, [I

    const/16 v2, 0x99

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1214
    new-array v1, v0, [I

    .line 1215
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v1

    .line 1214
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setPolicyRules(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1218
    :cond_6
    new-array v1, v0, [I

    const v2, 0xbf76

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1219
    new-array v0, v0, [I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/16 v0, 0xe2

    .line 1220
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object p0

    .line 1221
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->buildUiccAccessRule(Ljava/util/List;)[Landroid/telephony/UiccAccessRule;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1224
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1226
    :cond_7
    invoke-virtual {p1, v0}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setUiccAccessRule(Ljava/util/List;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    :cond_8
    return-void
.end method

.method private static buildUiccAccessRule(Ljava/util/List;)[Landroid/telephony/UiccAccessRule;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;)[",
            "Landroid/telephony/UiccAccessRule;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
        }
    .end annotation

    .line 1246
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1249
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1250
    new-array v2, v0, [Landroid/telephony/UiccAccessRule;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_3

    .line 1252
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/16 v6, 0xe1

    .line 1253
    new-array v7, v3, [I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    const/16 v7, 0xc1

    .line 1254
    new-array v8, v3, [I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v7

    .line 1257
    new-array v8, v3, [I

    const/16 v9, 0xca

    invoke-virtual {v6, v9, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1258
    new-array v8, v3, [I

    invoke-virtual {v6, v9, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v1

    :goto_1
    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    .line 1261
    new-array v11, v10, [I

    const/16 v12, 0xdb

    aput v12, v11, v3

    const/16 v13, 0xe3

    invoke-virtual {v5, v13, v11}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1262
    new-array v8, v10, [I

    aput v12, v8, v3

    invoke-virtual {v5, v13, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v5

    .line 1263
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asRawLong()J

    move-result-wide v8

    .line 1265
    :cond_2
    new-instance v5, Landroid/telephony/UiccAccessRule;

    invoke-direct {v5, v7, v6, v8, v9}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private static createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 1281
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v0

    const v1, 0xbf2f

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 1283
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v0

    const v3, 0xbf37

    if-ne v0, v3, :cond_1

    const v0, 0xbf27

    const/4 v3, 0x1

    .line 1284
    new-array v3, v3, [I

    aput v1, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    goto :goto_0

    .line 1288
    :cond_1
    new-array v0, v2, [I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 1291
    :goto_0
    new-instance v3, Landroid/telephony/euicc/EuiccNotification;

    const/16 v4, 0x80

    new-array v5, v2, [I

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v4

    const/16 v5, 0xc

    new-array v6, v2, [I

    .line 1292
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x81

    new-array v2, v2, [I

    .line 1293
    invoke-virtual {v0, v6, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v0

    .line 1294
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    :goto_1
    invoke-direct {v3, v4, v5, v0, p0}, Landroid/telephony/euicc/EuiccNotification;-><init>(ILjava/lang/String;I[B)V

    return-object v3
.end method

.method public static getDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)[B
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/16 v0, 0x8

    .line 1024
    new-array v0, v0, [B

    .line 1026
    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1050
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x46

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1051
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    const/4 p0, 0x7

    .line 1055
    aget-byte p1, v0, p0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v1, p1, 0x4

    ushr-int/lit8 p1, p1, 0x4

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    goto :goto_0

    .line 1069
    :cond_0
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    :goto_0
    return-object v0
.end method

.method private getOrExtractSpecVersion([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    .locals 2

    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    if-eqz v0, :cond_0

    return-object v0

    .line 1102
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->fromOpenChannelResponse([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1104
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1105
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    if-nez v1, :cond_1

    .line 1106
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    .line 1108
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method static synthetic lambda$authenticateServer$33([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 686
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x1

    .line 687
    new-array v1, v0, [I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v4, 0xa1

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    return-object p0

    .line 688
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/4 v5, 0x3

    new-array v0, v0, [I

    aput v2, v0, v3

    .line 690
    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    invoke-direct {v1, v5, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1
.end method

.method static synthetic lambda$cancelSession$38([BILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf41

    .line 812
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x80

    .line 813
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v0, 0x81

    .line 814
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 815
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 812
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$cancelSession$39([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 817
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    .line 818
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$deleteProfile$14(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 446
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const v0, 0xbf33

    .line 447
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x5a

    .line 448
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 449
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 447
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$deleteProfile$15([B)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 453
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 455
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0
.end method

.method static synthetic lambda$disableProfile$6(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 306
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const v0, 0xbf32

    .line 307
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 308
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v2, 0x5a

    .line 309
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 308
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v0, 0x81

    .line 310
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBoolean(IZ)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 307
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$disableProfile$7(Ljava/lang/String;[B)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 316
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Profile is already disabled, iccid: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-static {p0}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 321
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->logd(Ljava/lang/String;)V

    return-object v0

    .line 325
    :cond_0
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw p0

    :cond_1
    return-object v0
.end method

.method static synthetic lambda$getAllProfiles$2(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf2d

    .line 230
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_TAGS:[B

    const/16 v2, 0x5c

    .line 231
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getAllProfiles$3([B)[Landroid/service/euicc/EuiccProfileInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/16 v2, 0xa0

    .line 235
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/16 v1, 0xe3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object p0

    .line 236
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 237
    new-array v2, v1, [Landroid/service/euicc/EuiccProfileInfo;

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    .line 240
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 241
    new-array v6, v0, [I

    const/16 v7, 0x5a

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v5, "Profile must have an ICCID."

    .line 242
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 245
    :cond_0
    new-array v6, v0, [I

    .line 246
    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->stripTrailingFs([B)Ljava/lang/String;

    move-result-object v6

    .line 247
    new-instance v7, Landroid/service/euicc/EuiccProfileInfo$Builder;

    invoke-direct {v7, v6}, Landroid/service/euicc/EuiccProfileInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-static {v5, v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->buildProfile(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;Landroid/service/euicc/EuiccProfileInfo$Builder;)V

    .line 251
    invoke-virtual {v7}, Landroid/service/euicc/EuiccProfileInfo$Builder;->build()Landroid/service/euicc/EuiccProfileInfo;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    .line 252
    aput-object v5, v2, v4

    move v4, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method static synthetic lambda$getDefaultSmdpAddress$18(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf3c

    .line 500
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getDefaultSmdpAddress$19([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 502
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x80

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getEid$10(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf3e

    .line 393
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x5a

    aput-byte v3, v1, v2

    const/16 v2, 0x5c

    .line 394
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getEuiccChallenge$26(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf2e

    .line 598
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getEuiccChallenge$27([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 600
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x80

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getEuiccInfo1$28(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf20

    .line 615
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getEuiccInfo1$29([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    return-object p0
.end method

.method static synthetic lambda$getEuiccInfo2$30(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf22

    .line 632
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getEuiccInfo2$31([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    return-object p0
.end method

.method static synthetic lambda$getProfile$4(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf2d

    .line 270
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 271
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 273
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v2, 0x5a

    .line 272
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    .line 271
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_TAGS:[B

    const/16 v1, 0x5c

    .line 275
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getProfile$5([B)Landroid/service/euicc/EuiccProfileInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 278
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/16 v2, 0xa0

    .line 279
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/16 v1, 0xe3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object p0

    .line 280
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 283
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/16 v1, 0x5a

    .line 284
    new-array v0, v0, [I

    .line 285
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->stripTrailingFs([B)Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Landroid/service/euicc/EuiccProfileInfo$Builder;

    invoke-direct {v1, v0}, Landroid/service/euicc/EuiccProfileInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->buildProfile(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;Landroid/service/euicc/EuiccProfileInfo$Builder;)V

    .line 289
    invoke-virtual {v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->build()Landroid/service/euicc/EuiccProfileInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getRulesAuthTable$24(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf43

    .line 561
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getRulesAuthTable$25([B)Landroid/telephony/euicc/EuiccRulesAuthTable;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 564
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/16 v0, 0xa0

    .line 565
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object p0

    .line 566
    new-instance v0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;

    .line 567
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;-><init>(I)V

    .line 568
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 570
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/4 v5, 0x1

    .line 571
    new-array v6, v5, [I

    const/16 v7, 0xa1

    aput v7, v6, v2

    const/16 v7, 0x30

    .line 572
    invoke-virtual {v4, v7, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object v6

    .line 573
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 574
    new-array v9, v8, [Landroid/service/carrier/CarrierIdentifier;

    move v10, v2

    :goto_1
    if-ge v10, v8, :cond_0

    .line 576
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->buildCarrierIdentifier(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 578
    :cond_0
    new-array v6, v5, [I

    const/16 v8, 0x80

    aput v8, v6, v2

    invoke-virtual {v4, v7, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v6

    .line 579
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-array v5, v5, [I

    const/16 v9, 0x82

    aput v9, v5, v2

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v4

    .line 580
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v4

    .line 578
    invoke-virtual {v0, v6, v8, v4}, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->add(ILjava/util/List;I)Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->build()Landroid/telephony/euicc/EuiccRulesAuthTable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getSmdsAddress$20(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf3c

    .line 517
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getSmdsAddress$21([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 519
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x81

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getSpecVersion$0(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$listNotifications$40(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf28

    .line 834
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x81

    .line 835
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 836
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 834
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$listNotifications$41([B)[Landroid/telephony/euicc/EuiccNotification;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 838
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    .line 840
    new-array v1, v0, [I

    const/16 v2, 0xa0

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 841
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/euicc/EuiccNotification;

    .line 842
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 843
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic lambda$loadBoundProfilePackage$36([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 748
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    .line 750
    new-array v1, v0, [I

    const v2, 0xbf23

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    .line 753
    new-array v2, v0, [I

    const/16 v3, 0xa0

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    .line 755
    new-array v3, v0, [I

    const/16 v4, 0xa1

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v3

    const/16 v4, 0x88

    .line 756
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object v4

    .line 758
    new-array v5, v0, [I

    const/16 v6, 0xa3

    invoke-virtual {p0, v6, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v5

    const/16 v6, 0x86

    .line 759
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object v6

    .line 761
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getHeadAsHex()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getHeadAsHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 767
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 769
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 772
    :cond_0
    new-array v1, v0, [I

    const/16 v2, 0xa2

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    new-array v1, v0, [I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 776
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getHeadAsHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 777
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    :goto_1
    if-ge v0, p0, :cond_2

    .line 779
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic lambda$loadBoundProfilePackage$37([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 784
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x3

    .line 785
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const v2, 0xbf27

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    return-object p0

    .line 787
    :cond_0
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    .line 790
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/4 v1, 0x5

    .line 792
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(IILcom/android/internal/telephony/uicc/asn1/Asn1Node;)V

    throw v0

    :array_0
    .array-data 4
        0xa2
        0xa1
        0x81
    .end array-data

    :array_1
    .array-data 4
        0xa2
        0xa1
        0x81
    .end array-data
.end method

.method static synthetic lambda$prepareDownload$34([B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf21

    .line 713
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 714
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 715
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    .line 717
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 719
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {p1, p3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 720
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 721
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 719
    invoke-virtual {p4, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$prepareDownload$35([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 724
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x1

    .line 725
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/16 v4, 0xa1

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    return-object p0

    .line 726
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    new-array v0, v0, [I

    aput v3, v0, v2

    .line 728
    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    invoke-direct {v1, v3, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1
.end method

.method static synthetic lambda$removeNotificationFromList$46(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf30

    .line 933
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x80

    .line 934
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 935
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 932
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$removeNotificationFromList$47([B)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 938
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 940
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$resetMemory$16(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf34

    .line 475
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x82

    .line 476
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 477
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 475
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$resetMemory$17([B)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 479
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$retrieveNotification$44(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf2b

    .line 904
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 905
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v2, 0x80

    .line 906
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 905
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 907
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 903
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$retrieveNotification$45([B)Landroid/telephony/euicc/EuiccNotification;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 909
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    .line 911
    new-array v1, v0, [I

    const/16 v2, 0xa0

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 912
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 913
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$retrieveNotificationList$42(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf2b

    .line 863
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 864
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v2, 0x81

    .line 865
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 864
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 866
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 862
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$retrieveNotificationList$43([B)[Landroid/telephony/euicc/EuiccNotification;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 868
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    .line 869
    new-array v1, v0, [I

    const/16 v2, 0x81

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    new-array v1, v0, [I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 874
    new-array p0, v0, [Landroid/telephony/euicc/EuiccNotification;

    return-object p0

    .line 876
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0

    :cond_1
    const/16 v1, 0xa0

    .line 881
    new-array v2, v0, [I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 882
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/euicc/EuiccNotification;

    .line 883
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 884
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static synthetic lambda$sendApdu$49(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V
    .locals 2

    .line 1125
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string v1, "Cannot send APDU."

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$sendApduWithSimResetErrorWorkaround$50(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V
    .locals 2

    .line 1142
    instance-of v0, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    .line 1143
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->getApduStatus()I

    move-result v0

    const/16 v1, 0x6f00

    if-ne v0, v1, :cond_0

    const-string p1, "Sim is refreshed after disabling profile, no response got."

    .line 1144
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->logi(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1145
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V

    return-void

    .line 1147
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string v1, "Cannot send APDU."

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$setDefaultSmdpAddress$22(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf3f

    .line 535
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x80

    .line 536
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 537
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 534
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setDefaultSmdpAddress$23([B)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 540
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 542
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0
.end method

.method static synthetic lambda$setNickname$12(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf29

    .line 419
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 421
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v1, 0x5a

    .line 420
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v0, 0x90

    .line 422
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 419
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setNickname$13([B)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 426
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 428
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0
.end method

.method static synthetic lambda$switchToProfile$8(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 345
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const v0, 0xbf31

    .line 346
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 347
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v2, 0x5a

    .line 348
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 347
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v0, 0x81

    .line 349
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBoolean(IZ)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 346
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$switchToProfile$9(Ljava/lang/String;[B)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 355
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Profile is already enabled, iccid: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-static {p0}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 360
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->logd(Ljava/lang/String;)V

    return-object v0

    .line 364
    :cond_0
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw p0

    :cond_1
    return-object v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EuiccCard"

    .line 1354
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EuiccCard"

    .line 1341
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "EuiccCard"

    .line 1345
    invoke-static {v0, p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EuiccCard"

    .line 1349
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;
    .locals 1

    .line 1080
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7vWsDgJ3RMY6kHsGeBw-CxIKViI;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7vWsDgJ3RMY6kHsGeBw-CxIKViI;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)V

    return-object v0
.end method

.method private static padTrailingFs(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1334
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v1, p0

    new-array p0, v1, [C

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([C)V

    const/4 p0, 0x0

    const/16 v1, 0x46

    invoke-virtual {v2, p0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 1305
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 1306
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->hasNextNode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1309
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    return-object p0

    .line 1307
    :cond_0
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const/4 v0, 0x0

    const-string v1, "Empty response"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
        }
    .end annotation

    .line 1320
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    .line 1321
    new-array v1, v0, [I

    const/16 v2, 0x81

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 1322
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    new-array v0, v0, [I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    invoke-direct {v1, p1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1
.end method

.method private static parseSimpleResult([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 1300
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x80

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    return p0
.end method

.method private sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler<",
            "TT;>;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mApduSender:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;)V

    invoke-virtual {v0, p1, v1, p5}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->send(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler<",
            "TT;>;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1124
    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$L4YPgLjdI8c0_VHmXQ199X1DICE;

    invoke-direct {v3, p3}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$L4YPgLjdI8c0_VHmXQ199X1DICE;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1141
    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$jFzxc6nh3bkdLVyMXzM3mlnBqrA;

    invoke-direct {v3, p3}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$jFzxc6nh3bkdLVyMXzM3mlnBqrA;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private static stripTrailingFs([B)Ljava/lang/String;
    .locals 2

    .line 1329
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addDeviceCapability(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const-string v0, ","

    .line 958
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 959
    array-length v0, p2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 960
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid device capability item: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 964
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 967
    :try_start_0
    aget-object p2, p2, v3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    .line 973
    new-array v5, v4, [B

    invoke-virtual {p2}, Ljava/lang/Integer;->byteValue()B

    move-result p2

    aput-byte p2, v5, v0

    aput-byte v0, v5, v3

    aput-byte v0, v5, v1

    const/4 p2, -0x1

    .line 974
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "utran"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "ehrpd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "hrpd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "nfc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "gsm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :sswitch_5
    const-string v0, "crl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "eutran"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "cdma1x"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p2

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1000
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid device capability name: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loge(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const/16 p2, 0x87

    .line 997
    invoke-virtual {p1, p2, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_1
    const/16 p2, 0x86

    .line 994
    invoke-virtual {p1, p2, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_2
    const/16 p2, 0x85

    .line 991
    invoke-virtual {p1, p2, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_3
    const/16 p2, 0x84

    .line 988
    invoke-virtual {p1, p2, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_4
    const/16 p2, 0x83

    .line 985
    invoke-virtual {p1, p2, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_5
    const/16 p2, 0x82

    .line 982
    invoke-virtual {p1, p2, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_6
    const/16 p2, 0x81

    .line 979
    invoke-virtual {p1, p2, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_7
    const/16 p2, 0x80

    .line 976
    invoke-virtual {p1, p2, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Invalid device capability version number."

    .line 969
    invoke-static {p2, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x515c0d24 -> :sswitch_7
        -0x4cff5825 -> :sswitch_6
        0x181dd -> :sswitch_5
        0x19101 -> :sswitch_4
        0x1a9ab -> :sswitch_3
        0x31007e -> :sswitch_2
        0x5c04663 -> :sswitch_1
        0x6a73120 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public authenticateServer(Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[B[B[B",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 652
    new-instance v7, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$dXiSnJocvC7r6HwRUJlZI7Qnleo;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$dXiSnJocvC7r6HwRUJlZI7Qnleo;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;[B[B[B[B)V

    .line 653
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$MRlmz2j6osUyi5hGvD3j9D4Tsrg;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$MRlmz2j6osUyi5hGvD3j9D4Tsrg;

    .line 652
    invoke-direct {p0, p1, p2, p6, p7}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public cancelSession([BILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 810
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$mf0dWT4hLdKlsLFFHVfdGFxHyX0;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$mf0dWT4hLdKlsLFFHVfdGFxHyX0;-><init>([BI)V

    .line 811
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$ItNER0v0H8BgPYIx3JhINdI9slE;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$ItNER0v0H8BgPYIx3JhINdI9slE;

    .line 810
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public deleteProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 444
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$MoRNAw8O6kYG_c2AJkozlJwO2NM;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$MoRNAw8O6kYG_c2AJkozlJwO2NM;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$6M0Cvkh43ith8i9YF2YZNZ-YvOM;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$6M0Cvkh43ith8i9YF2YZNZ-YvOM;

    .line 444
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public disableProfile(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$0N6_V0pqmnTfKxVMU5IUj_svXDA;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$0N6_V0pqmnTfKxVMU5IUj_svXDA;-><init>(Ljava/lang/String;Z)V

    .line 305
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Rc41c7zRLip3RrHuKqZ-Sv7h8wI;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Rc41c7zRLip3RrHuKqZ-Sv7h8wI;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1360
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p1, "EuiccCard:"

    .line 1361
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mEid="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAllProfiles(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$toN63DWLt72dzp0WCl28UOMSmzE;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$toN63DWLt72dzp0WCl28UOMSmzE;

    .line 229
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$B99bQ-FkeD9OwB8_qTcKScitlrM;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$B99bQ-FkeD9OwB8_qTcKScitlrM;

    .line 228
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public getDefaultSmdpAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 497
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$3LRPBN7jGieBA4qKqsiYoON1xT0;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$3LRPBN7jGieBA4qKqsiYoON1xT0;

    .line 498
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Qej04bOzl5rj_T7NIjvbnJX7b2s;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Qej04bOzl5rj_T7NIjvbnJX7b2s;

    .line 497
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected getDeviceId()[B
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1007
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 1009
    new-array v0, v0, [B

    return-object v0

    .line 1011
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEid()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    return-object v0
.end method

.method public getEid(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;->returnResult(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    .line 391
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$HBn5KBGylwjLqIEm3rBhXnUU_8U;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$HBn5KBGylwjLqIEm3rBhXnUU_8U;

    .line 392
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$okradEAowCk8rNBK1OaJIA6l6eA;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$okradEAowCk8rNBK1OaJIA6l6eA;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)V

    .line 391
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public getEuiccChallenge(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 595
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$8wofF-Li1V6a8rJQc-M2IGeJ26E;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$8wofF-Li1V6a8rJQc-M2IGeJ26E;

    .line 596
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$AGpR_ArLREPF7xVOCf0sgHwbDtA;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$AGpR_ArLREPF7xVOCf0sgHwbDtA;

    .line 595
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public getEuiccInfo1(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 613
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$WE7TDTe507w4dBh1UvCgBgp3xVk;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$WE7TDTe507w4dBh1UvCgBgp3xVk;

    .line 614
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$hCCBghNOkOgvjeYe8LWQml6I9Ow;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$hCCBghNOkOgvjeYe8LWQml6I9Ow;

    .line 613
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public getEuiccInfo2(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 630
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$UxQlywWQ3cqQ7G7vS2KuMEwtYro;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$UxQlywWQ3cqQ7G7vS2KuMEwtYro;

    .line 631
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$X8OWFy8Bi7TMh117x6vCBqzSqVY;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$X8OWFy8Bi7TMh117x6vCBqzSqVY;

    .line 630
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final getProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 268
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$QGtQZCF6KEnI-x59_tp1eo8mWew;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$QGtQZCF6KEnI-x59_tp1eo8mWew;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$TTvsStUIyUFrPpvGTlsjBCy3NyM;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$TTvsStUIyUFrPpvGTlsjBCy3NyM;

    .line 268
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1076
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRulesAuthTable(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Landroid/telephony/euicc/EuiccRulesAuthTable;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 559
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$AWltG4uFbHn2Xq7ZPpU3U1qOqVM;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$AWltG4uFbHn2Xq7ZPpU3U1qOqVM;

    .line 560
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$IMmMA3gSh1g8aaHsYtCih61EKmo;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$IMmMA3gSh1g8aaHsYtCih61EKmo;

    .line 559
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public getSmdsAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 514
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$tPSWjOKtm9yQg21kHmLX49PPf_4;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$tPSWjOKtm9yQg21kHmLX49PPf_4;

    .line 515
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$u2-6zCuoZP9CLxIS2g4BREHHECI;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$u2-6zCuoZP9CLxIS2g4BREHHECI;

    .line 514
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public getSpecVersion(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    if-eqz v0, :cond_0

    .line 193
    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;->returnResult(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    .line 197
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$HgCDP54gCppk81aqhuCG0YGJWEc;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$HgCDP54gCppk81aqhuCG0YGJWEc;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$U1ORE3W_o_HdXWc6N59UnRQmLQI;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$U1ORE3W_o_HdXWc6N59UnRQmLQI;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic lambda$authenticateServer$32$EuiccCard(Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 654
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getDeviceId()[B

    move-result-object v0

    const/4 v1, 0x4

    .line 656
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 657
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xa1

    .line 659
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v4

    .line 660
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070057

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 663
    array-length v6, v5

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v7, v5, v3

    .line 664
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->addDeviceCapability(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "No device capabilities set."

    .line 667
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->logd(Ljava/lang/String;)V

    :cond_1
    const/16 v3, 0xa0

    .line 670
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v3

    const/16 v5, 0x80

    .line 671
    invoke-virtual {v3, v5, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    .line 672
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 673
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 674
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v2, 0x82

    .line 675
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 672
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    const v0, 0xbf38

    .line 677
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 678
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 679
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p2

    new-instance p3, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {p3, p4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 680
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p2

    new-instance p3, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {p3, p5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 681
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p2

    .line 682
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    .line 683
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p1

    .line 677
    invoke-virtual {p6, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getEid$11$EuiccCard([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 397
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x5a

    .line 398
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object p1

    .line 397
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    .line 401
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mCardId:Ljava/lang/String;

    .line 402
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic lambda$getSpecVersion$1$EuiccCard([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 198
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    return-object p1
.end method

.method public synthetic lambda$newRequestProvider$48$EuiccCard(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1081
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getOrExtractSpecVersion([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1086
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->SGP22_V_2_0:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1089
    invoke-interface {p1, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;->build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void

    .line 1087
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string p3, "eUICC spec version is unsupported: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1091
    :goto_0
    new-instance p2, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string p3, "Cannot parse ASN1 to build request."

    invoke-direct {p2, p3, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1083
    :cond_1
    new-instance p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string p2, "Cannot get eUICC spec version."

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public listNotifications(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 832
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Ktn9yHrkajo1XOdBNZaiNkYG4vA;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Ktn9yHrkajo1XOdBNZaiNkYG4vA;-><init>(I)V

    .line 833
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$nNX2R6O4UzJoFix96ifwgIx0npQ;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$nNX2R6O4UzJoFix96ifwgIx0npQ;

    .line 832
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public loadBoundProfilePackage([BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 746
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$XDNTzAU-9I92HztVAJQr4NXR3DU;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$XDNTzAU-9I92HztVAJQr4NXR3DU;-><init>([B)V

    .line 747
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$g0LHcTcRLtF0WE8Tyv2BvipGgrM;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$g0LHcTcRLtF0WE8Tyv2BvipGgrM;

    .line 746
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected loadEidAndNotifyRegistrants()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 165
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)V

    .line 184
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public prepareDownload([B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B[B",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 711
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$5wK_r0z9fLtA1ZRVlbk3WfOYXJI;

    invoke-direct {v0, p2, p3, p1, p4}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$5wK_r0z9fLtA1ZRVlbk3WfOYXJI;-><init>([B[B[B[B)V

    .line 712
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$v0S5B6MBAksDVSST9c1nk2Movvk;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$v0S5B6MBAksDVSST9c1nk2Movvk;

    .line 711
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerForEidReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 140
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 142
    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Landroid/os/RegistrantList;

    if-nez p1, :cond_1

    .line 145
    new-instance p1, Landroid/os/RegistrantList;

    invoke-direct {p1}, Landroid/os/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Landroid/os/RegistrantList;

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public removeNotificationFromList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 930
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7VXOA-y5ZAskOFBWhqVLPntT7K0;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7VXOA-y5ZAskOFBWhqVLPntT7K0;-><init>(I)V

    .line 931
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7T_o46uJcfxyJtjGMX_0X0kMk84;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7T_o46uJcfxyJtjGMX_0X0kMk84;

    .line 930
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public resetMemory(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 473
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Wx9UmYdMwRy23Rf6Vd7b2aSx6S8;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Wx9UmYdMwRy23Rf6Vd7b2aSx6S8;-><init>(I)V

    .line 474
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$0NUjmK32-r6146hGb0RCJUAfiOg;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$0NUjmK32-r6146hGb0RCJUAfiOg;

    .line 473
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public retrieveNotification(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 901
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$KOXfsx-q_NGiOmoDdBfBkea98mo;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$KOXfsx-q_NGiOmoDdBfBkea98mo;-><init>(I)V

    .line 902
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$ICeXAGilnO8X0GNWbK6HW7brq-s;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$ICeXAGilnO8X0GNWbK6HW7brq-s;

    .line 901
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public retrieveNotificationList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 860
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$w7krlzKo4ZhEQOPUsWoy_EH6S6w;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$w7krlzKo4ZhEQOPUsWoy_EH6S6w;-><init>(I)V

    .line 861
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$47aYJh9ifWZ2OFC8SQNq0T5EePE;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$47aYJh9ifWZ2OFC8SQNq0T5EePE;

    .line 860
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setDefaultSmdpAddress(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 532
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$FbRMt6fKnYLkYt6oi5qhs1ZyEvc;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$FbRMt6fKnYLkYt6oi5qhs1ZyEvc;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$wgj93ukgzqjttFzrDLqGFk_Sd5A;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$wgj93ukgzqjttFzrDLqGFk_Sd5A;

    .line 532
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setNickname(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 417
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$_VOB5FQfE7RUMgpmr8bK-j3CsUA;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$_VOB5FQfE7RUMgpmr8bK-j3CsUA;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$4gL9ssytVrnit44qHJ-7-Uy6ZOQ;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$4gL9ssytVrnit44qHJ-7-Uy6ZOQ;

    .line 417
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public switchToProfile(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 343
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$AYHfF2w_VlO00s9p-djcPJl_1no;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$AYHfF2w_VlO00s9p-djcPJl_1no;-><init>(Ljava/lang/String;Z)V

    .line 344
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$fcz5l0a6JlSxs8MXCst7wXG4bUc;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$fcz5l0a6JlSxs8MXCst7wXG4bUc;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForEidReady(Landroid/os/Handler;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    .line 207
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 208
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateCardId()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->updateCardId()V

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mCardId:Ljava/lang/String;

    return-void
.end method
