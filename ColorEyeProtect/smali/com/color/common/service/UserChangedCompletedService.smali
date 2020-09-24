.class public final Lcom/color/common/service/UserChangedCompletedService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/common/service/UserChangedCompletedService$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/color/common/service/UserChangedCompletedService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/color/common/service/UserChangedCompletedService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/color/common/service/UserChangedCompletedService$a;-><init>(La/d/b/e;)V

    sput-object v0, Lcom/color/common/service/UserChangedCompletedService;->a:Lcom/color/common/service/UserChangedCompletedService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "UserChangedCompletedReceiver"

    const-string v2, "onCreate"

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/color/common/service/UserChangedCompletedService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
