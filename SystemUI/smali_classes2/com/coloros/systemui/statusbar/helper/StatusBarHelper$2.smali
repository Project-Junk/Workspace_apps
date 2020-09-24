.class Lcom/coloros/systemui/statusbar/helper/StatusBarHelper$2;
.super Ljava/lang/Object;
.source "StatusBarHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper$2;->this$0:Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive message that come from client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "StatusBarHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper$2;->this$0:Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->access$000(Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method
