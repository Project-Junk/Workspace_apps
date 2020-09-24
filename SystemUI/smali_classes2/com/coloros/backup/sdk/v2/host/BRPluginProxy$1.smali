.class Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$1;
.super Ljava/lang/Object;
.source "BRPluginProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V
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

    .line 386
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$1;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$1;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$1;->val$bundle:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$500(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void
.end method
