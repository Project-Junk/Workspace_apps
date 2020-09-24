.class Lcom/coloros/systemui/edgepanel/EdgePanelHelper$3;
.super Landroid/app/UserSwitchObserver;
.source "EdgePanelHelper.java"


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

    .line 103
    iput-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$3;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-super {p0, p1}, Landroid/app/UserSwitchObserver;->onUserSwitchComplete(I)V

    const-string p1, "EdgePanel"

    const-string v0, "EdgePanelHelper"

    const-string v1, "onUserSwitchComplete() user switch complete and execute bind service"

    .line 113
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$3;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->access$602(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;I)I

    .line 115
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$3;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    invoke-static {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->access$700(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V

    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-super {p0, p1, p2}, Landroid/app/UserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V

    const-string p0, "EdgePanel"

    const-string p1, "EdgePanelHelper"

    const-string p2, "onUserSwitching()"

    .line 107
    invoke-static {p0, p1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
