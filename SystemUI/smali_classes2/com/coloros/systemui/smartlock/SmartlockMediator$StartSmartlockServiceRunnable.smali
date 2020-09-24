.class Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;
.super Ljava/lang/Object;
.source "SmartlockMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/smartlock/SmartlockMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartSmartlockServiceRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;Lcom/coloros/systemui/smartlock/SmartlockMediator$1;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;-><init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 245
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$400(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object v0

    const-string v1, "SmartlockMediator"

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.coloros.smartlcok.SMART_LOCK"

    .line 247
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.coloros.smartlock"

    .line 248
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {v2}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$300(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {v3}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$600(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Landroid/os/UserHandle;

    .line 252
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 250
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStartSmartlockServiceRunnable Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$400(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStartSmartlockServiceRunnable run end, mSmartlockService.hashCode() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$StartSmartlockServiceRunnable;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    .line 260
    invoke-static {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$400(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 259
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "mStartSmartlockServiceRunnable run end, mSmartlockService is null!"

    .line 262
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
