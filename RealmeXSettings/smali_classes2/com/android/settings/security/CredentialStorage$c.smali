.class final Lcom/android/settings/security/CredentialStorage$c;
.super Landroid/os/AsyncTask;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CredentialStorage;
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
.field final synthetic a:Lcom/android/settings/security/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/security/CredentialStorage;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/settings/security/CredentialStorage$c;->a:Lcom/android/settings/security/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/security/CredentialStorage;B)V
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialStorage$c;-><init>(Lcom/android/settings/security/CredentialStorage;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage$c;->a:Lcom/android/settings/security/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/security/CredentialStorage;->a(Lcom/android/settings/security/CredentialStorage;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->resetKeyStore(I)V

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage$c;->a:Lcom/android/settings/security/CredentialStorage;

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6

    .line 290
    :try_start_1
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    invoke-interface {v1}, Landroid/security/IKeyChainService;->reset()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :try_start_2
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    :catch_0
    move-exception v0

    .line 300
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_4
    const-string v2, "CredentialStorage"

    const-string v3, "resetKeyStore: "

    .line 294
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 298
    :try_start_5
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_1

    :catch_2
    move-exception v0

    .line 300
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_1
    return-object v1

    .line 292
    :catch_3
    :try_start_7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 298
    :try_start_8
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_2

    :catch_4
    move-exception v0

    .line 300
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_6

    :goto_2
    return-object v1

    .line 298
    :goto_3
    :try_start_a
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_4

    :catch_5
    move-exception v0

    .line 300
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    :goto_4
    throw v1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_6

    .line 305
    :catch_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 306
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 279
    invoke-direct {p0}, Lcom/android/settings/security/CredentialStorage$c;->a()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 279
    check-cast p1, Ljava/lang/Boolean;

    .line 1312
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1313
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$c;->a:Lcom/android/settings/security/CredentialStorage;

    const v1, 0x7f12064a

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1314
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1315
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$c;->a:Lcom/android/settings/security/CredentialStorage;

    invoke-static {p1}, Lcom/android/settings/security/CredentialStorage;->c(Lcom/android/settings/security/CredentialStorage;)V

    goto :goto_0

    .line 1317
    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$c;->a:Lcom/android/settings/security/CredentialStorage;

    const v1, 0x7f12064d

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1318
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1320
    :goto_0
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$c;->a:Lcom/android/settings/security/CredentialStorage;

    invoke-virtual {p1}, Lcom/android/settings/security/CredentialStorage;->finish()V

    return-void
.end method
