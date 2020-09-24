.class public Lcom/platform/usercenter/common/security/SecurityProtocolManager;
.super Ljava/lang/Object;
.source "SecurityProtocolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;,
        Lcom/platform/usercenter/common/security/SecurityProtocolManager$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecurityProtocolManager"


# instance fields
.field private mSecurityKeys:Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/platform/usercenter/common/security/SecurityProtocolManager$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/platform/usercenter/common/security/SecurityProtocolManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/platform/usercenter/common/security/SecurityProtocolManager;
    .locals 1

    .line 37
    sget-object v0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$LazyHolder;->INSTANCE:Lcom/platform/usercenter/common/security/SecurityProtocolManager;

    return-object v0
.end method


# virtual methods
.method public clearSecurityKeys()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager;->mSecurityKeys:Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;

    return-void
.end method

.method public getSecurityKeys()Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager;->mSecurityKeys:Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;

    return-object v0
.end method

.method public setSecurityKeys(Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/platform/usercenter/common/security/SecurityProtocolManager;->mSecurityKeys:Lcom/platform/usercenter/common/security/SecurityProtocolManager$SecurityKeys;

    return-void
.end method
