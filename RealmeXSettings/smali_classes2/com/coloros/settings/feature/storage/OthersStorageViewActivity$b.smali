.class final Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$b;
.super Landroid/os/AsyncTask;
.source "OthersStorageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
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
.field final synthetic a:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$b;->a:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;B)V
    .locals 0

    .line 894
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$b;-><init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2898
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$b;->a:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1904
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$b;->a:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->d(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1905
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$b;->a:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->d(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->notifyDataSetChanged()V

    .line 1908
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$b;->a:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->e(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)Landroid/view/Menu;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1909
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$b;->a:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->f(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V

    :cond_1
    return-void
.end method
