.class public final Lcom/android/settings/security/CredentialStorage;
.super Landroidx/fragment/app/FragmentActivity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/CredentialStorage$a;,
        Lcom/android/settings/security/CredentialStorage$c;,
        Lcom/android/settings/security/CredentialStorage$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/security/KeyStore;

.field private b:Lcom/android/internal/widget/LockPatternUtils;

.field private c:Landroid/os/Bundle;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 74
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CredentialStorage;->a:Landroid/security/KeyStore;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/settings/security/CredentialStorage;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/security/CredentialStorage;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/security/CredentialStorage;->b:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method private a()Z
    .locals 5

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/security/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.certinstaller"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/security/CredentialStorage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/security/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/security/CredentialStorage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 373
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v2

    .line 379
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/security/CredentialStorage;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    const-string v0, "CredentialStorage"

    const-string v1, "com.android.credentials.INSTALL must be started with startActivityForResult"

    .line 382
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 385
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 389
    :cond_3
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "user"

    .line 395
    invoke-virtual {p0, v3}, Lcom/android/settings/security/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 396
    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 398
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v0, v3, :cond_4

    return v1

    :catch_0
    :cond_4
    return v2
.end method

.method static synthetic b(Lcom/android/settings/security/CredentialStorage;)Z
    .locals 2

    .line 1405
    invoke-virtual {p0}, Lcom/android/settings/security/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1406
    new-instance v1, Lcom/android/settings/password/b;

    invoke-direct {v1, p0}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;)V

    const p0, 0x7f120652

    .line 1408
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x1

    .line 1407
    invoke-virtual {v1, v0, p0, v0}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/android/settings/security/CredentialStorage;)V
    .locals 2

    .line 2325
    invoke-virtual {p0}, Lcom/android/settings/security/CredentialStorage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1218ad

    const/4 v1, 0x0

    .line 2327
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 2328
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 413
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 419
    iput-boolean p3, p0, Lcom/android/settings/security/CredentialStorage;->d:Z

    .line 421
    new-instance p1, Lcom/android/settings/security/CredentialStorage$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/security/CredentialStorage$c;-><init>(Lcom/android/settings/security/CredentialStorage;B)V

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/android/settings/security/CredentialStorage$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/security/CredentialStorage;->finish()V

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/security/CredentialStorage;->b:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public final onResume()V
    .locals 11

    .line 95
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/security/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user"

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/settings/security/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string v3, "no_config_credentials"

    .line 100
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "com.android.credentials.RESET"

    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 105
    iget-boolean v0, p0, Lcom/android/settings/security/CredentialStorage;->d:Z

    if-nez v0, :cond_b

    .line 106
    new-instance v0, Lcom/android/settings/security/CredentialStorage$b;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/security/CredentialStorage$b;-><init>(Lcom/android/settings/security/CredentialStorage;B)V

    goto/16 :goto_1

    :cond_0
    const-string v2, "com.android.credentials.INSTALL"

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/security/CredentialStorage;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CredentialStorage;->c:Landroid/os/Bundle;

    .line 1126
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/security/CredentialStorage;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1155
    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage;->c:Landroid/os/Bundle;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 1159
    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage;->c:Landroid/os/Bundle;

    const/4 v4, 0x0

    .line 1160
    iput-object v4, p0, Lcom/android/settings/security/CredentialStorage;->c:Landroid/os/Bundle;

    const/4 v4, -0x1

    const-string v5, "install_as_uid"

    .line 1162
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "CredentialStorage"

    if-eq v5, v4, :cond_4

    .line 1164
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {v5, v7}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1165
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v7, 0x3f2

    if-eq v5, v7, :cond_3

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to install credentials as uid "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": cross-user installs may only target wifi uids"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1174
    :cond_3
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x2000000

    .line 1175
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 1176
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 1177
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/security/CredentialStorage;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "user_private_key_name"

    .line 1182
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const-string v8, " as uid "

    const-string v9, "Failed to install "

    if-eqz v7, :cond_7

    .line 1183
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "user_private_key_data"

    .line 1184
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 1186
    iget-object v10, p0, Lcom/android/settings/security/CredentialStorage;->a:Landroid/security/KeyStore;

    invoke-virtual {v10, v2, v7, v5, v3}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0x3e8

    if-eq v5, v7, :cond_6

    if-ne v5, v4, :cond_7

    .line 1197
    :cond_6
    new-instance v1, Lcom/android/settings/security/CredentialStorage$a;

    const-string v7, "^USRPKEY_"

    const-string v10, ""

    .line 1198
    invoke-virtual {v2, v7, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/security/CredentialStorage$a;-><init>(Lcom/android/settings/security/CredentialStorage;Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/security/CredentialStorage$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v3

    :cond_7
    const-string v2, "user_certificate_name"

    .line 1205
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1206
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "user_certificate_data"

    .line 1207
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 1209
    iget-object v10, p0, Lcom/android/settings/security/CredentialStorage;->a:Landroid/security/KeyStore;

    invoke-virtual {v10, v2, v7, v5, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    const-string v2, "ca_certificates_name"

    .line 1215
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1216
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "ca_certificates_data"

    .line 1217
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1219
    iget-object v7, p0, Lcom/android/settings/security/CredentialStorage;->a:Landroid/security/KeyStore;

    invoke-virtual {v7, v2, v0, v5, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1226
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.security.action.KEYCHAIN_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0, v0}, Lcom/android/settings/security/CredentialStorage;->sendBroadcast(Landroid/content/Intent;)V

    .line 1229
    invoke-virtual {p0, v4}, Lcom/android/settings/security/CredentialStorage;->setResult(I)V

    :cond_a
    :goto_0
    if-eqz v1, :cond_b

    .line 1130
    invoke-virtual {p0}, Lcom/android/settings/security/CredentialStorage;->finish()V

    .line 114
    :cond_b
    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/security/CredentialStorage;->d:Z

    return-void

    .line 117
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/security/CredentialStorage;->finish()V

    return-void
.end method
