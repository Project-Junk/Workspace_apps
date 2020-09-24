.class final Lcom/android/settings/TrustedCredentialsSettings$b;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/TrustedCredentialsSettings;

.field private final b:Lcom/android/settings/TrustedCredentialsSettings$c;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$c;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->a:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1028
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->b:Lcom/android/settings/TrustedCredentialsSettings$c;

    .line 1029
    invoke-static {p1, p0}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$b;)Lcom/android/settings/TrustedCredentialsSettings$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$c;B)V
    .locals 0

    .line 1024
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$b;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$c;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 3

    .line 1035
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->a:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->b(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->a:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->b(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->b:Lcom/android/settings/TrustedCredentialsSettings$c;

    iget v2, v2, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/KeyChain$KeyChainConnection;

    .line 1038
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .line 1039
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->b:Lcom/android/settings/TrustedCredentialsSettings$c;

    iget-boolean v2, v2, Lcom/android/settings/TrustedCredentialsSettings$c;->f:Z

    if-eqz v2, :cond_0

    .line 1040
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->b:Lcom/android/settings/TrustedCredentialsSettings$c;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings$c;->b(Lcom/android/settings/TrustedCredentialsSettings$c;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 1041
    invoke-interface {v1, v2}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    .line 1042
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    .line 1044
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->b:Lcom/android/settings/TrustedCredentialsSettings$c;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings$c;->a(Lcom/android/settings/TrustedCredentialsSettings$c;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1046
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 1049
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while toggling alias "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->b:Lcom/android/settings/TrustedCredentialsSettings$c;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings$c;->a(Lcom/android/settings/TrustedCredentialsSettings$c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrustedCredentialsSettings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1024
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$b;->a()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1024
    check-cast p1, Ljava/lang/Boolean;

    .line 2056
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2057
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->b:Lcom/android/settings/TrustedCredentialsSettings$c;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    iget-boolean p1, p1, Lcom/android/settings/TrustedCredentialsSettings$f;->e:Z

    if-eqz p1, :cond_0

    .line 2058
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->b:Lcom/android/settings/TrustedCredentialsSettings$c;

    iget-boolean v0, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->f:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->f:Z

    goto :goto_0

    .line 2060
    :cond_0
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->b:Lcom/android/settings/TrustedCredentialsSettings$c;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$c;->c(Lcom/android/settings/TrustedCredentialsSettings$c;)Lcom/android/settings/TrustedCredentialsSettings$e;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->b:Lcom/android/settings/TrustedCredentialsSettings$c;

    invoke-virtual {p1, v0}, Lcom/android/settings/TrustedCredentialsSettings$e;->a(Lcom/android/settings/TrustedCredentialsSettings$c;)V

    .line 2062
    :goto_0
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->b:Lcom/android/settings/TrustedCredentialsSettings$c;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$c;->c(Lcom/android/settings/TrustedCredentialsSettings$c;)Lcom/android/settings/TrustedCredentialsSettings$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->notifyDataSetChanged()V

    goto :goto_1

    .line 2065
    :cond_1
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->b:Lcom/android/settings/TrustedCredentialsSettings$c;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$c;->c(Lcom/android/settings/TrustedCredentialsSettings$c;)Lcom/android/settings/TrustedCredentialsSettings$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->a()V

    .line 2067
    :goto_1
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$b;->a:Lcom/android/settings/TrustedCredentialsSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$b;)Lcom/android/settings/TrustedCredentialsSettings$b;

    return-void
.end method
