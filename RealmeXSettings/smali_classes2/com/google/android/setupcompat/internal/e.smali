.class public Lcom/google/android/setupcompat/internal/e;
.super Landroid/app/Fragment;
.source "LifecycleFragment.java"


# static fields
.field private static final a:Ljava/lang/String; = "e"


# instance fields
.field private b:Lcom/google/android/setupcompat/a/b;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/e;->d:J

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/e;->setRetainInstance(Z)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/setupcompat/internal/e;
    .locals 6

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/internal/h;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/h;

    move-result-object v0

    .line 1027
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1031
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2027
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "screenName"

    .line 1033
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "intentAction"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v2, v3}, Lcom/google/android/setupcompat/internal/h;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_2

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "lifecycle_monitor"

    .line 61
    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 63
    new-instance v1, Lcom/google/android/setupcompat/internal/e;

    invoke-direct {v1}, Lcom/google/android/setupcompat/internal/e;-><init>()V

    .line 65
    :try_start_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitNow()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 68
    sget-object v1, Lcom/google/android/setupcompat/internal/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error occurred when attach to Activity:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 73
    :cond_0
    instance-of v0, v3, Lcom/google/android/setupcompat/internal/e;

    if-nez v0, :cond_1

    .line 74
    sget-object v0, Lcom/google/android/setupcompat/internal/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Incorrect instance on lifecycle fragment."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :goto_0
    move-object v1, v3

    .line 79
    :goto_1
    check-cast v1, Lcom/google/android/setupcompat/internal/e;

    :cond_2
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenDuration"

    invoke-static {v0, p1}, Lcom/google/android/setupcompat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/setupcompat/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/e;->b:Lcom/google/android/setupcompat/a/b;

    return-void
.end method

.method public onDetach()V
    .locals 6

    .line 95
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/internal/e;->b:Lcom/google/android/setupcompat/a/b;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/google/android/setupcompat/internal/e;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-string v4, "Context cannot be null."

    .line 2067
    invoke-static {v0, v4}, Lcom/google/android/setupcompat/internal/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "Timer name cannot be null."

    .line 2068
    invoke-static {v1, v4}, Lcom/google/android/setupcompat/internal/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "Duration cannot be negative."

    .line 2069
    invoke-static {v4, v5}, Lcom/google/android/setupcompat/internal/g;->a(ZLjava/lang/String;)V

    .line 2070
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "MetricKey"

    .line 2071
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "timeMillis"

    .line 2072
    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2073
    invoke-static {v0}, Lcom/google/android/setupcompat/internal/h;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/google/android/setupcompat/internal/h;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 6

    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 108
    iget-wide v0, p0, Lcom/google/android/setupcompat/internal/e;->d:J

    invoke-static {}, Lcom/google/android/setupcompat/internal/b;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/setupcompat/internal/e;->c:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/e;->d:J

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 101
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 102
    invoke-static {}, Lcom/google/android/setupcompat/internal/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/e;->c:J

    return-void
.end method
