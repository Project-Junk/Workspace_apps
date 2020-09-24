.class final Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 425
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->q:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 426
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-virtual {p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->a()V

    return-void

    .line 429
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-boolean p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->u:Z

    if-eqz p1, :cond_1

    .line 430
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-virtual {p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b()V

    return-void

    .line 431
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object v0, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->a(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    .line 432
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 433
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 434
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    new-instance v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$1;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;I)V

    invoke-static {v0, p1, v1}, Lcom/android/settings/users/g;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    .line 443
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 444
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-boolean p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->t:Z

    if-eqz p1, :cond_3

    .line 445
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 446
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-virtual {p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    .line 447
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-boolean p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->w:Z

    if-nez p1, :cond_4

    .line 451
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :catch_0
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->w:Z

    .line 455
    iget-object p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$2;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$2;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;)V

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->a:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 467
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-virtual {p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$3;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
