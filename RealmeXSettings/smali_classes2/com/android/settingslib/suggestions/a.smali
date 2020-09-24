.class public final Lcom/android/settingslib/suggestions/a;
.super Ljava/lang/Object;
.source "SuggestionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/suggestions/a$a;
    }
.end annotation


# instance fields
.field a:Landroid/service/settings/suggestions/ISuggestionService;

.field b:Lcom/android/settingslib/suggestions/a$a;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/content/Intent;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/settingslib/suggestions/a$a;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/suggestions/a;->c:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Lcom/android/settingslib/suggestions/a;->b:Lcom/android/settingslib/suggestions/a$a;

    .line 75
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/suggestions/a;->d:Landroid/content/Intent;

    .line 1153
    new-instance p1, Lcom/android/settingslib/suggestions/a$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/suggestions/a$1;-><init>(Lcom/android/settingslib/suggestions/a;)V

    .line 76
    iput-object p1, p0, Lcom/android/settingslib/suggestions/a;->e:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/android/settingslib/suggestions/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/suggestions/a;->d:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settingslib/suggestions/a;->e:Landroid/content/ServiceConnection;

    .line 84
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    .line 83
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/suggestions/a;->a:Landroid/service/settings/suggestions/ISuggestionService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/android/settingslib/suggestions/a;->a:Landroid/service/settings/suggestions/ISuggestionService;

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/suggestions/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/suggestions/a;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    const-string v0, "SuggestionController"

    .line 2146
    iget-object v1, p0, Lcom/android/settingslib/suggestions/a;->a:Landroid/service/settings/suggestions/ISuggestionService;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    .line 107
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/suggestions/a;->a:Landroid/service/settings/suggestions/ISuggestionService;

    invoke-interface {v1}, Landroid/service/settings/suggestions/ISuggestionService;->getSuggestions()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    const-string v3, "Error when calling getSuggestion()"

    .line 112
    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_2
    move-exception v1

    const-string v3, "mRemote service detached before able to query"

    .line 109
    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method
