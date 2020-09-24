.class final Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/storage/StorageManager;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->d:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->a:Landroid/os/storage/StorageManager;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 737
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->a:Landroid/os/storage/StorageManager;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->c:Landroid/widget/EditText;

    .line 738
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-virtual {p1, p2, v0}, Landroid/os/storage/StorageManager;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
