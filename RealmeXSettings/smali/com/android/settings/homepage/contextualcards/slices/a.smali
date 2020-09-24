.class final Lcom/android/settings/homepage/contextualcards/slices/a;
.super Ljava/lang/Object;
.source "NotificationMultiChannelAppRow.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/settings/notification/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settings/notification/k;

.field private final c:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/k;Landroid/content/pm/PackageInfo;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/a;->a:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/a;->b:Lcom/android/settings/notification/k;

    .line 41
    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/a;->c:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/a;->c:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/a;->c:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1}, Lcom/android/settings/notification/k;->f(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/a;->a:Landroid/content/Context;

    const-class v3, Landroid/app/role/RoleManager;

    .line 1050
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/role/RoleManager;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/a;->c:Landroid/content/pm/PackageInfo;

    .line 1049
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/k$a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
