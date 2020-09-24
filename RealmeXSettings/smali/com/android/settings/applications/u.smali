.class public abstract Lcom/android/settings/applications/u;
.super Lcom/android/settings/applications/b;
.source "InstalledAppLister.java"


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/b;-><init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/settings/applications/u;->a:Landroid/content/pm/PackageManager;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/android/settings/applications/t;->a(ILandroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    return p1
.end method
