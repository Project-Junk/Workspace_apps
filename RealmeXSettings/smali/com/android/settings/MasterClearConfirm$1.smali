.class final Lcom/android/settings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$1;->a:Lcom/android/settings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MasterClearConfirm$1;)Landroid/app/ProgressDialog;
    .locals 3

    .line 1131
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$1;->a:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1132
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    .line 1133
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1134
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$1;->a:Lcom/android/settings/MasterClearConfirm;

    .line 1135
    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120d3e

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1134
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1136
    iget-object p0, p0, Lcom/android/settings/MasterClearConfirm$1;->a:Lcom/android/settings/MasterClearConfirm;

    .line 1137
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v1, 0x7f120d3d

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1136
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 79
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm$1;->a:Lcom/android/settings/MasterClearConfirm;

    .line 84
    invoke-virtual {p1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "persistent_data_block"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 85
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1;->a:Lcom/android/settings/MasterClearConfirm;

    .line 86
    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "oem_lock"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/oemlock/OemLockManager;

    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1;->a:Lcom/android/settings/MasterClearConfirm;

    .line 89
    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/m;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Lcom/android/settings/MasterClearConfirm$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/MasterClearConfirm$1$1;-><init>(Lcom/android/settings/MasterClearConfirm$1;Landroid/service/persistentdata/PersistentDataBlockManager;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 124
    invoke-virtual {v0, p1}, Lcom/android/settings/MasterClearConfirm$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm$1;->a:Lcom/android/settings/MasterClearConfirm;

    invoke-static {p1}, Lcom/android/settings/MasterClearConfirm;->a(Lcom/android/settings/MasterClearConfirm;)V

    return-void
.end method
