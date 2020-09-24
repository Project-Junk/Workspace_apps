.class final Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;Landroid/content/Intent;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->b:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 807
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->b:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->a:Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/android/settings/m;->a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method
