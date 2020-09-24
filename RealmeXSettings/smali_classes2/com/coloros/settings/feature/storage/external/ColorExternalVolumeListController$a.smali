.class final Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController$a;
.super Landroid/os/storage/StorageEventListener;
.source "ColorExternalVolumeListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;)V
    .locals 1

    .line 204
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 205
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 0

    .line 221
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;

    if-nez p1, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->a()V

    return-void
.end method

.method public final onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 0

    .line 210
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;

    if-nez p2, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/feature/storage/b/d;->a(Landroid/os/storage/VolumeInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 215
    invoke-virtual {p2}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->a()V

    :cond_1
    return-void
.end method
