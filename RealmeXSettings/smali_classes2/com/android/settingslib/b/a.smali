.class public final Lcom/android/settingslib/b/a;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/b/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/UserHandle;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/android/settingslib/b/a$a;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/b/a$a;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/b/a;->a:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/b/a;->b:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/b/a;->c:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/b/a;->d:Ljava/util/HashMap;

    .line 67
    iput-object p1, p0, Lcom/android/settingslib/b/a;->f:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/settingslib/b/a;->e:Landroid/os/UserHandle;

    .line 69
    iput-object p3, p0, Lcom/android/settingslib/b/a;->g:Lcom/android/settingslib/b/a$a;

    const/4 p1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settingslib/b/a;->a([Landroid/accounts/Account;)V

    return-void
.end method

.method private a([Landroid/accounts/Account;)V
    .locals 7

    .line 202
    iget-object v0, p0, Lcom/android/settingslib/b/a;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/b/a;->a(Landroid/content/Context;)V

    if-nez p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/android/settingslib/b/a;->f:Landroid/content/Context;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/b/a;->e:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object p1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object v0, p0, Lcom/android/settingslib/b/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 208
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 209
    aget-object v2, p1, v1

    .line 210
    iget-object v3, p0, Lcom/android/settingslib/b/a;->b:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    iget-object v3, p0, Lcom/android/settingslib/b/a;->b:Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1252
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/b/a;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1253
    iget-object p1, p0, Lcom/android/settingslib/b/a;->e:Landroid/os/UserHandle;

    .line 1254
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 1253
    invoke-static {p1}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object p1

    .line 1255
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_5

    .line 1256
    aget-object v2, p1, v0

    .line 1257
    iget-object v3, p0, Lcom/android/settingslib/b/a;->d:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 1259
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    iget-object v4, p0, Lcom/android/settingslib/b/a;->d:Ljava/util/HashMap;

    iget-object v5, v2, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v4, 0x2

    const-string v5, "AuthenticatorHelper"

    .line 1262
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1263
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Added authority "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to accountType "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_4
    iget-object v2, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    :cond_5
    iget-boolean p1, p0, Lcom/android/settingslib/b/a;->h:Z

    if-eqz p1, :cond_6

    .line 216
    iget-object p1, p0, Lcom/android/settingslib/b/a;->g:Lcom/android/settingslib/b/a$a;

    iget-object v0, p0, Lcom/android/settingslib/b/a;->e:Landroid/os/UserHandle;

    invoke-interface {p1, v0}, Lcom/android/settingslib/b/a$a;->a(Landroid/os/UserHandle;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/b/a;->c:Ljava/util/Map;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/b/a;->c:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/android/settingslib/b/a;->c:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    monitor-exit v0

    return-object p1

    .line 101
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    iget-object v0, p0, Lcom/android/settingslib/b/a;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/b/a;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 105
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settingslib/b/a;->e:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/android/settingslib/b/a;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 108
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/b/a;->e:Landroid/os/UserHandle;

    .line 107
    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/b/a;->c:Ljava/util/Map;

    monitor-enter v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    :try_start_2
    iget-object v2, p0, Lcom/android/settingslib/b/a;->c:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    return-object v1

    :catchall_1
    move-exception p1

    .line 101
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    .line 176
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/b/a;->e:Landroid/os/UserHandle;

    .line 177
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object p1

    const/4 v0, 0x0

    .line 178
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settingslib/b/a;->a:Ljava/util/Map;

    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/settingslib/b/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a()[Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/settingslib/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/settingslib/b/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    return-object p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "AuthenticatorHelper"

    .line 129
    iget-object v1, p0, Lcom/android/settingslib/b/a;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/b/a;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 132
    iget-object v2, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settingslib/b/a;->e:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 138
    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "No label icon for account type "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :catch_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "No label name for account type "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final b()V
    .locals 7

    .line 229
    iget-boolean v0, p0, Lcom/android/settingslib/b/a;->h:Z

    if-nez v0, :cond_0

    .line 230
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 231
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DEVICE_STORAGE_OK"

    .line 234
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/android/settingslib/b/a;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settingslib/b/a;->e:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/android/settingslib/b/a;->h:Z

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/settingslib/b/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public final c()V
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/android/settingslib/b/a;->h:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settingslib/b/a;->f:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/android/settingslib/b/a;->h:Z

    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 223
    iget-object p1, p0, Lcom/android/settingslib/b/a;->f:Landroid/content/Context;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/b/a;->e:Landroid/os/UserHandle;

    .line 224
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object p1

    .line 225
    invoke-direct {p0, p1}, Lcom/android/settingslib/b/a;->a([Landroid/accounts/Account;)V

    return-void
.end method
