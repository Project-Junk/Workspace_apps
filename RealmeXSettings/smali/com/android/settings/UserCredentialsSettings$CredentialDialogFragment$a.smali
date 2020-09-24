.class final Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$a;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/settings/UserCredentialsSettings$b;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/settings/UserCredentialsSettings$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

.field private b:Landroid/content/Context;

.field private c:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$a;->a:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$a;->b:Landroid/content/Context;

    .line 188
    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$a;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private varargs a([Lcom/android/settings/UserCredentialsSettings$b;)[Lcom/android/settings/UserCredentialsSettings$b;
    .locals 9

    const-string v0, "CredentialDialogFragment"

    .line 193
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 194
    invoke-virtual {v3}, Lcom/android/settings/UserCredentialsSettings$b;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1225
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$a;->a:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v4}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1232
    :try_start_1
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    .line 1233
    iget-object v3, v3, Lcom/android/settings/UserCredentialsSettings$b;->a:Ljava/lang/String;

    invoke-interface {v5, v3}, Landroid/security/IKeyChainService;->removeKeyPair(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1237
    :goto_1
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "Removing credentials"

    .line 1235
    invoke-static {v0, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1237
    :goto_2
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 1238
    throw p1

    :catch_1
    move-exception v3

    const-string v4, "Connecting to KeyChain"

    .line 1227
    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2204
    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .line 2518
    iget-object v5, v3, Lcom/android/settings/UserCredentialsSettings$b;->c:Ljava/util/EnumSet;

    .line 2208
    sget-object v6, Lcom/android/settings/UserCredentialsSettings$b$a;->c:Lcom/android/settings/UserCredentialsSettings$b$a;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x3f2

    if-eqz v6, :cond_1

    .line 2209
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "USRPKEY_"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3515
    iget-object v8, v3, Lcom/android/settings/UserCredentialsSettings$b;->a:Ljava/lang/String;

    .line 2209
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 2212
    :cond_1
    sget-object v6, Lcom/android/settings/UserCredentialsSettings$b$a;->b:Lcom/android/settings/UserCredentialsSettings$b$a;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2213
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "USRCERT_"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4515
    iget-object v8, v3, Lcom/android/settings/UserCredentialsSettings$b;->a:Ljava/lang/String;

    .line 2213
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 2216
    :cond_2
    sget-object v6, Lcom/android/settings/UserCredentialsSettings$b$a;->a:Lcom/android/settings/UserCredentialsSettings$b$a;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2217
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CACERT_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5515
    iget-object v3, v3, Lcom/android/settings/UserCredentialsSettings$b;->a:Ljava/lang/String;

    .line 2217
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-object p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 182
    check-cast p1, [Lcom/android/settings/UserCredentialsSettings$b;

    invoke-direct {p0, p1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$a;->a([Lcom/android/settings/UserCredentialsSettings$b;)[Lcom/android/settings/UserCredentialsSettings$b;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .line 182
    check-cast p1, [Lcom/android/settings/UserCredentialsSettings$b;

    .line 6243
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$a;->c:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/settings/UserCredentialsSettings;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6244
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$a;->c:Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/android/settings/UserCredentialsSettings;

    .line 6245
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 6246
    iget-object v4, v4, Lcom/android/settings/UserCredentialsSettings$b;->a:Ljava/lang/String;

    .line 7095
    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7098
    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    const v6, 0x7f121808

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-virtual {v0, v6, v7}, Lcom/android/settings/UserCredentialsSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6248
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings;->a()V

    :cond_2
    return-void
.end method
