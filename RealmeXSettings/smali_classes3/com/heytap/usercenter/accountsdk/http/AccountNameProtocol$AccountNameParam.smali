.class public Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol$AccountNameParam;
.super Lcom/heytap/usercenter/accountsdk/http/UCAccountHostParam;
.source "AccountNameProtocol.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation

.annotation runtime Lcom/platform/usercenter/annotation/Path;
    path = "v5.0/userinfo/basic"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountNameParam"
.end annotation


# instance fields
.field public sign:Ljava/lang/String;
    .annotation runtime Lcom/platform/usercenter/annotation/NoSign;
    .end annotation
.end field

.field public timestamp:J

.field public userToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/heytap/usercenter/accountsdk/http/UCAccountHostParam;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol$AccountNameParam;->userToken:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol$AccountNameParam;->timestamp:J

    .line 5
    invoke-static {p0}, Lcom/platform/usercenter/common/util/UCSignHelper;->signWithAnnotation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/platform/usercenter/tools/UCUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol$AccountNameParam;->sign:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol$AccountNameParam;-><init>(Ljava/lang/String;)V

    return-void
.end method
