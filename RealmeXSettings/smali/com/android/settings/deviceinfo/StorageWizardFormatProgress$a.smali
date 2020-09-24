.class public final Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;
.super Landroid/os/AsyncTask;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

.field private volatile b:I

.field private volatile c:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/16 v0, 0x14

    .line 82
    iput v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->b:I

    return-void
.end method

.method private varargs a()Ljava/lang/Exception;
    .locals 8

    .line 88
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->a:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 89
    iget-object v1, v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->a:Landroid/os/storage/StorageManager;

    .line 91
    :try_start_0
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->a(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->c:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->partitionPrivate(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 93
    new-array v2, v2, [Ljava/lang/Integer;

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->publishProgress([Ljava/lang/Object;)V

    const/16 v2, 0x32

    .line 95
    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->c(I)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 96
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a$1;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v5, v6}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    const-wide/16 v5, 0x3c

    .line 110
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    const-string v5, "run"

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->c:J

    .line 116
    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->c:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    const-string v3, "primary_physical"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "StorageSettings"

    const-string v3, "Just formatted primary physical; silently moving storage to new emulated volume"

    .line 119
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$b;

    invoke-direct {v2, v4}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$b;-><init>(B)V

    invoke-virtual {v1, v0, v2}, Landroid/os/storage/StorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->c:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;[Ljava/lang/Object;)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V
    .locals 1

    .line 141
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->a:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 142
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->a:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->b:I

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->a(I)V

    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->a()Ljava/lang/Exception;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 79
    check-cast p1, Ljava/lang/Exception;

    .line 1147
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->a:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 1148
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    const-string v2, "StorageSettings"

    if-eqz p1, :cond_0

    const-string v3, "Failed to partition"

    .line 1153
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1154
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1155
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    return-void

    .line 1159
    :cond_0
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->a(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1191
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "New volume took "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->c:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms to run benchmark"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->c:J

    const-wide/16 v4, 0x7d0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_2

    const/4 p1, 0x0

    const-string/jumbo v0, "sys.debug.storage_slow"

    .line 1193
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1196
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->a:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->h()V

    return-void

    .line 1194
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->a:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 1212
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "format_slow"

    .line 1213
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1214
    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->startActivity(Landroid/content/Intent;)V

    .line 1215
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    return-void

    .line 1199
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->a:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->h()V

    :cond_4
    return-void
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 1

    .line 79
    check-cast p1, [Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 1136
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->b:I

    .line 1137
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->a:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->b:I

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->a(I)V

    return-void
.end method
