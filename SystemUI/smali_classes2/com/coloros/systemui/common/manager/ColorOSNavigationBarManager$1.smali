.class Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 284
    iput-object p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$1;->this$0:Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, 0x0

    const-string v0, "isShow"

    .line 287
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "NAVIGATION_MODE"

    .line 288
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 289
    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$1;->this$0:Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    invoke-virtual {p2, v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->disableShowAndHideNavBar(Z)V

    .line 290
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$1;->this$0:Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    invoke-static {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->access$000(Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;Z)V

    .line 291
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Breeno panel show:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  navBarMode:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBar"

    const-string p2, "ColorOSNavigationBarManager"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
