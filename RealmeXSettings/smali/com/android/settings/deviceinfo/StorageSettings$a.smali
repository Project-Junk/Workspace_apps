.class public final Lcom/android/settings/deviceinfo/StorageSettings$a;
.super Landroid/os/AsyncTask;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/storage/StorageManager;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .locals 1

    .line 359
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$a;->a:Landroid/content/Context;

    .line 361
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$a;->a:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$a;->b:Landroid/os/storage/StorageManager;

    .line 362
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$a;->c:Ljava/lang/String;

    .line 363
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$a;->b:Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$a;->d:Ljava/lang/String;

    return-void
.end method

.method private varargs a()Ljava/lang/Exception;
    .locals 2

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$a;->b:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->mount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 353
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings$a;->a()Ljava/lang/Exception;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 353
    check-cast p1, Ljava/lang/Exception;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1379
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$a;->a:Landroid/content/Context;

    const v2, 0x7f12158e

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$a;->d:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1380
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1382
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to mount "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageSettings"

    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1383
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$a;->a:Landroid/content/Context;

    const v2, 0x7f12158d

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$a;->d:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1384
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
