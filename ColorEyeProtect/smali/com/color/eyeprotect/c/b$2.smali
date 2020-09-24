.class Lcom/color/eyeprotect/c/b$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/c/b;


# direct methods
.method constructor <init>(Lcom/color/eyeprotect/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/c/b$2;->a:Lcom/color/eyeprotect/c/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.color.eyeprotect.USER_CHANGED_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/color/eyeprotect/c/b$2;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {v2}, Lcom/color/eyeprotect/c/b;->b(Lcom/color/eyeprotect/c/b;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/color/common/service/UserChangedCompletedService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/color/eyeprotect/c/b$2;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p0}, Lcom/color/eyeprotect/c/b;->b(Lcom/color/eyeprotect/c/b;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v0, "ColorEyeProtect"

    const-string v1, "mUserChangeReceiver startService"

    invoke-virtual {p1, v0, v1, p0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userChangeReceiver:userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentUserId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    sget-object p1, Lcom/color/eyeprotect/c/a;->a:Lcom/color/eyeprotect/c/a$b;

    invoke-virtual {p1}, Lcom/color/eyeprotect/c/a$b;->a()Lcom/color/eyeprotect/c/a;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lcom/color/eyeprotect/c/a;->a(IZ)V

    iget-object p0, p0, Lcom/color/eyeprotect/c/b$2;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p0}, Lcom/color/eyeprotect/c/b;->g(Lcom/color/eyeprotect/c/b;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    sget-object p1, Lcom/color/eyeprotect/c/a;->a:Lcom/color/eyeprotect/c/a$b;

    invoke-virtual {p1}, Lcom/color/eyeprotect/c/a$b;->a()Lcom/color/eyeprotect/c/a;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lcom/color/eyeprotect/c/a;->a(IZ)V

    iget-object p1, p0, Lcom/color/eyeprotect/c/b$2;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p1}, Lcom/color/eyeprotect/c/b;->g(Lcom/color/eyeprotect/c/b;)V

    invoke-direct {p0, p2}, Lcom/color/eyeprotect/c/b$2;->a(I)V

    return-void

    :cond_1
    sget-object p1, Lcom/color/eyeprotect/c/a;->a:Lcom/color/eyeprotect/c/a$b;

    invoke-virtual {p1}, Lcom/color/eyeprotect/c/a$b;->a()Lcom/color/eyeprotect/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/eyeprotect/c/a;->a()V

    iget-object p1, p0, Lcom/color/eyeprotect/c/b$2;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p1}, Lcom/color/eyeprotect/c/b;->h(Lcom/color/eyeprotect/c/b;)V

    iget-object p1, p0, Lcom/color/eyeprotect/c/b$2;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p1}, Lcom/color/eyeprotect/c/b;->i(Lcom/color/eyeprotect/c/b;)V

    iget-object p0, p0, Lcom/color/eyeprotect/c/b$2;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p0}, Lcom/color/eyeprotect/c/b;->j(Lcom/color/eyeprotect/c/b;)V

    return-void
.end method
