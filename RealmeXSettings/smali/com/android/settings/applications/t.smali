.class public abstract Lcom/android/settings/applications/t;
.super Lcom/android/settings/applications/a;
.source "InstalledAppCounter.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p3}, Lcom/android/settings/applications/a;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 38
    iput p2, p0, Lcom/android/settings/applications/t;->a:I

    return-void
.end method

.method public static a(ILandroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    .line 48
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_0

    .line 49
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 50
    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    if-eq v2, p0, :cond_0

    return v1

    .line 54
    :cond_0
    iget p0, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x80

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    return v2

    .line 57
    :cond_1
    iget p0, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p0, v2

    if-nez p0, :cond_2

    return v2

    .line 60
    :cond_2
    new-instance p0, Landroid/content/Intent;

    const/4 v3, 0x0

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {p0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 61
    invoke-virtual {p0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const p2, 0xc0200

    .line 63
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 69
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method


# virtual methods
.method protected final a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 43
    iget v0, p0, Lcom/android/settings/applications/t;->a:I

    iget-object v1, p0, Lcom/android/settings/applications/t;->b:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1, p1}, Lcom/android/settings/applications/t;->a(ILandroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    return p1
.end method
