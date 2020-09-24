.class Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$3;
.super Ljava/lang/Object;
.source "BRPluginProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->prepare(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$3;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$3;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$3;->val$bundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$3;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->getPluginBackupPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$3;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$3;->val$bundle:Landroid/os/Bundle;

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$600(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;ILandroid/os/Bundle;I)V

    return-void
.end method
