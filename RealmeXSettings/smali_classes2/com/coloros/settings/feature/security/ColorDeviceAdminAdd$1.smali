.class final Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;
.super Ljava/lang/Object;
.source "ColorDeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 81
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->a(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->b(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V

    return-void

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->c(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->M(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    iget-boolean p1, p1, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->A:Z

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->d(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V

    return-void

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->e(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)V

    return-void

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    .line 93
    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->f(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    .line 92
    invoke-static {p1, v0, v1}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 97
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->g(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->a(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    .line 98
    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->i(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->h(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 99
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->j(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->k(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Lcom/android/settingslib/g$a;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {v0, p1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    .line 110
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    if-eqz v0, :cond_6

    .line 112
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 113
    new-instance v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$1;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;Landroid/app/Activity;I)V

    invoke-static {v0, p1, v1}, Lcom/android/settings/users/g;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_6
    return-void

    .line 124
    :cond_7
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->l(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 125
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->n(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->m(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->finish()V

    return-void

    .line 127
    :cond_8
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->o(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 131
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :catch_0
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->p(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Z

    .line 135
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->s(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->q(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$2;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$2;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;)V

    iget-object v3, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    .line 145
    invoke-static {v3}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->r(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 147
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;->a:Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$3;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1$3;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd$1;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method
