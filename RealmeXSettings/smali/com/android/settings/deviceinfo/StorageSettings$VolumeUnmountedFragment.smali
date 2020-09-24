.class public Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeUnmountedFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 425
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 2

    .line 427
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    .line 428
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;-><init>()V

    .line 431
    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 432
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 433
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string/jumbo v0, "volume_unmounted"

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x232

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 444
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 449
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12156c

    .line 451
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 450
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 453
    new-instance v2, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;-><init>(Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;Landroid/os/storage/VolumeInfo;Landroid/content/Context;)V

    const p1, 0x7f121589

    invoke-virtual {v1, p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f120491

    const/4 v0, 0x0

    .line 495
    invoke-virtual {v1, p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 497
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
