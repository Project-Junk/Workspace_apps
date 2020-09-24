.class final Lcom/android/settings/applications/specialaccess/deviceadmin/a;
.super Ljava/lang/Object;
.source "DeviceAdminListItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/applications/specialaccess/deviceadmin/a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/app/admin/DeviceAdminInfo;

.field final c:Ljava/lang/CharSequence;

.field final d:Landroid/graphics/drawable/Drawable;

.field final e:Landroid/app/admin/DevicePolicyManager;

.field f:Ljava/lang/CharSequence;

.field private final g:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->b:Landroid/app/admin/DeviceAdminInfo;

    .line 43
    new-instance p2, Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->b:Landroid/app/admin/DeviceAdminInfo;

    invoke-static {v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->a(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->g:Landroid/os/UserHandle;

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->g:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->b:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->a:Ljava/lang/String;

    const-string p2, "device_policy"

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->e:Landroid/app/admin/DevicePolicyManager;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->b:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p2, p1}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->c:Ljava/lang/CharSequence;

    .line 49
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->b:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p2, p1}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->f:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Setting description to null because can\'t find resource: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DeviceAdminListItem"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->b:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p2, p1}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->g:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static a(Landroid/app/admin/DeviceAdminInfo;)I
    .locals 0

    .line 101
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 29
    check-cast p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;

    .line 1058
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->c:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
