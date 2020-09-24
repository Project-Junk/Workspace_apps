.class final Lcom/android/settings/CryptKeeper$a;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$a;->a:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;B)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$a;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 186
    invoke-static {}, Lcom/android/settings/CryptKeeper;->a()Landroid/os/storage/IStorageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 188
    :try_start_0
    aget-object p0, p0, v1

    invoke-interface {v0, p0}, Landroid/os/storage/IStorageManager;->decryptStorage(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "CryptKeeper"

    const-string v1, "Error while decrypting..."

    .line 190
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    .line 191
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$a;->a:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0, p1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper$a;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 170
    check-cast p1, Ljava/lang/Integer;

    .line 1197
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 1200
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$a;->a:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1201
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$a;->a:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$a;->a:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->c(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1202
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$a;->a:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$a;->a:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->c(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1204
    :cond_0
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$a;->a:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0a0650

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f12153a

    .line 1205
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a04b8

    .line 1206
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$a;->a(I)V

    const p1, 0x7f0a06b8

    .line 1207
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$a;->a(I)V

    const p1, 0x7f0a03bc

    .line 1208
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$a;->a(I)V

    const p1, 0x7f0a04a4

    .line 1209
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$a;->a(I)V

    const p1, 0x7f0a0243

    .line 1210
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$a;->a(I)V

    return-void

    .line 1211
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2

    .line 1213
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.FACTORY_RESET"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android"

    .line 1214
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 1215
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.REASON"

    const-string v1, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    .line 1216
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$a;->a:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0, p1}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 1218
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1220
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$a;->a:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0d0131

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 1221
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$a;->a:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->d(Lcom/android/settings/CryptKeeper;)V

    return-void

    .line 1224
    :cond_3
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$a;->a:Lcom/android/settings/CryptKeeper;

    invoke-static {v0, p1}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    .line 180
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$a;->a:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->b(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method
