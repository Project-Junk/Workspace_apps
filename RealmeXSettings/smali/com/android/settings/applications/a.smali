.class public abstract Lcom/android/settings/applications/a;
.super Landroid/os/AsyncTask;
.source "AppCounter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field protected final b:Landroid/content/pm/PackageManager;

.field protected final c:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/android/settings/applications/a;->b:Landroid/content/pm/PackageManager;

    const-string/jumbo p2, "user"

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/a;->c:Landroid/os/UserManager;

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 0

    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/a;->a(I)V

    return-void
.end method

.method private varargs b()Ljava/lang/Integer;
    .locals 7

    .line 40
    iget-object v0, p0, Lcom/android/settings/applications/a;->c:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 41
    iget-object v4, p0, Lcom/android/settings/applications/a;->b:Landroid/content/pm/PackageManager;

    const v5, 0x8200

    .line 44
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v6

    if-eqz v6, :cond_1

    const/high16 v6, 0x400000

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    or-int/2addr v5, v6

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 42
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v3

    .line 46
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 47
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    new-array v0, v0, [Ljava/lang/Void;

    invoke-direct {p0}, Lcom/android/settings/applications/a;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected abstract a(I)V
.end method

.method protected abstract a(Landroid/content/pm/ApplicationInfo;)Z
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/applications/a;->b()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/a;->a(Ljava/lang/Integer;)V

    return-void
.end method
