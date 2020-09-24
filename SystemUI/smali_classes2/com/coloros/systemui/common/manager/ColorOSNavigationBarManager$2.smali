.class Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$2;
.super Landroid/app/IProcessObserver$Stub;
.source "ColorOSNavigationBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$2;->this$0:Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onProcessDied(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProcessDied, pid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ColorOSNavigationBarManager"

    const-string v1, "NavBar"

    invoke-static {v1, v0, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$2;->this$0:Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    invoke-static {p2}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->access$100(Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;)I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBreenoPid unregister: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$2;->this$0:Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    invoke-static {p2}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->access$100(Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$2;->this$0:Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->disableShowAndHideNavBar(Z)V

    .line 303
    iget-object p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$2;->this$0:Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    invoke-static {p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->access$206(Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;)I

    move-result p1

    if-nez p1, :cond_0

    .line 304
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$2;->this$0:Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    invoke-static {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->access$300(Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;)Landroid/app/IProcessObserver;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    :cond_0
    return-void
.end method
