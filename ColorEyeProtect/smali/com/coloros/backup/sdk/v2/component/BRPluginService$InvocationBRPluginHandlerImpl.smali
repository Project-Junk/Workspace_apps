.class Lcom/coloros/backup/sdk/v2/component/BRPluginService$InvocationBRPluginHandlerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/component/BRPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvocationBRPluginHandlerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/backup/sdk/v2/component/BRPluginService;


# direct methods
.method private constructor <init>(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$InvocationBRPluginHandlerImpl;->this$0:Lcom/coloros/backup/sdk/v2/component/BRPluginService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Lcom/coloros/backup/sdk/v2/component/BRPluginService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$InvocationBRPluginHandlerImpl;-><init>(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string p1, "updateProgress"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$InvocationBRPluginHandlerImpl;->this$0:Lcom/coloros/backup/sdk/v2/component/BRPluginService;

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$1100(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Lcom/coloros/backup/sdk/v2/component/BRPluginService$BRPluginHandlerImpl;

    move-result-object p0

    aget-object p1, p3, v0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$BRPluginHandlerImpl;->updateProgress(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p1, "error"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$InvocationBRPluginHandlerImpl;->this$0:Lcom/coloros/backup/sdk/v2/component/BRPluginService;

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$1100(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Lcom/coloros/backup/sdk/v2/component/BRPluginService$BRPluginHandlerImpl;

    move-result-object p0

    aget-object p1, p3, v0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$BRPluginHandlerImpl;->error(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string p1, "sendMsg"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$InvocationBRPluginHandlerImpl;->this$0:Lcom/coloros/backup/sdk/v2/component/BRPluginService;

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$1100(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Lcom/coloros/backup/sdk/v2/component/BRPluginService$BRPluginHandlerImpl;

    move-result-object p0

    aget-object p1, p3, v0

    check-cast p1, Landroid/content/Intent;

    const/4 p2, 0x1

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$BRPluginHandlerImpl;->sendMsg(Landroid/content/Intent;Z)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
