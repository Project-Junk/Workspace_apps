.class public Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol$UCSystemConfigParam;
.super Lcom/heytap/usercenter/accountsdk/http/UCAccountHostParam;
.source "UCSystemConfigProtocol.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation

.annotation runtime Lcom/platform/usercenter/annotation/Path;
    path = "system/get-config"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UCSystemConfigParam"
.end annotation


# instance fields
.field public appKey:Ljava/lang/String;

.field public sign:Ljava/lang/String;
    .annotation runtime Lcom/platform/usercenter/annotation/NoSign;
    .end annotation
.end field

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/heytap/usercenter/accountsdk/http/UCAccountHostParam;-><init>()V

    const-string v0, "usercenter"

    .line 2
    iput-object v0, p0, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol$UCSystemConfigParam;->appKey:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol$UCSystemConfigParam;->timestamp:J

    .line 4
    invoke-static {p0}, Lcom/platform/usercenter/common/util/UCSignHelper;->signWithAnnotation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/MD5Util;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol$UCSystemConfigParam;->sign:Ljava/lang/String;

    return-void
.end method
