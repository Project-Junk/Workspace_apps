.class Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$7;
.super Ljava/lang/Object;
.source "BRPluginProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->createAndInvokeMethod(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

.field final synthetic val$methodAgrs:Landroid/os/Bundle;

.field final synthetic val$methodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$7;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$7;->val$methodName:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$7;->val$methodAgrs:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$7;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$7;->val$methodName:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$7;->val$methodAgrs:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$700(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
