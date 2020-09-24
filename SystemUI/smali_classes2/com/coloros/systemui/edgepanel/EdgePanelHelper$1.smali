.class Lcom/coloros/systemui/edgepanel/EdgePanelHelper$1;
.super Ljava/lang/Object;
.source "EdgePanelHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/edgepanel/EdgePanelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$1;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindingDied() componentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EdgePanel"

    const-string v1, "EdgePanelHelper"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$1;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    invoke-static {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->access$200(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNullBinding() componentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EdgePanel"

    const-string v1, "EdgePanelHelper"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$1;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    invoke-static {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->access$200(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "EdgePanelHelper"

    const-string v0, "EdgePanel"

    const-string v1, "onServiceConnected()"

    .line 65
    invoke-static {v0, p1, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$1;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    invoke-static {p2}, Lcom/coloros/systemui/edgepanel/IEdgePanelCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->access$002(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;)Lcom/coloros/systemui/edgepanel/IEdgePanelCallback;

    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$1;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    invoke-static {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->access$100(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "Lost connection to launcher service"

    .line 70
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected() componentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EdgePanel"

    const-string v1, "EdgePanelHelper"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$1;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    invoke-static {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->access$200(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V

    return-void
.end method
