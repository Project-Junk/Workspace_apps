.class final Lcom/android/settings/users/UserSettings$8;
.super Landroid/os/AsyncTask;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$8;->a:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1433
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$8;->a:Lcom/android/settings/users/UserSettings;

    invoke-static {p1}, Lcom/android/settings/users/UserSettings;->d(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1434
    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$8;->a:Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/users/UserSettings;->a(Landroid/content/Context;Landroid/content/pm/UserInfo;)V

    .line 1438
    :cond_1
    iget-object p1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 425
    check-cast p1, Ljava/lang/String;

    .line 1428
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$8;->a:Lcom/android/settings/users/UserSettings;

    invoke-static {v0, p1}, Lcom/android/settings/users/UserSettings;->a(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V

    return-void
.end method
