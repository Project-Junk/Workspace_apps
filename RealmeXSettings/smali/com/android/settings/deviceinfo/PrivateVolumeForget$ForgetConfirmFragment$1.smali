.class final Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeForget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/storage/StorageManager;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->c:Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->a:Landroid/os/storage/StorageManager;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->a:Landroid/os/storage/StorageManager;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/storage/StorageManager;->forgetVolume(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->c:Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
