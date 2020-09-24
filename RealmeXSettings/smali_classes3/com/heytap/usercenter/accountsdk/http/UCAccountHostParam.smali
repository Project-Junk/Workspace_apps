.class public Lcom/heytap/usercenter/accountsdk/http/UCAccountHostParam;
.super Lcom/heytap/usercenter/accountsdk/http/UCBaseRequest;
.source "UCAccountHostParam.java"


# annotations
.annotation runtime Lcom/platform/usercenter/annotation/Host;
    host_dev = "https://client-uc.heytapmobi.com/"
    host_release = "https://client-uc.heytapmobi.com/"
    host_test1 = "https://client-uc.heytapmobi.com/"
    host_test3 = "https://client-uc.heytapmobi.com/"
.end annotation

.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/heytap/usercenter/accountsdk/http/UCBaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/heytap/usercenter/accountsdk/http/UCBaseRequest;->getAnnotationUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
