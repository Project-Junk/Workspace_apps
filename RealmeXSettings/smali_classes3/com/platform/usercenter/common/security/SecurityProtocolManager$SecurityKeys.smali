.class public Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;
.super Ljava/lang/Object;
.source "SecurityProtocolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/common/security/SecurityProtocolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecurityKeys"
.end annotation


# instance fields
.field public mAES:Ljava/lang/String;

.field public mRSA:Ljava/lang/String;

.field public mSecurityTicket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 60
    new-array v0, v0, [B

    .line 61
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 62
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v1, 0xa

    .line 65
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDpgSW5VkZ6/xvh+wMXezrOokNdiupuvuMj4RVJy44byWDupl4H37z907A26RVdFzMeyLUQB4rsDIaXdxCODlljWW+/K96uF5MsDtOFUBw7VlOclIjcYTv/YDQEul8JoXoOuy1Yf3b5sbTpTuVTcl97tAuLJ8PoGe2K7N3B1eUQqQIDAQAB"

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/RsaCoder;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mRSA:Ljava/lang/String;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public available()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mRSA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "SecurityProtocolManager"

    const-string v0, "decrypt fail aes key is null"

    .line 85
    invoke-static {p1, v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 89
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/platform/usercenter/tools/AESUtilTest;->aesDecryptWithPassKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "SecurityProtocolManager"

    const-string v0, "encrypt fail aes key is null"

    .line 72
    invoke-static {p1, v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 76
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/platform/usercenter/tools/AESUtilTest;->aesEncryptWithPassKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method
