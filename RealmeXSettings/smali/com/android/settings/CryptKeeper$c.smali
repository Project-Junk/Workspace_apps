.class final Lcom/android/settings/CryptKeeper$c;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$c;->b:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;B)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$c;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "CryptKeeper"

    .line 292
    invoke-static {}, Lcom/android/settings/CryptKeeper;->a()Landroid/os/storage/IStorageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "Validating encryption state."

    .line 294
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getEncryptionState()I

    move-result v1

    iput v1, p0, Lcom/android/settings/CryptKeeper$c;->a:I

    .line 296
    iget v1, p0, Lcom/android/settings/CryptKeeper$c;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Unexpectedly in CryptKeeper even though there is no encryption."

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 300
    :cond_0
    iget v1, p0, Lcom/android/settings/CryptKeeper$c;->a:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v1, "Unable to get encryption state properly"

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 287
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper$c;->a()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 287
    check-cast p1, Ljava/lang/Boolean;

    .line 1309
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$c;->b:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->e(Lcom/android/settings/CryptKeeper;)Z

    .line 1310
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "CryptKeeper"

    if-eqz p1, :cond_1

    const-string p1, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    .line 1311
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$c;->b:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->f(Lcom/android/settings/CryptKeeper;)Z

    .line 1313
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$c;->b:Lcom/android/settings/CryptKeeper;

    iget v0, p0, Lcom/android/settings/CryptKeeper$c;->a:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;Z)Z

    goto :goto_1

    :cond_1
    const-string p1, "Encryption state validated. Proceeding to configure UI"

    .line 1315
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :goto_1
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$c;->b:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->g(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method
