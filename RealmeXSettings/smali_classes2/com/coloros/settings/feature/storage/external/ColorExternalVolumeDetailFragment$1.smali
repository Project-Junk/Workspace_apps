.class final Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment$1;
.super Landroid/os/storage/StorageEventListener;
.source "ColorExternalVolumeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment$1;->a:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 0

    .line 193
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment$1;->a:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;)V

    return-void
.end method

.method public final onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 0

    .line 186
    invoke-static {p1}, Lcom/coloros/settings/feature/storage/b/d;->a(Landroid/os/storage/VolumeInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment$1;->a:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;)V

    :cond_0
    return-void
.end method
