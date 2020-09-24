.class public Lcom/platform/usercenter/sdk/UCVerifyURLProvider;
.super Ljava/lang/Object;
.source "UCVerifyURLProvider.java"


# static fields
.field private static final MOBILE_HTTPS_URLS:[Ljava/lang/String;

.field public static final OP_COMMONCHECK_GET_BUSINESSURL:I = 0x2dc6c0

.field public static final OP_SAFE_GET_VERIFICATION_LIST:I = 0x2dc6c2

.field public static final OP_SAFE_VALIDATE_QUERY_VALIDATE_RESULT:I = 0x2dc6c1

.field public static final OP_USER_MODIFY_ACCOUNT_NAME_V4_4:I = 0x2dc6c3

.field private static final SERVICE_URLS:[Ljava/lang/String;

.field public static final SSO_TOKEN_NOT_EXIST:I = 0xbe0

.field public static final SSO_USERID_NOT_EXISTS:I = 0xbd7

.field private static final URL_OPPO_EXP_HOST:Ljava/lang/String; = "https://client-uc.heytapmobi.com/"

.field private static final URL_OPPO_HOST:Ljava/lang/String; = "https://client-uc.heytapmobi.com/"

.field private static final URL_REALME_HOST:Ljava/lang/String; = "https://client-uc.heytapmobi.com/"

.field private static final URL_TEST_HOST:Ljava/lang/String;

.field public static sIsDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "`||x2\'\'a&egjadmixa&}kfm\u007f|m{|&\u007fifqgd&kge\'"

    const/16 v1, 0x8

    .line 30
    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->URL_TEST_HOST:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->sIsDebug:Z

    const-string v0, "v3/login"

    const-string v1, "v3/captcha"

    const-string v2, "v3/logout"

    .line 41
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->SERVICE_URLS:[Ljava/lang/String;

    const-string v0, "v5.0/common-check/get-business-url"

    const-string v1, "v4.0/user-verifycation/query-validate-result"

    const-string v2, "v4.0/user-verifycation/get-verifycation-list"

    const-string v3, "v4.4/refresh-username"

    .line 122
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->MOBILE_HTTPS_URLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMobileHttpsUrl(I)Ljava/lang/String;
    .locals 3

    if-ltz p0, :cond_1

    .line 130
    sget-object v0, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->MOBILE_HTTPS_URLS:[Ljava/lang/String;

    array-length v0, v0

    const v1, 0x2dc6c0

    add-int/2addr v0, v1

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->getUCHTTPSURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->MOBILE_HTTPS_URLS:[Ljava/lang/String;

    sub-int/2addr p0, v1

    aget-object p0, v2, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static getUCHTTPSURL()Ljava/lang/String;
    .locals 1

    .line 48
    sget-boolean v0, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->sIsDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->URL_TEST_HOST:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->isOrange:Z

    const-string v0, "https://client-uc.heytapmobi.com/"

    return-object v0
.end method

.method public static getUCHTTPSURL(Z)Ljava/lang/String;
    .locals 0

    .line 53
    sget-boolean p0, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->sIsDebug:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->URL_TEST_HOST:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-boolean p0, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->isOrange:Z

    const-string p0, "https://client-uc.heytapmobi.com/"

    return-object p0
.end method

.method public static getUrlBootVerifyPassword()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->getUCHTTPSURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "v4.0/bootstrap-verify-passwd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrlForgetPws()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->getUCHTTPSURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "v5.0/common-check/get-business-url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrlGetBootVerifyAccountName()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->getUCHTTPSURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "v4.0/bootstrap-user-info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrlGetBootVerifyPicCaptcha()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->getUCHTTPSURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "base64-captcha"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
