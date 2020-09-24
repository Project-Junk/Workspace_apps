.class final Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$1;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;I)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$1;->b:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;

    iput p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 438
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$1;->b:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;

    iget-object p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    .line 439
    iget p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$1;->a:I

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->removeUser(I)Z

    .line 440
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$1;->b:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;

    iget-object p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->a:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-virtual {p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void
.end method
