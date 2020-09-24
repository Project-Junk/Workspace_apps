.class public abstract Lcom/android/settings/applications/p;
.super Lcom/android/settings/applications/b;
.source "AppWithAdminGrantedPermissionsLister.java"


# instance fields
.field private final c:[Ljava/lang/String;

.field private final d:Landroid/content/pm/IPackageManager;

.field private final e:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;)V
    .locals 0

    .line 37
    invoke-direct {p0, p2, p5}, Lcom/android/settings/applications/b;-><init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V

    .line 38
    iput-object p1, p0, Lcom/android/settings/applications/p;->c:[Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/android/settings/applications/p;->d:Landroid/content/pm/IPackageManager;

    .line 40
    iput-object p4, p0, Lcom/android/settings/applications/p;->e:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/android/settings/applications/p;->c:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/p;->e:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/p;->a:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/p;->d:Landroid/content/pm/IPackageManager;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/settings/applications/o;->a([Ljava/lang/String;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    return p1
.end method
