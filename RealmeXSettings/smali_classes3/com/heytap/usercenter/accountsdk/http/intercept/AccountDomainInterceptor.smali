.class public Lcom/heytap/usercenter/accountsdk/http/intercept/AccountDomainInterceptor;
.super Lcom/heytap/usercenter/accountsdk/http/intercept/BaseDomainInterceptor;
.source "AccountDomainInterceptor.java"


# annotations
.annotation runtime Lcom/heytap/annotation/UCInterceptor;
    priority = 0x1
.end annotation

.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/heytap/usercenter/accountsdk/http/intercept/BaseDomainInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public getBusinessType()Ljava/lang/String;
    .locals 1

    const-string v0, "account"

    return-object v0
.end method
