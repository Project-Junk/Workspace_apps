.class Lcom/nearme/romupdate/Client$1;
.super Landroid/os/Handler;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/romupdate/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/romupdate/Client;


# direct methods
.method constructor <init>(Lcom/nearme/romupdate/Client;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/nearme/romupdate/Client$1;->this$0:Lcom/nearme/romupdate/Client;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 32
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    sget-object p1, Lcom/nearme/romupdate/Client;->TAG:Ljava/lang/String;

    const-string v0, "bugly bindservice begin"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p0, Lcom/nearme/romupdate/Client$1;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p1}, Lcom/nearme/romupdate/Client;->access$000(Lcom/nearme/romupdate/Client;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nearme/romupdate/Client$1;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p1}, Lcom/nearme/romupdate/Client;->access$500(Lcom/nearme/romupdate/Client;)Lcom/nearme/romupdate/Client$CallBack;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nearme/romupdate/Client$1;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p1}, Lcom/nearme/romupdate/Client;->access$600(Lcom/nearme/romupdate/Client;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 43
    iget-object p0, p0, Lcom/nearme/romupdate/Client$1;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p0}, Lcom/nearme/romupdate/Client;->access$700(Lcom/nearme/romupdate/Client;)Landroid/content/ServiceConnection;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/nearme/romupdate/Client;->access$400(Lcom/nearme/romupdate/Client;Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 34
    :cond_1
    sget-object p1, Lcom/nearme/romupdate/Client;->TAG:Ljava/lang/String;

    const-string v0, "debug bindservice begin"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Lcom/nearme/romupdate/Client$1;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p1}, Lcom/nearme/romupdate/Client;->access$000(Lcom/nearme/romupdate/Client;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nearme/romupdate/Client$1;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p1}, Lcom/nearme/romupdate/Client;->access$100(Lcom/nearme/romupdate/Client;)Lcom/nearme/romupdate/Client$DebugCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nearme/romupdate/Client$1;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p1}, Lcom/nearme/romupdate/Client;->access$200(Lcom/nearme/romupdate/Client;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 36
    iget-object p0, p0, Lcom/nearme/romupdate/Client$1;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p0}, Lcom/nearme/romupdate/Client;->access$300(Lcom/nearme/romupdate/Client;)Landroid/content/ServiceConnection;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/nearme/romupdate/Client;->access$400(Lcom/nearme/romupdate/Client;Landroid/content/ServiceConnection;)V

    :cond_2
    :goto_0
    return-void
.end method
