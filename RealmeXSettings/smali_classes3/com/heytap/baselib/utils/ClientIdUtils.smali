.class public final Lcom/heytap/baselib/utils/ClientIdUtils;
.super Ljava/lang/Object;
.source "ClientIdUtils.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[La/f/e;

.field private static final ANDROID_TELEPHONY_COSTELEPHONYMANAGER:Ljava/lang/String;

.field private static final CLIENT_INFO_FILE_PATH:Ljava/lang/String;

.field private static final C_GET_IMEI:Ljava/lang/String;

.field private static final DEFAULT_CLIENT_ID:Ljava/lang/String; = ""

.field private static final EXTRAS_KEY_CLIENT_ID:Ljava/lang/String; = "clientId"

.field private static final EXTRAS_KEY_CLIENT_ID_LEN:I = 0xf

.field private static final EXTRAS_KEY_DEFAULT_VALUE:Ljava/lang/String; = ""

.field private static final EXTRAS_KEY_GEN:Ljava/lang/String; = "G0"

.field private static final EXTRAS_KEY_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final EXTRAS_KEY_ZERO:Ljava/lang/String; = "0"

.field public static final INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils;

.field private static final MCS_CONTROL_PULL_MSG_INFO_FILE_PATH:Ljava/lang/String;

.field private static final MCS_HIDDEN_FILE_STORAGE_PATH:Ljava/lang/String;

.field private static final NAME_CLIENT_INFO:Ljava/lang/String; = "e3c9997fed83a974"

.field private static final TAG:Ljava/lang/String;

.field private static clientSharedPreferences:Landroid/content/SharedPreferences;

.field private static localClientId:Ljava/lang/String;

.field private static sClientId:Ljava/lang/String;

.field private static final timeStamp$delegate:La/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [La/f/e;

    new-instance v1, La/d/b/h;

    const-class v2, Lcom/heytap/baselib/utils/ClientIdUtils;

    invoke-static {v2}, La/d/b/i;->a(Ljava/lang/Class;)La/f/b;

    move-result-object v2

    const-string v3, "timeStamp"

    const-string v4, "getTimeStamp()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, La/d/b/h;-><init>(La/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, La/d/b/i;->a(La/d/b/g;)La/f/f;

    move-result-object v1

    check-cast v1, La/f/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/heytap/baselib/utils/ClientIdUtils;->$$delegatedProperties:[La/f/e;

    .line 36
    new-instance v0, Lcom/heytap/baselib/utils/ClientIdUtils;

    invoke-direct {v0}, Lcom/heytap/baselib/utils/ClientIdUtils;-><init>()V

    sput-object v0, Lcom/heytap/baselib/utils/ClientIdUtils;->INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils;

    .line 37
    const-class v1, Lcom/heytap/baselib/utils/ClientIdUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ClientIdUtils::class.java.simpleName"

    invoke-static {v1, v3}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->TAG:Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "Environment.getExternalStorageDirectory()"

    invoke-static {v3, v4}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mcs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->MCS_HIDDEN_FILE_STORAGE_PATH:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/heytap/baselib/utils/ClientIdUtils;->MCS_HIDDEN_FILE_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mcs_msg.ini"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->MCS_CONTROL_PULL_MSG_INFO_FILE_PATH:Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/heytap/baselib/utils/ClientIdUtils;->MCS_HIDDEN_FILE_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "e3c9997fed83a974.ini"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->CLIENT_INFO_FILE_PATH:Ljava/lang/String;

    const-string v1, ""

    .line 58
    sput-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->sClientId:Ljava/lang/String;

    const-string v1, "YW5kcm9pZC50ZWxlcGhvbnkuQ29sb3JPU1RlbGVwaG9ueU1hbmFnZXI="

    .line 65
    invoke-direct {v0, v1}, Lcom/heytap/baselib/utils/ClientIdUtils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->ANDROID_TELEPHONY_COSTELEPHONYMANAGER:Ljava/lang/String;

    const-string v1, "Y29sb3JHZXRJbWVp"

    .line 66
    invoke-direct {v0, v1}, Lcom/heytap/baselib/utils/ClientIdUtils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heytap/baselib/utils/ClientIdUtils;->C_GET_IMEI:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/heytap/baselib/utils/ClientIdUtils$timeStamp$2;->INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils$timeStamp$2;

    check-cast v0, La/d/a/a;

    const-string v1, "initializer"

    invoke-static {v0, v1}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, La/d;

    invoke-direct {v1, v0, v2}, La/d;-><init>(La/d/a/a;B)V

    check-cast v1, La/b;

    .line 140
    sput-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->timeStamp$delegate:La/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildClientId()Ljava/lang/String;
    .locals 6

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/heytap/baselib/utils/ClientIdUtils;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    if-eqz v1, :cond_2

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v3}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/heytap/baselib/utils/ClientIdUtils;->getUuidHashCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0xf

    if-ge v1, v5, :cond_1

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "123456789012345"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, La/e;

    invoke-direct {v0, v2}, La/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/heytap/baselib/utils/ClientIdUtils;->replaceNonHexChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 305
    :cond_2
    new-instance v0, La/e;

    invoke-direct {v0, v2}, La/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 353
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v0, "Base64.decode(this, Base64.DEFAULT)"

    invoke-static {p1, v0}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, La/h/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private final getClientIdByOS(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 187
    :try_start_0
    invoke-direct {p0, p1}, Lcom/heytap/baselib/utils/ClientIdUtils;->reflectCImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 189
    invoke-virtual {p0, p1}, Lcom/heytap/baselib/utils/ClientIdUtils;->getImeiWhenP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/heytap/baselib/utils/ClientIdUtils;->getImeiWhenO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_3

    goto :goto_0

    .line 190
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 191
    invoke-virtual {p0, p1}, Lcom/heytap/baselib/utils/ClientIdUtils;->getImeiWhenO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 193
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/heytap/baselib/utils/ClientIdUtils;->getDeviceIdBelowO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getClientIdFromCache(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 289
    sget-object v0, Lcom/heytap/baselib/utils/ClientIdUtils;->clientSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "e3c9997fed83a974"

    .line 290
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/heytap/baselib/utils/ClientIdUtils;->clientSharedPreferences:Landroid/content/SharedPreferences;

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/heytap/baselib/utils/ClientIdUtils;->getLocalClientId()Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-direct {p0, p1}, Lcom/heytap/baselib/utils/ClientIdUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/heytap/baselib/utils/ClientIdUtils;->isInvalidClientId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    :cond_1
    invoke-direct {p0}, Lcom/heytap/baselib/utils/ClientIdUtils;->buildClientId()Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-direct {p0, p1}, Lcom/heytap/baselib/utils/ClientIdUtils;->setLocalClientId(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method private final getDeviceIdBelowO(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 223
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "phone"

    .line 224
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 225
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    new-instance p1, La/e;

    const-string v0, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {p1, v0}, La/e;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getLocalClientId()Ljava/lang/String;
    .locals 6

    const-string v0, "clientId"

    .line 73
    sget-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->localClientId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/heytap/baselib/utils/ClientIdUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/heytap/baselib/utils/ClientIdUtils;->localClientId:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 77
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/heytap/baselib/utils/ClientIdUtils;->CLIENT_INFO_FILE_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/heytap/baselib/utils/IdIOUtilKt;->decryptTo(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    invoke-direct {p0, v2}, Lcom/heytap/baselib/utils/ClientIdUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/heytap/baselib/utils/ClientIdUtils;->isExternalStorageMediaMounted()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    sget-object v3, Lcom/heytap/baselib/utils/ClientIdUtils;->MCS_CONTROL_PULL_MSG_INFO_FILE_PATH:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lcom/heytap/baselib/utils/IdIOUtilKt;->readFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    sget-object v4, Lcom/heytap/baselib/utils/ClientIdUtils;->INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils;

    invoke-direct {v4, v3}, Lcom/heytap/baselib/utils/ClientIdUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 82
    sget-object v4, Lcom/heytap/baselib/utils/ClientIdUtils;->INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils;

    if-nez v3, :cond_2

    .line 83
    invoke-static {}, La/d/b/d;->a()V

    :cond_2
    invoke-direct {v4, v3, v1}, Lcom/heytap/baselib/utils/ClientIdUtils;->parseObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, ""

    .line 82
    invoke-direct {v4, v3, v0, v5}, Lcom/heytap/baselib/utils/ClientIdUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_3
    :goto_0
    return-object v2

    :catch_0
    move-object v2, v1

    .line 90
    :catch_1
    sget-object v3, Lcom/heytap/baselib/utils/ClientIdUtils;->clientSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_4

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v2, v1

    :cond_5
    :goto_1
    return-object v2
.end method

.method private final getObjectValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    .line 324
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "obj.get(key)"

    invoke-static {p1, p2}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method private final getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/baselib/utils/ClientIdUtils;->getObjectValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method private final getTimeStamp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/heytap/baselib/utils/ClientIdUtils;->timeStamp$delegate:La/b;

    invoke-interface {v0}, La/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getUuidHashCode()Ljava/lang/String;
    .locals 3

    .line 111
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 114
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, La/e;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, La/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final isExternalStorageMediaMounted()Z
    .locals 2

    .line 128
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v0, v1}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isHexDigit(B)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p1, v0, :cond_3

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private final isInvalidClientId(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 384
    invoke-static {}, La/d/b/d;->a()V

    :cond_0
    const-string v0, "unknown"

    .line 1056
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "null"

    .line 2056
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    .line 3056
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final isNullOrEmpty(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 389
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    .line 391
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    move v4, v1

    :goto_0
    if-gt v1, v3, :cond_5

    if-nez v4, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v3

    .line 396
    :goto_1
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-gt v5, v6, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    if-nez v4, :cond_4

    if-nez v5, :cond_3

    move v4, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    add-int/2addr v3, v0

    .line 411
    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0, p1}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 343
    invoke-direct {p0, p1}, Lcom/heytap/baselib/utils/ClientIdUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p2
.end method

.method private final parseObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/heytap/baselib/utils/ClientIdUtils;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 337
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    return-object p1

    :cond_0
    return-object p2
.end method

.method private final reflectCImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 206
    :try_start_0
    sget-object v0, Lcom/heytap/baselib/utils/ClientIdUtils;->ANDROID_TELEPHONY_COSTELEPHONYMANAGER:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Class.forName(ANDROID_TE\u2026HONY_COSTELEPHONYMANAGER)"

    invoke-static {v0, v1}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "getDefault"

    const/4 v2, 0x1

    .line 207
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "cx.getMethod(\"getDefault\", Context::class.java)"

    invoke-static {v1, v3}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    sget-object v3, Lcom/heytap/baselib/utils/ClientIdUtils;->C_GET_IMEI:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "cx.getMethod(C_GET_IMEI,\u2026:class.javaPrimitiveType)"

    invoke-static {v3, v4}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 210
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance p1, La/e;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, La/e;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final replaceNonHexChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 356
    invoke-direct {p0, p1}, Lcom/heytap/baselib/utils/ClientIdUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 360
    :cond_0
    sget-object v0, La/h/d;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 361
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 362
    aget-byte v2, p1, v0

    invoke-direct {p0, v2}, Lcom/heytap/baselib/utils/ClientIdUtils;->isHexDigit(B)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x30

    .line 363
    aput-byte v2, p1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "G0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, La/h/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 360
    :cond_3
    new-instance p1, La/e;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, La/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final setLocalClientId(Ljava/lang/String;)V
    .locals 2

    .line 95
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    sput-object p1, Lcom/heytap/baselib/utils/ClientIdUtils;->localClientId:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/heytap/baselib/utils/ClientIdUtils;->INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils;

    invoke-direct {v0, p1}, Lcom/heytap/baselib/utils/ClientIdUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 99
    :cond_0
    :try_start_3
    sget-object v0, Lcom/heytap/baselib/utils/ClientIdUtils;->clientSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "clientId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    :cond_1
    sget-object v0, Lcom/heytap/baselib/utils/ClientIdUtils;->INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils;

    invoke-direct {v0}, Lcom/heytap/baselib/utils/ClientIdUtils;->isExternalStorageMediaMounted()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 102
    :try_start_5
    invoke-static {}, La/d/b/d;->a()V

    :cond_3
    sget-object v0, La/h/d;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->CLIENT_INFO_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/heytap/baselib/utils/IdIOUtilKt;->encryptTo([BLjava/io/File;)Z

    .line 104
    sget-object p1, La/g;->a:La/g;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 95
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    .line 102
    :cond_4
    :try_start_7
    new-instance p1, La/e;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, La/e;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    .line 95
    :try_start_8
    monitor-exit p0

    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final getClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 155
    sget-object v0, Lcom/heytap/baselib/utils/ClientIdUtils;->sClientId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/heytap/baselib/utils/ClientIdUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    const-class v0, Lcom/heytap/baselib/utils/ClientIdUtils;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils;

    sget-object v2, Lcom/heytap/baselib/utils/ClientIdUtils;->sClientId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/heytap/baselib/utils/ClientIdUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 160
    sget-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils;

    const-string v2, "appContext"

    invoke-static {p1, v2}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lcom/heytap/baselib/utils/ClientIdUtils;->getClientIdByOS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->sClientId:Ljava/lang/String;

    .line 169
    sget-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils;

    .line 168
    sget-object v2, Lcom/heytap/baselib/utils/ClientIdUtils;->sClientId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/heytap/baselib/utils/ClientIdUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils;

    sget-object v2, Lcom/heytap/baselib/utils/ClientIdUtils;->sClientId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/heytap/baselib/utils/ClientIdUtils;->isInvalidClientId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_3

    .line 170
    :cond_2
    sget-object p1, Lcom/heytap/baselib/utils/ClientIdUtils;->sClientId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    .line 173
    :cond_3
    :try_start_1
    sget-object v1, Lcom/heytap/baselib/utils/ClientIdUtils;->INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils;

    invoke-direct {v1, p1}, Lcom/heytap/baselib/utils/ClientIdUtils;->getClientIdFromCache(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/heytap/baselib/utils/ClientIdUtils;->sClientId:Ljava/lang/String;

    .line 175
    :cond_4
    sget-object p1, La/g;->a:La/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 177
    :cond_5
    :goto_1
    sget-object p1, Lcom/heytap/baselib/utils/ClientIdUtils;->sClientId:Ljava/lang/String;

    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    return-object p1

    .line 151
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context is null.."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final getImeiWhenO(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    .line 240
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 243
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v0

    .line 248
    :goto_0
    :try_start_2
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    .line 240
    :cond_1
    new-instance p1, La/e;

    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {p1, v1}, La/e;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object v0
.end method

.method public final getImeiWhenP(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 265
    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "phone"

    .line 266
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 269
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v0

    .line 274
    :goto_0
    :try_start_2
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    .line 266
    :cond_1
    new-instance p1, La/e;

    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {p1, v1}, La/e;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_2
    return-object v0
.end method
