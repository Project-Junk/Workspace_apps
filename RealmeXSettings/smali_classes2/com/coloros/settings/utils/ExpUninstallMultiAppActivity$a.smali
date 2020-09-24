.class final Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$a;
.super Landroid/os/AsyncTask;
.source "ExpUninstallMultiAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
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
.field a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$a;->b:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$a;->c:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$a;->a:Landroid/app/ProgressDialog;

    .line 36
    iput-object p2, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1049
    new-instance p1, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$b;

    iget-object v0, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$a;->b:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

    invoke-direct {p1, v0}, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$b;-><init>(Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;)V

    .line 1050
    iget-object v0, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$a;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/p;->a(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver$Stub;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$a;->b:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

    invoke-static {v0}, Lcom/coloros/settings/utils/p;->a(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$a;->a:Landroid/app/ProgressDialog;

    .line 44
    iget-object v0, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
