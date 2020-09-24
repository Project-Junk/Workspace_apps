.class public Lcom/heytap/usercenter/accountsdk/AccountSDKConfig;
.super Ljava/lang/Object;
.source "AccountSDKConfig.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$Builder;,
        Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;
    }
.end annotation


# static fields
.field public static sEnv:Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;->ENV_RELEASE:Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;

    sput-object v0, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig;->sEnv:Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
