.class final Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$4;
.super Landroid/os/storage/StorageEventListener;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$4;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 0

    .line 163
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$4;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {p1, p3}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->a(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;I)I

    :cond_0
    return-void
.end method
