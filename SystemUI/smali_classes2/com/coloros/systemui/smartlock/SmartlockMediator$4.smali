.class Lcom/coloros/systemui/smartlock/SmartlockMediator$4;
.super Ljava/lang/Object;
.source "SmartlockMediator.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/smartlock/SmartlockMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$4;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 224
    iget-object p1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$4;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {p2}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$402(Lcom/coloros/systemui/smartlock/SmartlockMediator;Lcom/coloros/systemui/smartlock/ISmartLockInterface;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    const-string p1, "SmartlockMediator"

    const-string p2, "onServiceConnected."

    .line 225
    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :try_start_0
    iget-object p2, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$4;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {p2}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$400(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$4;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$500(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Lcom/coloros/systemui/smartlock/ISmartLockCallback;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/coloros/systemui/smartlock/ISmartLockInterface;->register(Lcom/coloros/systemui/smartlock/ISmartLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected RemoteException = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$4;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->checkSmartLockActiveState()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$4;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$402(Lcom/coloros/systemui/smartlock/SmartlockMediator;Lcom/coloros/systemui/smartlock/ISmartLockInterface;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    const-string p0, "SmartlockMediator"

    const-string p1, "onServiceDisconnected."

    .line 238
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
