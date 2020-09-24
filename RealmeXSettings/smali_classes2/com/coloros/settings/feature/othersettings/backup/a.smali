.class public final Lcom/coloros/settings/feature/othersettings/backup/a;
.super Landroid/os/AsyncTask;
.source "CategoriesUpdateTask.java"


# annotations
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
.field private final a:Lcom/android/settings/dashboard/a;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/a;->b:Ljava/lang/ref/WeakReference;

    .line 30
    invoke-static {p1}, Lcom/android/settings/dashboard/a;->a(Landroid/content/Context;)Lcom/android/settings/dashboard/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/backup/a;->a:Lcom/android/settings/dashboard/a;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1035
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/backup/a;->b:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1036
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/backup/a;->a:Lcom/android/settings/dashboard/a;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/dashboard/a;->c(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
