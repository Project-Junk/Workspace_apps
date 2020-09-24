.class Lcom/heytap/service/accountsdk/CallInfoAgent$2;
.super Ljava/lang/Object;
.source "CallInfoAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/service/accountsdk/CallInfoAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;


# direct methods
.method constructor <init>(Lcom/heytap/service/accountsdk/CallInfoAgent;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$2;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 357
    iget-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$2;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-static {p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$100(Lcom/heytap/service/accountsdk/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object p1

    monitor-enter p1

    .line 358
    :try_start_0
    invoke-static {p2}, Lcom/c/a/c$a;->a(Landroid/os/IBinder;)Lcom/c/a/c;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$202(Lcom/c/a/c;)Lcom/c/a/c;

    .line 359
    iget-object p2, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$2;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-static {p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$100(Lcom/heytap/service/accountsdk/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 360
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

    return-void
.end method
