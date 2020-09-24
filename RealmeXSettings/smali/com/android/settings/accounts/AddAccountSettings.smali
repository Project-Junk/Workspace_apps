.class public Lcom/android/settings/accounts/AddAccountSettings;
.super Landroid/app/Activity;
.source "AddAccountSettings.java"


# instance fields
.field private a:Landroid/app/PendingIntent;

.field private final b:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    new-instance v0, Lcom/android/settings/accounts/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AddAccountSettings$1;-><init>(Lcom/android/settings/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->b:Landroid/accounts/AccountManagerCallback;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/accounts/AddAccountSettings;->a:Landroid/app/PendingIntent;

    return-object p0
.end method

.method private a()V
    .locals 6

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account_types"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 228
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/Settings$ChooseAccountActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz v2, :cond_1

    .line 233
    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->d:Landroid/os/UserHandle;

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p0, v4, v0}, Lcom/android/settings/accounts/AddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/os/UserHandle;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/accounts/AddAccountSettings;->d:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->a:Landroid/app/PendingIntent;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/android/settings/accounts/AddAccountSettings;->a()V

    return-void

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    return-void

    .line 206
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 207
    iget-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->a:Landroid/app/PendingIntent;

    if-eqz p1, :cond_3

    .line 208
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->a:Landroid/app/PendingIntent;

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    :goto_0
    return-void

    :cond_4
    if-nez p2, :cond_6

    if-eqz p3, :cond_5

    .line 196
    iget-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->d:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, p1}, Lcom/android/settings/accounts/AddAccountSettings;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 198
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    return-void

    :cond_6
    const-string p1, "selected_account"

    .line 203
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1241
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1243
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1253
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1254
    new-instance p3, Landroid/content/ComponentName;

    const-string v1, "SHOULDN\'T RESOLVE!"

    invoke-direct {p3, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1255
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1256
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1258
    invoke-static {p0, p2, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->a:Landroid/app/PendingIntent;

    .line 1259
    iget-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->a:Landroid/app/PendingIntent;

    const-string p2, "pendingIntent"

    invoke-virtual {v5, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1260
    invoke-static {p0}, Lcom/android/settings/m;->d(Landroid/content/Context;)Z

    move-result p1

    const-string p2, "hasMultipleUsers"

    invoke-virtual {v5, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1261
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/accounts/AddAccountSettings;->b:Landroid/accounts/AccountManagerCallback;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings/accounts/AddAccountSettings;->d:Landroid/os/UserHandle;

    invoke-virtual/range {v1 .. v9}, Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 1270
    iput-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->c:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 142
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    if-eqz p1, :cond_0

    const-string v0, "AddAccountCalled"

    .line 145
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->c:Z

    const/4 p1, 0x2

    const-string v0, "AddAccountSettings"

    .line 146
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "restored"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo p1, "user"

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AddAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 150
    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/m;->a(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->d:Landroid/os/UserHandle;

    .line 152
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->d:Landroid/os/UserHandle;

    const-string v1, "no_modify_accounts"

    invoke-virtual {p1, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f1217fd

    const/4 v0, 0x1

    .line 154
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    return-void

    .line 159
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->c:Z

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->d:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    return-void

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->d:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 169
    invoke-direct {p0}, Lcom/android/settings/accounts/AddAccountSettings;->a()V

    return-void

    .line 173
    :cond_4
    new-instance p1, Lcom/android/settings/password/b;

    invoke-direct {p1, p0}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x3

    const v1, 0x7f12177e

    .line 175
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AddAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accounts/AddAccountSettings;->d:Landroid/os/UserHandle;

    .line 177
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 174
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_5

    .line 178
    invoke-direct {p0}, Lcom/android/settings/accounts/AddAccountSettings;->a()V

    :cond_5
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 219
    iget-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->c:Z

    const-string v1, "AddAccountCalled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "AddAccountSettings"

    const/4 v0, 0x2

    .line 220
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "saved"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
