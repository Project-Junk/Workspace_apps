.class Lcom/coloros/systemui/common/receiver/AbstractReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "AbstractReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/common/receiver/AbstractReceiver;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/common/receiver/AbstractReceiver;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver$1;->this$0:Lcom/coloros/systemui/common/receiver/AbstractReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver$1;->this$0:Lcom/coloros/systemui/common/receiver/AbstractReceiver;

    iget-object v0, v0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Common"

    const-string v2, "onReceive()"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver$1;->this$0:Lcom/coloros/systemui/common/receiver/AbstractReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
