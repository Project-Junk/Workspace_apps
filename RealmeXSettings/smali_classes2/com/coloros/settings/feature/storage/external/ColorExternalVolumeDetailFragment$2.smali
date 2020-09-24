.class final Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment$2;
.super Ljava/lang/Object;
.source "ColorExternalVolumeDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 202
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment$2;->a:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment$2;->a:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->c(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment$2;->a:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->b(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/coloros/settings/feature/storage/b/d;->b(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment$2;->a:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->finishFragment()V

    :cond_0
    return-void
.end method
