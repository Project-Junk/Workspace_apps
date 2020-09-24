.class final Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$2;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$2;->a:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$2;->a:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
