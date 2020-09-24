.class public final Lcom/coloros/settings/utils/ae;
.super Landroid/os/Environment;
.source "OppoEnvironment.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Landroid/os/storage/StorageManager;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 66
    invoke-static {p0}, Lcom/coloros/settings/utils/ae;->c(Landroid/content/Context;)V

    .line 67
    sget-object p0, Lcom/coloros/settings/utils/ae;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/ae;->c:Landroid/os/storage/StorageManager;

    .line 68
    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 1060
    invoke-static {p0}, Lcom/coloros/settings/utils/ae;->c(Landroid/content/Context;)V

    .line 1061
    sget-object p0, Lcom/coloros/settings/utils/ae;->a:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/ae;->c:Landroid/os/storage/StorageManager;

    .line 1062
    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v0, "mounted"

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "storage"

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 29
    sput-object p0, Lcom/coloros/settings/utils/ae;->c:Landroid/os/storage/StorageManager;

    if-nez p0, :cond_0

    return-void

    .line 33
    :cond_0
    sget-object p0, Lcom/coloros/settings/utils/ae;->c:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 39
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/coloros/settings/utils/ae;->c:Landroid/os/storage/StorageManager;

    aget-object v2, p0, v0

    .line 41
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/coloros/settings/utils/ae;->b:Ljava/lang/String;

    goto :goto_1

    .line 44
    :cond_2
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/coloros/settings/utils/ae;->a:Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
