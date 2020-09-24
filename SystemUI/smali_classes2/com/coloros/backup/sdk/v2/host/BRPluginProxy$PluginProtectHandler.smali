.class Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PluginProtectHandler;
.super Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;
.source "BRPluginProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginProtectHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler<",
        "Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Looper;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V
    .locals 1

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PluginProtectHandler"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BRPluginProxy"

    invoke-static {v0, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 p1, 0xe

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$400(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 159
    check-cast p2, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PluginProtectHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V

    return-void
.end method
