.class public Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/color/eyeprotect/c/b;

.field private b:Landroid/content/ContentResolver;

.field private c:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->c:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;

    invoke-direct {p0, p0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->b:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a:Lcom/color/eyeprotect/c/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a:Lcom/color/eyeprotect/c/b;

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/b;->e()V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p1, "ColorEyeProtect"

    const-string v0, "init"

    invoke-virtual {p0, p1, v0}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a()V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a:Lcom/color/eyeprotect/c/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a:Lcom/color/eyeprotect/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/color/eyeprotect/c/b;->a(D)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p1, "ColorEyeProtect"

    const-string p2, "setEyeProtectLevel faild, mController == null"

    invoke-virtual {p0, p1, p2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a:Lcom/color/eyeprotect/c/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a:Lcom/color/eyeprotect/c/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/eyeprotect/c/b;->a(IIII)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p1, "ColorEyeProtect"

    const-string p2, "setDuration faild, mController == null"

    invoke-virtual {p0, p1, p2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a:Lcom/color/eyeprotect/c/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a:Lcom/color/eyeprotect/c/b;

    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/c/b;->a(Z)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p1, "ColorEyeProtect"

    const-string v0, "setTimerState faild, mController == null"

    invoke-virtual {p0, p1, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a:Lcom/color/eyeprotect/c/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a:Lcom/color/eyeprotect/c/b;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/color/eyeprotect/c/b;->a(ZZZ)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p1, "ColorEyeProtect"

    const-string p2, "setEyeProtectEnable faild, mController == null"

    invoke-virtual {p0, p1, p2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(D)V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a:Lcom/color/eyeprotect/c/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a:Lcom/color/eyeprotect/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/color/eyeprotect/c/b;->c(D)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p1, "ColorEyeProtect"

    const-string p2, "setEyeProtectEnable faild, mController == null"

    invoke-virtual {p0, p1, p2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/color/eyeprotect/c/a;->a:Lcom/color/eyeprotect/c/a$b;

    invoke-virtual {v0}, Lcom/color/eyeprotect/c/a$b;->a()Lcom/color/eyeprotect/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/eyeprotect/c/a;->a()V

    invoke-static {p0}, Lcom/color/eyeprotect/c/b;->a(Landroid/content/Context;)Lcom/color/eyeprotect/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a:Lcom/color/eyeprotect/c/b;

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->b:Landroid/content/ContentResolver;

    new-instance v0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;-><init>(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->c:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->c:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a()V

    return-void
.end method
