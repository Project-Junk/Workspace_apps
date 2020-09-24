.class public Lcom/color/compat/os/storage/StorageVolumeNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageVolumeNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorReadOnlyType(Landroid/os/storage/StorageVolume;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/os/storage/StorageVolumeWrapper;->getReadOnlyType(Landroid/os/storage/StorageVolume;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "StorageVolumeNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getFatVolumeId(Landroid/os/storage/StorageVolume;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/os/storage/StorageVolumeWrapper;->getFatVolumeId(Landroid/os/storage/StorageVolume;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "StorageVolumeNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/os/storage/StorageVolumeWrapper;->getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "StorageVolumeNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
