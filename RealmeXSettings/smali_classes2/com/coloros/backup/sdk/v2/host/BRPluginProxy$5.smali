.class Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$5;
.super Ljava/lang/Object;
.source "BRPluginProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->restore(Landroid/os/Bundle;)V
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

    .line 447
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$5;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$5;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 450
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$5;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$5;->val$bundle:Landroid/os/Bundle;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$600(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;ILandroid/os/Bundle;I)V

    return-void
.end method
