.class public Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityBizDefaultHeaderInterceptor;
.super Lcom/heytap/accountsdk/net/security/interceptor/UCAbsSecurityBizHeaderInterceptor;
.source "UCSecurityBizDefaultHeaderInterceptor.java"


# instance fields
.field private mBizHeaderManager:Lcom/platform/usercenter/common/security/IBizHeaderManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/heytap/accountsdk/net/security/interceptor/UCAbsSecurityBizHeaderInterceptor;-><init>()V

    .line 18
    new-instance v0, Lcom/platform/usercenter/common/security/UCDefaultBizHeader;

    invoke-direct {v0}, Lcom/platform/usercenter/common/security/UCDefaultBizHeader;-><init>()V

    iput-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityBizDefaultHeaderInterceptor;->mBizHeaderManager:Lcom/platform/usercenter/common/security/IBizHeaderManager;

    return-void
.end method


# virtual methods
.method protected getBizHeader()Lcom/platform/usercenter/common/security/IBizHeaderManager;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityBizDefaultHeaderInterceptor;->mBizHeaderManager:Lcom/platform/usercenter/common/security/IBizHeaderManager;

    return-object v0
.end method
