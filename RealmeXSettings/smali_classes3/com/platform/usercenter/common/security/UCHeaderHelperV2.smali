.class public Lcom/platform/usercenter/common/security/UCHeaderHelperV2;
.super Ljava/lang/Object;
.source "UCHeaderHelperV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/common/security/UCHeaderHelperV2$HeaderXApp;,
        Lcom/platform/usercenter/common/security/UCHeaderHelperV2$HeaderXSystem;,
        Lcom/platform/usercenter/common/security/UCHeaderHelperV2$HeaderXContext;,
        Lcom/platform/usercenter/common/security/UCHeaderHelperV2$HeaderXDevice;,
        Lcom/platform/usercenter/common/security/UCHeaderHelperV2$HeaderXProtocol;
    }
.end annotation


# static fields
.field public static final X_PROTOCOL_VERSION:Ljava/lang/String; = "X-Protocol-Ver"

.field public static final X_SAFETY:Ljava/lang/String; = "X-Safety"

.field private static sConstantMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lcom/platform/usercenter/common/lib/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/platform/usercenter/common/security/UCHeaderHelperV2;->sConstantMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildHeader(Landroid/content/Context;Lcom/platform/usercenter/common/security/IBizHeaderManager;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/platform/usercenter/common/security/IBizHeaderManager;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 48
    new-instance p1, Lcom/platform/usercenter/common/security/UCDefaultBizHeader;

    invoke-direct {p1}, Lcom/platform/usercenter/common/security/UCDefaultBizHeader;-><init>()V

    .line 50
    :cond_0
    sget-object v0, Lcom/platform/usercenter/common/security/UCHeaderHelperV2;->sConstantMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 51
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/common/lib/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/platform/usercenter/common/security/UCHeaderHelperV2;->sConstantMap:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/platform/usercenter/common/security/UCHeaderHelperV2$HeaderXDevice;->buildHeader(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 53
    sget-object v0, Lcom/platform/usercenter/common/security/UCHeaderHelperV2;->sConstantMap:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/platform/usercenter/common/security/UCHeaderHelperV2$HeaderXContext;->buildHeader(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 54
    sget-object v0, Lcom/platform/usercenter/common/security/UCHeaderHelperV2;->sConstantMap:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/platform/usercenter/common/security/UCHeaderHelperV2$HeaderXSystem;->buildHeader(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 56
    :cond_2
    sget-object v0, Lcom/platform/usercenter/common/security/UCHeaderHelperV2;->sConstantMap:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/platform/usercenter/common/security/DeviceSecurityHeader;->getDeviceSecurityHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Safety"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/platform/usercenter/common/security/UCHeaderHelperV2;->sConstantMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/platform/usercenter/common/security/UCHeaderHelperV2$HeaderXApp;->buildHeader(Landroid/content/Context;Lcom/platform/usercenter/common/security/IBizHeaderManager;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 58
    sget-object p0, Lcom/platform/usercenter/common/security/UCHeaderHelperV2;->sConstantMap:Ljava/util/HashMap;

    return-object p0
.end method
