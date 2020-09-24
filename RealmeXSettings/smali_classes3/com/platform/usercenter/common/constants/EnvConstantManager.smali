.class public Lcom/platform/usercenter/common/constants/EnvConstantManager;
.super Ljava/lang/Object;
.source "EnvConstantManager.java"

# interfaces
.implements Lcom/platform/usercenter/common/constants/IEnvConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/common/constants/EnvConstantManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private install:Lcom/platform/usercenter/common/constants/IEnvConstant;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/platform/usercenter/common/constants/EnvConstantManager$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/platform/usercenter/common/constants/EnvConstantManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/platform/usercenter/common/constants/EnvConstantManager;
    .locals 1

    .line 14
    invoke-static {}, Lcom/platform/usercenter/common/constants/EnvConstantManager$SingletonHolder;->access$100()Lcom/platform/usercenter/common/constants/EnvConstantManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public DEBUG()Z
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/platform/usercenter/common/constants/EnvConstantManager;->existInstall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/platform/usercenter/common/constants/EnvConstantManager;->install:Lcom/platform/usercenter/common/constants/IEnvConstant;

    invoke-interface {v0}, Lcom/platform/usercenter/common/constants/IEnvConstant;->DEBUG()Z

    move-result v0

    return v0
.end method

.method public ENV()I
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/platform/usercenter/common/constants/EnvConstantManager;->existInstall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/platform/usercenter/common/constants/EnvConstantManager;->install:Lcom/platform/usercenter/common/constants/IEnvConstant;

    invoke-interface {v0}, Lcom/platform/usercenter/common/constants/IEnvConstant;->ENV()I

    move-result v0

    return v0
.end method

.method public existInstall()Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/platform/usercenter/common/constants/EnvConstantManager;->install:Lcom/platform/usercenter/common/constants/IEnvConstant;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setInstall(Lcom/platform/usercenter/common/constants/IEnvConstant;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/platform/usercenter/common/constants/EnvConstantManager;->install:Lcom/platform/usercenter/common/constants/IEnvConstant;

    return-void
.end method
