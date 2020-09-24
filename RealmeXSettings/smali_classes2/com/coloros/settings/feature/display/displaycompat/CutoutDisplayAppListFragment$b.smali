.class final Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;
.super Landroid/os/AsyncTask;
.source "CutoutDisplayAppListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;
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
        "Ljava/util/List<",
        "Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;->a:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;B)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;-><init>(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2217
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;->a:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 208
    check-cast p1, Ljava/util/List;

    .line 1222
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1223
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;->a:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->b(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1224
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;->a:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->b(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1225
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;->a:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)V

    .line 1226
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;->a:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;Z)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .line 211
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 212
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;->a:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;Z)V

    return-void
.end method
