.class Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$2;
.super Ljava/lang/Object;
.source "LauncherMessenger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$2;->this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oppo.launcher"

    const-string v2, "com.oppo.keyguardservice.KeyGuardDismissedService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 138
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$2;->this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->access$400(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$2;->this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->access$300(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)Landroid/content/ServiceConnection;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
