.class Lcom/color/eyeprotect/ColorEyeProtectApp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/eyeprotect/ColorEyeProtectApp;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/ColorEyeProtectApp;


# direct methods
.method constructor <init>(Lcom/color/eyeprotect/ColorEyeProtectApp;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/ColorEyeProtectApp$1;->a:Lcom/color/eyeprotect/ColorEyeProtectApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    const-string v2, "start UXDesign"

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.uxdesign.action.LAUNCH_RISE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.coloros.uxdesign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/color/eyeprotect/ColorEyeProtectApp$1;->a:Lcom/color/eyeprotect/ColorEyeProtectApp;

    invoke-virtual {p0}, Lcom/color/eyeprotect/ColorEyeProtectApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/color/eyeprotect/ColorEyeProtectApp;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start UXDesign error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
