.class public Lcom/android/settings/wifi/NetworkRequestDialogActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "NetworkRequestDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a()Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NetworkRequestDialogFragment"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
