.class final Lcom/coloros/settings/feature/othersettings/recover/a$a;
.super Landroid/os/AsyncTask;
.source "AbsClearDataStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/recover/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field private a:Lcom/coloros/settings/feature/othersettings/recover/a;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/app/ProgressDialog;

.field private e:Landroid/service/persistentdata/PersistentDataBlockManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/a;Landroid/service/persistentdata/PersistentDataBlockManager;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/a$a;->a:Lcom/coloros/settings/feature/othersettings/recover/a;

    .line 94
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/a$a;->b:Ljava/lang/ref/WeakReference;

    .line 95
    iput-object p3, p0, Lcom/coloros/settings/feature/othersettings/recover/a$a;->e:Landroid/service/persistentdata/PersistentDataBlockManager;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/a;Landroid/service/persistentdata/PersistentDataBlockManager;B)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/othersettings/recover/a$a;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/a;Landroid/service/persistentdata/PersistentDataBlockManager;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3117
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/a$a;->e:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 2123
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/a$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2124
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 2125
    invoke-static {}, Lcom/coloros/settings/feature/othersettings/recover/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "WipePersistentDataTask#onPostExecute: context is "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2128
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/a$a;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 2129
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 2131
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/coloros/settings/feature/othersettings/recover/a$a;->c:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2132
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/a$a;->a:Lcom/coloros/settings/feature/othersettings/recover/a;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/othersettings/recover/a;->a(Lcom/coloros/settings/feature/othersettings/recover/a;Landroid/content/Context;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    .line 99
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/a$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 101
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 102
    invoke-static {}, Lcom/coloros/settings/feature/othersettings/recover/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "WipePersistentDataTask#onPreExecute: context is "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 1136
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1137
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v3, 0x0

    .line 1138
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v3, 0x7f120d3e

    .line 1139
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x7f120d3d

    .line 1140
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 106
    iput-object v2, p0, Lcom/coloros/settings/feature/othersettings/recover/a$a;->d:Landroid/app/ProgressDialog;

    .line 107
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/a$a;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 111
    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/othersettings/recover/a$a;->c:I

    const/16 v0, 0xe

    .line 112
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
