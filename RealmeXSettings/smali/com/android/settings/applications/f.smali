.class public Lcom/android/settings/applications/f;
.super Lcom/android/settings/applications/e;
.source "AppStateInstallAppsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/f$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

.field private static final g:Ljava/lang/String; = "f"


# instance fields
.field private final h:Landroid/content/pm/IPackageManager;

.field private final i:Landroid/app/AppOpsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    new-instance v0, Lcom/android/settings/applications/f$1;

    invoke-direct {v0}, Lcom/android/settings/applications/f$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/f;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V
    .locals 0

    .line 48
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    .line 49
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/f;->h:Landroid/content/pm/IPackageManager;

    const-string p2, "appops"

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/f;->i:Landroid/app/AppOpsManager;

    return-void
.end method

.method private a(ILjava/lang/String;)I
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/f;->i:Landroid/app/AppOpsManager;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/f;->h:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 73
    :catch_0
    sget-object p1, Lcom/android/settings/applications/f;->g:Ljava/lang/String;

    const-string p2, "PackageManager dead. Cannot get permission info"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lcom/android/settings/applications/f$a;
    .locals 2

    .line 93
    new-instance v0, Lcom/android/settings/applications/f$a;

    invoke-direct {v0}, Lcom/android/settings/applications/f$a;-><init>()V

    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 94
    invoke-direct {p0, v1, p1}, Lcom/android/settings/applications/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/applications/f$a;->a:Z

    .line 96
    invoke-direct {p0, p2, p1}, Lcom/android/settings/applications/f;->a(ILjava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/android/settings/applications/f$a;->b:I

    return-object v0
.end method

.method protected final a()V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/f;->b:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 64
    iget-object v3, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/applications/f;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Ljava/lang/String;I)V
    .locals 0

    .line 55
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/applications/f;->a(Ljava/lang/String;I)Lcom/android/settings/applications/f$a;

    move-result-object p2

    iput-object p2, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    return-void
.end method
