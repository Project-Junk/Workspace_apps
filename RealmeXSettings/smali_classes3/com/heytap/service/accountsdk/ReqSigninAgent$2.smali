.class Lcom/heytap/service/accountsdk/ReqSigninAgent$2;
.super Ljava/lang/Object;
.source "ReqSigninAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/service/accountsdk/ReqSigninAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;


# direct methods
.method constructor <init>(Lcom/heytap/service/accountsdk/ReqSigninAgent;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$2;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 424
    iget-object p1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$2;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-static {p1}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$000(Lcom/heytap/service/accountsdk/ReqSigninAgent;)Ljava/lang/Integer;

    move-result-object p1

    monitor-enter p1

    .line 425
    :try_start_0
    invoke-static {p2}, Lcom/c/a/b$a;->a(Landroid/os/IBinder;)Lcom/c/a/b;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$302(Lcom/c/a/b;)Lcom/c/a/b;

    .line 426
    iget-object p2, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$2;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-static {p2}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$000(Lcom/heytap/service/accountsdk/ReqSigninAgent;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 427
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 419
    invoke-static {p1}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$302(Lcom/c/a/b;)Lcom/c/a/b;

    return-void
.end method
