.class final Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ComponentName;

.field final synthetic b:Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;Landroid/content/ComponentName;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->b:Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    iput-object p2, p0, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 619
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->b:Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    .line 1600
    invoke-virtual {p1}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/RunningServiceDetails;

    .line 619
    iget-object p2, p0, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->a:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/RunningServiceDetails;->a(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 621
    invoke-virtual {p1, p2}, Lcom/android/settings/applications/RunningServiceDetails$a;->a(Z)V

    :cond_0
    return-void
.end method
