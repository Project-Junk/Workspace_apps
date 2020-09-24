.class Lcom/heytap/openid/sdk/OpenIDHelper$1;
.super Ljava/lang/Object;
.source "OpenIDHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/openid/sdk/OpenIDHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/openid/sdk/OpenIDHelper;


# direct methods
.method constructor <init>(Lcom/heytap/openid/sdk/OpenIDHelper;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/heytap/openid/sdk/OpenIDHelper$1;->this$0:Lcom/heytap/openid/sdk/OpenIDHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/heytap/openid/sdk/OpenIDHelper$1;->this$0:Lcom/heytap/openid/sdk/OpenIDHelper;

    invoke-static {p2}, Lcom/heytap/openid/IOpenID$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/openid/IOpenID;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/heytap/openid/sdk/OpenIDHelper;->access$202(Lcom/heytap/openid/sdk/OpenIDHelper;Lcom/heytap/openid/IOpenID;)Lcom/heytap/openid/IOpenID;

    .line 103
    iget-object p1, p0, Lcom/heytap/openid/sdk/OpenIDHelper$1;->this$0:Lcom/heytap/openid/sdk/OpenIDHelper;

    invoke-static {p1}, Lcom/heytap/openid/sdk/OpenIDHelper;->access$300(Lcom/heytap/openid/sdk/OpenIDHelper;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 104
    :try_start_0
    iget-object p2, p0, Lcom/heytap/openid/sdk/OpenIDHelper$1;->this$0:Lcom/heytap/openid/sdk/OpenIDHelper;

    invoke-static {p2}, Lcom/heytap/openid/sdk/OpenIDHelper;->access$300(Lcom/heytap/openid/sdk/OpenIDHelper;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 105
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
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/heytap/openid/sdk/OpenIDHelper$1;->this$0:Lcom/heytap/openid/sdk/OpenIDHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/heytap/openid/sdk/OpenIDHelper;->access$202(Lcom/heytap/openid/sdk/OpenIDHelper;Lcom/heytap/openid/IOpenID;)Lcom/heytap/openid/IOpenID;

    return-void
.end method
