.class final Lcom/android/settings/CustomListPreference$ConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "CustomListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/settings/CustomListPreference$ConfirmDialogFragment$1;->a:Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/android/settings/CustomListPreference$ConfirmDialogFragment$1;->a:Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;

    invoke-virtual {p1}, Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 215
    check-cast p1, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {p1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->c()V

    :cond_0
    return-void
.end method
