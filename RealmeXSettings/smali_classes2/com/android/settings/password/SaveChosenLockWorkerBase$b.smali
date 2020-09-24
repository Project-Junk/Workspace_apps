.class final Lcom/android/settings/password/SaveChosenLockWorkerBase$b;
.super Landroid/os/AsyncTask;
.source "SaveChosenLockWorkerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SaveChosenLockWorkerBase;
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
        "Landroid/util/Pair<",
        "Ljava/lang/Boolean;",
        "Landroid/content/Intent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/password/SaveChosenLockWorkerBase;


# direct methods
.method private constructor <init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase$b;->a:Lcom/android/settings/password/SaveChosenLockWorkerBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;B)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$b;-><init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2176
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase$b;->a:Lcom/android/settings/password/SaveChosenLockWorkerBase;

    invoke-virtual {p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->a()Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 172
    check-cast p1, Landroid/util/Pair;

    .line 1181
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1184
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120ca7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1185
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase$b;->a:Lcom/android/settings/password/SaveChosenLockWorkerBase;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->a(Landroid/content/Intent;)V

    return-void
.end method
