.class final Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/storage/VolumeInfo;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;Landroid/os/storage/VolumeInfo;Landroid/content/Context;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->c:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->a:Landroid/os/storage/VolumeInfo;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 464
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->c:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    .line 465
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 466
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 465
    invoke-static {v0, p1, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->c:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    .line 469
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 468
    invoke-static {v1, p1, v2}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->c:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "no_physical_media"

    .line 481
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 486
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->a:Landroid/os/storage/VolumeInfo;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->a:Landroid/os/storage/VolumeInfo;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "no_usb_file_transfer"

    .line 487
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 492
    :cond_1
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSettings$a;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->a:Landroid/os/storage/VolumeInfo;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/deviceinfo/StorageSettings$a;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/android/settings/deviceinfo/StorageSettings$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
