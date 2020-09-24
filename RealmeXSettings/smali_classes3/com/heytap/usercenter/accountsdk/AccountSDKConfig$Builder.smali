.class public Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$Builder;
.super Ljava/lang/Object;
.source "AccountSDKConfig.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/usercenter/accountsdk/AccountSDKConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public env:Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$Builder;
    .locals 0

    return-object p0
.end method

.method public env(Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;)Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$Builder;->env:Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;

    return-object p0
.end method
