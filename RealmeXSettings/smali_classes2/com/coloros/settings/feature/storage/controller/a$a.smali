.class final Lcom/coloros/settings/feature/storage/controller/a$a;
.super Landroid/os/AsyncTask;
.source "ColorStorageItemPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/controller/a;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/storage/controller/a;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a$a;->a:Lcom/coloros/settings/feature/storage/controller/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/storage/controller/a;B)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/controller/a$a;-><init>(Lcom/coloros/settings/feature/storage/controller/a;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 2324
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a$a;->a:Lcom/coloros/settings/feature/storage/controller/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/controller/a;->a(Lcom/coloros/settings/feature/storage/controller/a;)Ljava/util/ArrayList;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a$a;->a:Lcom/coloros/settings/feature/storage/controller/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/controller/a;->a(Lcom/coloros/settings/feature/storage/controller/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 2325
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a$a;->a:Lcom/coloros/settings/feature/storage/controller/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/controller/a;->a(Lcom/coloros/settings/feature/storage/controller/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/storage/a/a;

    .line 2326
    iget-wide v2, v2, Lcom/coloros/settings/feature/storage/a/a;->b:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 2329
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 320
    check-cast p1, Ljava/lang/Long;

    .line 1334
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1335
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/a$a;->a:Lcom/coloros/settings/feature/storage/controller/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/controller/a;->b(Lcom/coloros/settings/feature/storage/controller/a;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/a$a;->a:Lcom/coloros/settings/feature/storage/controller/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/controller/a;->b(Lcom/coloros/settings/feature/storage/controller/a;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/a$a;->a:Lcom/coloros/settings/feature/storage/controller/a;

    const/16 v1, 0x12

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/settings/feature/storage/controller/a;->a(IJ)V

    :cond_0
    return-void
.end method
