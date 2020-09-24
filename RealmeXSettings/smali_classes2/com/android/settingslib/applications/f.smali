.class public final Lcom/android/settingslib/applications/f;
.super Ljava/lang/Object;
.source "StorageStatsSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/f$b;,
        Lcom/android/settingslib/applications/f$a;,
        Lcom/android/settingslib/applications/f$c;
    }
.end annotation


# instance fields
.field private a:Landroid/app/usage/StorageStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    iput-object p1, p0, Lcom/android/settingslib/applications/f;->a:Landroid/app/usage/StorageStatsManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)J
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/settingslib/applications/f;->a:Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/f$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/android/settingslib/applications/f$b;

    iget-object v1, p0, Lcom/android/settingslib/applications/f;->a:Landroid/app/usage/StorageStatsManager;

    .line 55
    invoke-virtual {v1, p1, p2, p3}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settingslib/applications/f$b;-><init>(Landroid/app/usage/StorageStats;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/f$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/android/settingslib/applications/f$c;

    iget-object v1, p0, Lcom/android/settingslib/applications/f;->a:Landroid/app/usage/StorageStatsManager;

    .line 42
    invoke-virtual {v1, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settingslib/applications/f$c;-><init>(Landroid/app/usage/ExternalStorageStats;)V

    return-object v0
.end method
