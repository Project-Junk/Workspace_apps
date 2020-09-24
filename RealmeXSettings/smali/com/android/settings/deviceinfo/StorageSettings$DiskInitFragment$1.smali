.class final Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;->c:Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 534
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;->a:Landroid/content/Context;

    const-class v0, Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;->b:Ljava/lang/String;

    const-string v0, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;->c:Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
