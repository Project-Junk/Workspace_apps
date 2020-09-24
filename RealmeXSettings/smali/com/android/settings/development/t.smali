.class public final Lcom/android/settings/development/t;
.super Lcom/android/settingslib/development/b;
.source "SystemServerHeapDumpPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/os/UserManager;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 50
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/development/t;->a:Landroid/os/UserManager;

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/development/t;->b:Landroid/os/Handler;

    return-void
.end method

.method private static synthetic a(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$QSQnqEflyunCWNO8qwY2xRC7pyc(Landroidx/preference/Preference;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/development/t;->a(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "system_server_heap_dump"

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 67
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "system_server_heap_dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 72
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/development/t;->mContext:Landroid/content/Context;

    const v2, 0x7f1204ab

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 75
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestSystemServerHeapDump()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/development/t;->b:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/development/-$$Lambda$t$QSQnqEflyunCWNO8qwY2xRC7pyc;

    invoke-direct {v2, p1}, Lcom/android/settings/development/-$$Lambda$t$QSQnqEflyunCWNO8qwY2xRC7pyc;-><init>(Landroidx/preference/Preference;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PrefControllerMixin"

    const-string v2, "error taking system heap dump"

    .line 79
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    iget-object p1, p0, Lcom/android/settings/development/t;->mContext:Landroid/content/Context;

    const v0, 0x7f12092b

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method public final isAvailable()Z
    .locals 2

    .line 56
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/t;->a:Landroid/os/UserManager;

    const-string v1, "no_debugging_features"

    .line 57
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
