.class final Lcom/android/settings/MasterClearConfirm$1$1;
.super Landroid/os/AsyncTask;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClearConfirm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Landroid/app/ProgressDialog;

.field final synthetic c:Landroid/service/persistentdata/PersistentDataBlockManager;

.field final synthetic d:Lcom/android/settings/MasterClearConfirm$1;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm$1;Landroid/service/persistentdata/PersistentDataBlockManager;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$1$1;->d:Lcom/android/settings/MasterClearConfirm$1;

    iput-object p2, p0, Lcom/android/settings/MasterClearConfirm$1$1;->c:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2099
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm$1$1;->c:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1105
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm$1$1;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->hide()V

    .line 1106
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm$1$1;->d:Lcom/android/settings/MasterClearConfirm$1;

    iget-object p1, p1, Lcom/android/settings/MasterClearConfirm$1;->a:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {p1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1107
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm$1$1;->d:Lcom/android/settings/MasterClearConfirm$1;

    iget-object p1, p1, Lcom/android/settings/MasterClearConfirm$1;->a:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {p1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->a:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 1108
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm$1$1;->d:Lcom/android/settings/MasterClearConfirm$1;

    iget-object p1, p1, Lcom/android/settings/MasterClearConfirm$1;->a:Lcom/android/settings/MasterClearConfirm;

    invoke-static {p1}, Lcom/android/settings/MasterClearConfirm;->a(Lcom/android/settings/MasterClearConfirm;)V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->d:Lcom/android/settings/MasterClearConfirm$1;

    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm$1;->a(Lcom/android/settings/MasterClearConfirm$1;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->b:Landroid/app/ProgressDialog;

    .line 115
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->d:Lcom/android/settings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$1;->a:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->a:I

    .line 121
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->d:Lcom/android/settings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$1;->a:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    return-void
.end method
