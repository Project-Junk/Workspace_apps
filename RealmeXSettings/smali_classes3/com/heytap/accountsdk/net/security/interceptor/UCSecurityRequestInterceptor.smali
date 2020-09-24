.class public Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;
.super Ljava/lang/Object;
.source "UCSecurityRequestInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;
    }
.end annotation


# static fields
.field private static final DECRYPT_FAIL_CODE:I = 0x1466

.field private static final FORMAT_CONTENT_TYPE:Ljava/lang/String; = "%s; charset=%s"

.field public static final HEADER_PROTOCOL_VERSION:Ljava/lang/String; = "1.0"

.field private static final HEADER_SECURITY_CONTENT_TYPE:Ljava/lang/String; = "application/encrypted-json"

.field public static final HEADER_X_PROTOCOL_VERSION:Ljava/lang/String; = "X-Protocol-Version"

.field private static final HEADER_X_SESSION_TICKET:Ljava/lang/String; = "X-Session-Ticket"

.field public static final HEADER_X_SIGNTRUE:Ljava/lang/String; = "X-Signature"

.field private static final KEY_SECURITY_ACCEPT:Ljava/lang/String; = "application/encrypted-json"

.field private static final STATUS_CODE_DECRYPT_FAIL:I = 0xde

.field private static final TAG:Ljava/lang/String; = "SecurityRequest"


# instance fields
.field private TAG_SUFFIX:Ljava/lang/String;

.field private mHeaderSigntrueV1:Ljava/lang/String;

.field private mHeaderSigntrueV2:Ljava/lang/String;

.field private final mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

.field private mSessionTicket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SecurityRequest"

    .line 40
    iput-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->TAG_SUFFIX:Ljava/lang/String;

    .line 326
    new-instance v0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;-><init>(Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$1;)V

    iput-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    return-void
.end method

.method private static bodyToString(Lokhttp3/RequestBody;)Ljava/lang/String;
    .locals 1

    .line 311
    :try_start_0
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 312
    invoke-virtual {p0, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 313
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 315
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private checkAndSetProtocolV1(Lokhttp3/Headers$Builder;Ljava/lang/String;Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;)V
    .locals 2

    const-string v0, "X-Security"

    .line 223
    invoke-virtual {p0, v0, p2}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p1, v0, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 227
    :cond_0
    iget-object p2, p3, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mRSA:Ljava/lang/String;

    const-string v0, "X-Key"

    invoke-virtual {p0, v0, p2}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 228
    iget-object p2, p3, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mRSA:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 230
    :cond_1
    iget-object p2, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mSessionTicket:Ljava/lang/String;

    const-string p3, "X-Session-Ticket"

    invoke-virtual {p0, p3, p2}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 232
    iget-object p2, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mSessionTicket:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :cond_2
    const-string p2, "X-Protocol-Version"

    const-string p3, "1.0"

    .line 234
    invoke-virtual {p1, p2, p3}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void
.end method

.method private checkAndSetProtocolV2(Lokhttp3/Headers$Builder;Ljava/lang/String;Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;)V
    .locals 2

    const-string v0, "X-Safety"

    .line 209
    invoke-virtual {p0, v0, p2}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p1, v0, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 212
    :cond_0
    sget-object p2, Lcom/platform/usercenter/common/lib/BaseApp;->mContext:Landroid/content/Context;

    iget-object v0, p3, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mRSA:Ljava/lang/String;

    iget-object p3, p3, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    invoke-static {p2, v0, p3}, Lcom/platform/usercenter/common/security/UCHeaderHelperV2$HeaderXProtocol;->buildHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "X-Protocol"

    .line 214
    invoke-virtual {p0, p3, p2}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p1, p3, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :cond_1
    const-string p2, "X-Protocol-Ver"

    const-string p3, "1.0"

    .line 217
    invoke-virtual {p1, p2, p3}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void
.end method

.method private decryptResponse(Lokhttp3/Response;Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;
    .locals 6

    .line 239
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p4

    .line 240
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 241
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->success(Lokhttp3/Response;)Z

    move-result v1

    const/16 v2, 0x1466

    if-eqz v1, :cond_2

    const/4 p3, 0x0

    .line 244
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 246
    iget-object v3, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v4, "decryptResponse srcResponse.body().string() IOException = "

    invoke-virtual {v3, v4}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 247
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "decryptResponse source = "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    if-eqz p4, :cond_0

    const-string v1, "X-Session-Ticket"

    .line 250
    invoke-virtual {p4, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "decryptResponse parserSecurityTicketHeader = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 252
    invoke-virtual {p4, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    .line 253
    iget-object p4, p2, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    iput-object p4, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mSessionTicket:Ljava/lang/String;

    .line 256
    :cond_0
    invoke-virtual {p2, p3}, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 257
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 259
    iget-object p3, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "decryptResponse decrypt fail and throw SecurityDecryptError ; the aeskey = "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 260
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    goto/16 :goto_3

    .line 263
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/common/security/SecurityProtocolManager;->getInstance()Lcom/platform/usercenter/common/security/SecurityProtocolManager;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/platform/usercenter/common/security/SecurityProtocolManager;->setSecurityKeys(Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;)V

    .line 265
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p3}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    goto/16 :goto_3

    .line 271
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p2

    const/16 v0, 0xde

    if-ne p2, v0, :cond_6

    if-eqz p4, :cond_6

    const-string p2, "X-Signature"

    .line 273
    invoke-virtual {p4, p2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 274
    invoke-virtual {p4, p2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 275
    iget-object p4, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mHeaderSigntrueV1:Ljava/lang/String;

    invoke-static {p4}, Lcom/platform/usercenter/tools/MD5Util;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 276
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mHeaderSigntrueV2:Ljava/lang/String;

    invoke-static {v0}, Lcom/platform/usercenter/tools/MD5Util;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDpgSW5VkZ6/xvh+wMXezrOokNdiupuvuMj4RVJy44byWDupl4H37z907A26RVdFzMeyLUQB4rsDIaXdxCODlljWW+/K96uF5MsDtOFUBw7VlOclIjcYTv/YDQEul8JoXoOuy1Yf3b5sbTpTuVTcl97tAuLJ8PoGe2K7N3B1eUQqQIDAQAB"

    .line 278
    invoke-static {p4, p2, v1}, Lcom/platform/usercenter/tools/RsaCoder;->doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0, p2, v1}, Lcom/platform/usercenter/tools/RsaCoder;->doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    .line 283
    iget-object p2, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string p3, "parseNetworkResponse receive statuscode 222 and verify signture success , throw SecurityDecryptError"

    invoke-virtual {p2, p3}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 286
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    goto :goto_3

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "decryptResponse receive statuscode 222 signture = "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 290
    iget-object p2, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "decryptResponse receive statuscode 222 mEncryptHeader  = "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 291
    iget-object p2, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "decryptResponse receive statuscode 222 mEncryptHeader md5  = "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 292
    iget-object p2, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string p3, "decryptResponse receive statuscode 222 and verify signture fail"

    invoke-virtual {p2, p3}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    :cond_6
    :goto_3
    return-object p1
.end method

.method private encryptRequest(Lokhttp3/Request;Lokhttp3/RequestBody;Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;)Lokhttp3/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p3}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p3

    .line 172
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p6, p4}, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mHeaderSigntrueV1:Ljava/lang/String;

    .line 175
    invoke-virtual {p6, p5}, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    sget-object v0, Lcom/heytap/accountsdk/net/security/request/HeaderConstant;->FORMAT_UTF_8:Ljava/lang/String;

    invoke-static {p5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mHeaderSigntrueV2:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Security encryptHeader encrypt  = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 178
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Safty encryptXSecurityV2 encrypt  = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 183
    sget-object v0, Lcom/heytap/accountsdk/net/security/request/HeaderConstant;->HEAD_KEY_ACCEPT:Ljava/lang/String;

    const-string v1, "application/encrypted-json"

    invoke-virtual {p3, v0, v1}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 184
    invoke-direct {p0, p3, p4, p6}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->checkAndSetProtocolV1(Lokhttp3/Headers$Builder;Ljava/lang/String;Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;)V

    .line 185
    invoke-direct {p0, p3, p5, p6}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->checkAndSetProtocolV2(Lokhttp3/Headers$Builder;Ljava/lang/String;Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;)V

    .line 195
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 198
    :cond_0
    invoke-static {p2}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->bodyToString(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 199
    iget-object p3, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "encryptBody encrypt = "

    invoke-virtual {p5, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 200
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->formatContentType(Z)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private success(Lokhttp3/Response;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v0, 0xde

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 305
    invoke-static {p1, p2}, Lcom/heytap/accountsdk/net/security/request/HeaderConstant;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public formatContentType(Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    .line 321
    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p1, "application/encrypted-json"

    goto :goto_0

    :cond_0
    const-string p1, "application/json"

    :goto_0
    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    sget-object v1, Lcom/heytap/accountsdk/net/security/request/HeaderConstant;->FORMAT_UTF_8:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string p1, "%s; charset=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v7

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecurityRequest:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->TAG_SUFFIX:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/platform/usercenter/common/security/SecurityProtocolManager;->getInstance()Lcom/platform/usercenter/common/security/SecurityProtocolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/platform/usercenter/common/security/SecurityProtocolManager;->getSecurityKeys()Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->available()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v2, "has a Available securitykeys"

    invoke-virtual {v1, v2}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v1, "mSecurityKeys unAvailable and reset securitykeys"

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 95
    new-instance v0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;

    invoke-direct {v0}, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;-><init>()V

    :goto_1
    move-object v8, v0

    .line 99
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " RSA KEY =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mRSA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 100
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " SECURITY Ticket =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 103
    invoke-virtual {v7}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v9

    .line 104
    sget-object v0, Lcom/platform/usercenter/common/lib/BaseApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/platform/usercenter/common/security/DeviceSecurityHeader;->getDeviceSecurityHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 110
    invoke-virtual {v7}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v11

    .line 113
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v1, "=================request first time"

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    move-object v0, p0

    move-object v1, v7

    move-object v2, v11

    move-object v3, v9

    move-object v4, v10

    move-object v5, v10

    move-object v6, v8

    .line 114
    invoke-direct/range {v0 .. v6}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->encryptRequest(Lokhttp3/Request;Lokhttp3/RequestBody;Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;)Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v12

    .line 118
    invoke-direct {p0, v12, v8, v10, v10}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->decryptResponse(Lokhttp3/Response;Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->success(Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 121
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v8, 0x1466

    if-ne v0, v8, :cond_4

    .line 123
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v1, "=================request second time"

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 124
    invoke-static {}, Lcom/platform/usercenter/common/security/SecurityProtocolManager;->getInstance()Lcom/platform/usercenter/common/security/SecurityProtocolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/platform/usercenter/common/security/SecurityProtocolManager;->clearSecurityKeys()V

    .line 125
    new-instance v13, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;

    invoke-direct {v13}, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;-><init>()V

    .line 126
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retry AES KEY =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v13, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 127
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retry RSA KEY =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v13, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mRSA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 128
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retry SECURITY Ticket =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v13, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    move-object v0, p0

    move-object v1, v7

    move-object v2, v11

    move-object v3, v9

    move-object v4, v10

    move-object v5, v10

    move-object v6, v13

    .line 130
    invoke-direct/range {v0 .. v6}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->encryptRequest(Lokhttp3/Request;Lokhttp3/RequestBody;Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;)Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 132
    invoke-direct {p0, v0, v13, v10, v10}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->decryptResponse(Lokhttp3/Response;Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v0

    .line 133
    invoke-direct {p0, v0}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->success(Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 135
    :cond_3
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 137
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v1, "=================request downgrade time"

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 138
    invoke-static {}, Lcom/platform/usercenter/common/security/SecurityProtocolManager;->getInstance()Lcom/platform/usercenter/common/security/SecurityProtocolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/platform/usercenter/common/security/SecurityProtocolManager;->clearSecurityKeys()V

    .line 139
    invoke-virtual {v7}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/heytap/accountsdk/net/security/request/HeaderConstant;->HEAD_KEY_ACCEPT:Ljava/lang/String;

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0, v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->formatContentType(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 142
    invoke-static {v11}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->bodyToString(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v1, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 139
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v12

    :cond_4
    move-object v0, v12

    .line 148
    :goto_2
    invoke-virtual {p0}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->printLog()V

    return-object v0
.end method

.method protected printLog()V
    .locals 4

    const/4 v0, 0x0

    .line 330
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    invoke-virtual {v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->TAG_SUFFIX:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;

    invoke-virtual {v3}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
