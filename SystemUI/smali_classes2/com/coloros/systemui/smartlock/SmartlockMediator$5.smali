.class Lcom/coloros/systemui/smartlock/SmartlockMediator$5;
.super Ljava/lang/Object;
.source "SmartlockMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 267
    iput-object p1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$5;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$5;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$400(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object v0

    const-string v1, "SmartlockMediator"

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStopPictorialServiceiRunnable run begin mSmartlockService.hashCode() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$5;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    .line 272
    invoke-static {v2}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$400(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "mStopPictorialServiceiRunnable run begin mSmartlockService is null!"

    .line 274
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$5;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$400(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$5;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$402(Lcom/coloros/systemui/smartlock/SmartlockMediator;Lcom/coloros/systemui/smartlock/ISmartLockInterface;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    .line 279
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$5;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$300(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$5;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {v1}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$600(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 280
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$5;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$300(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.coloros.smartlcok.SMART_LOCK"

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.coloros.smartlock"

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 280
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method
