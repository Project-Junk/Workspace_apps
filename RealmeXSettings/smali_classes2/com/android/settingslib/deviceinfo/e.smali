.class public interface abstract Lcom/android/settingslib/deviceinfo/e;
.super Ljava/lang/Object;
.source "StorageVolumeProvider.java"


# virtual methods
.method public abstract a(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
