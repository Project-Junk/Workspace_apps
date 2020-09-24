.class public interface abstract Lcom/coloros/backup/sdk/v2/host/listener/BRListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ErrorHelper;,
        Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants;
    }
.end annotation


# virtual methods
.method public abstract onAllEnd(Landroid/os/Bundle;)V
.end method

.method public abstract onError(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
.end method

.method public abstract onPluginCreate(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
.end method

.method public abstract onPluginEnd(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
.end method

.method public abstract onPluginPrepare(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
.end method

.method public abstract onPluginPreview(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
.end method

.method public abstract onPluginStart(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
.end method

.method public abstract onProgressChanged(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
.end method
