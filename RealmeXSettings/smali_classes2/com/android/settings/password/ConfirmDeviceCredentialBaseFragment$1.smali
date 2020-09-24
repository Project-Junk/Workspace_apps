.class final Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;Z)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->b:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    iput-boolean p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 221
    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->a:Z

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->b:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->b:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
