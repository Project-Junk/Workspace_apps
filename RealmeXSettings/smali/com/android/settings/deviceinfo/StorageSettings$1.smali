.class final Lcom/android/settings/deviceinfo/StorageSettings$1;
.super Landroid/os/storage/StorageEventListener;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/deviceinfo/StorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$1;->a:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$1;->a:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageSettings;->a(Lcom/android/settings/deviceinfo/StorageSettings;)V

    return-void
.end method

.method public final onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 0

    .line 123
    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageSettings;->a(Landroid/os/storage/VolumeInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$1;->a:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageSettings;->a(Lcom/android/settings/deviceinfo/StorageSettings;)V

    :cond_0
    return-void
.end method
