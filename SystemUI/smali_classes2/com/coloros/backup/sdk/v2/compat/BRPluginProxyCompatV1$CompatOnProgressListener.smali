.class Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;
.super Ljava/lang/Object;
.source "BRPluginProxyCompatV1.java"

# interfaces
.implements Lcom/coloros/backup/sdk/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompatOnProgressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;


# direct methods
.method constructor <init>(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;->this$0:Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onEnd(Lcom/coloros/backup/sdk/BackupAgent;Z)V
    .locals 0

    return-void
.end method

.method public onErr(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onOneFinished(Lcom/coloros/backup/sdk/BackupAgent;I)V
    .locals 1

    .line 268
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;->this$0:Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;

    invoke-static {p1}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->access$000(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Lcom/coloros/backup/sdk/BackupAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result p1

    .line 269
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;->this$0:Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->access$100(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    .line 270
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;->this$0:Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->access$100(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;->this$0:Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;

    invoke-static {p1}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->access$200(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)F

    move-result p1

    sub-float p1, p2, p1

    const v0, 0x3ca3d70a    # 0.02f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;->this$0:Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;

    invoke-static {p1, p2}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->access$202(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;F)F

    .line 275
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;->this$0:Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;

    invoke-static {p1}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->access$300(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 276
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;->this$0:Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;

    invoke-static {p1}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->access$400(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;->this$0:Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->access$100(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onProgressChanged(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onSpecialChange(Lcom/coloros/backup/sdk/BackupAgent;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/coloros/backup/sdk/BackupAgent;)V
    .locals 0

    return-void
.end method
