.class public final Lcom/android/settings/dashboard/f;
.super Ljava/lang/Object;
.source "SummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/f$d;,
        Lcom/android/settings/dashboard/f$c;,
        Lcom/android/settings/dashboard/f$a;,
        Lcom/android/settings/dashboard/f$b;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Ljava/lang/String; = "SUMMARY_PROVIDER_FACTORY"


# instance fields
.field final a:Lcom/android/settings/dashboard/b;

.field final b:Ljava/lang/String;

.field c:Lcom/android/settings/dashboard/f$a;

.field private final d:Landroid/app/Activity;

.field private final e:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/settings/dashboard/f$b;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/android/settings/dashboard/f$d;

.field private final h:Landroid/os/HandlerThread;

.field private i:Z

.field private j:Z

.field private k:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/f;->e:Landroid/util/ArrayMap;

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/f;->f:Landroid/util/ArrayMap;

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/f;->k:Landroid/util/ArraySet;

    .line 67
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/f;->a:Lcom/android/settings/dashboard/b;

    .line 69
    iput-object p2, p0, Lcom/android/settings/dashboard/f;->b:Ljava/lang/String;

    .line 70
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "SummaryLoader"

    const/16 v1, 0xa

    invoke-direct {p2, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/android/settings/dashboard/f;->h:Landroid/os/HandlerThread;

    .line 71
    iget-object p2, p0, Lcom/android/settings/dashboard/f;->h:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance p2, Lcom/android/settings/dashboard/f$d;

    iget-object v0, p0, Lcom/android/settings/dashboard/f;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/dashboard/f$d;-><init>(Lcom/android/settings/dashboard/f;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/dashboard/f;->g:Lcom/android/settings/dashboard/f$d;

    .line 73
    iput-object p1, p0, Lcom/android/settings/dashboard/f;->d:Landroid/app/Activity;

    return-void
.end method

.method private synthetic a(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/android/settings/dashboard/f;->a:Lcom/android/settings/dashboard/b;

    iget-object v1, p0, Lcom/android/settings/dashboard/f;->b:Ljava/lang/String;

    .line 91
    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/b;->a(Ljava/lang/String;)Lcom/android/settingslib/h/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3251
    invoke-virtual {v0}, Lcom/android/settingslib/h/b;->b()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3254
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/h/b;->a()Ljava/util/List;

    move-result-object v0

    .line 3255
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 3257
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/h/c;

    .line 4130
    iget-object v5, v4, Lcom/android/settingslib/h/c;->d:Landroid/content/Intent;

    .line 3258
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    return-void

    .line 103
    :cond_3
    iget-object p1, p0, Lcom/android/settings/dashboard/f;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5109
    invoke-virtual {v1, p1}, Lcom/android/settingslib/h/c;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 5116
    iget-object p1, p0, Lcom/android/settings/dashboard/f;->f:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/settings/dashboard/f;->a:Lcom/android/settings/dashboard/b;

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/b;->a(Lcom/android/settingslib/h/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5199
    iput-object p2, v1, Lcom/android/settingslib/h/c;->e:Ljava/lang/CharSequence;

    .line 5118
    iget-object p1, p0, Lcom/android/settings/dashboard/f;->c:Lcom/android/settings/dashboard/f$a;

    if-eqz p1, :cond_4

    .line 5119
    invoke-interface {p1, v1}, Lcom/android/settings/dashboard/f$a;->b(Lcom/android/settingslib/h/c;)V

    :cond_4
    return-void
.end method

.method private b(Lcom/android/settingslib/h/c;)Lcom/android/settings/dashboard/f$b;
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/settings/dashboard/f;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1123
    iget-object v1, p1, Lcom/android/settingslib/h/c;->c:Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1241
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    .line 2130
    iget-object p1, p1, Lcom/android/settingslib/h/c;->d:Landroid/content/Intent;

    const-string v2, "SummaryLoader"

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No metadata specified for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    .line 172
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No fragment specified for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 178
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "SUMMARY_PROVIDER_FACTORY"

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dashboard/f$c;

    .line 181
    iget-object v0, p0, Lcom/android/settings/dashboard/f;->d:Landroid/app/Activity;

    invoke-interface {p1, v0, p0}, Lcom/android/settings/dashboard/f$c;->createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public static synthetic lambda$e8XUeSzbzzEagmUe3F_abruZ4s8(Lcom/android/settings/dashboard/f;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/f;->a(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/dashboard/f;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/f;->b(Z)V

    return-void
.end method

.method public final a(Lcom/android/settings/dashboard/f$b;Ljava/lang/CharSequence;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/dashboard/f;->e:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 88
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$f$e8XUeSzbzzEagmUe3F_abruZ4s8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/dashboard/-$$Lambda$f$e8XUeSzbzzEagmUe3F_abruZ4s8;-><init>(Lcom/android/settings/dashboard/f;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method final declared-synchronized a(Lcom/android/settingslib/h/c;)V
    .locals 2

    monitor-enter p0

    .line 243
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/f;->b(Lcom/android/settingslib/h/c;)Lcom/android/settings/dashboard/f$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/settings/dashboard/f;->e:Landroid/util/ArrayMap;

    .line 3130
    iget-object p1, p1, Lcom/android/settingslib/h/c;->d:Landroid/content/Intent;

    .line 246
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Z)V
    .locals 4

    .line 132
    iget-boolean v0, p0, Lcom/android/settings/dashboard/f;->i:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 135
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/dashboard/f;->i:Z

    const/4 v0, 0x0

    move v1, v0

    .line 137
    :goto_0
    iget-object v2, p0, Lcom/android/settings/dashboard/f;->k:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/android/settings/dashboard/f;->d:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/dashboard/f;->k:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/f;->k:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 142
    iget-object v1, p0, Lcom/android/settings/dashboard/f;->g:Lcom/android/settings/dashboard/f$d;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/f$d;->removeMessages(I)V

    if-nez p1, :cond_2

    .line 145
    iget-object p1, p0, Lcom/android/settings/dashboard/f;->g:Lcom/android/settings/dashboard/f$d;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/android/settings/dashboard/f$d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/android/settings/dashboard/f;->e:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 150
    iget-object p1, p0, Lcom/android/settings/dashboard/f;->g:Lcom/android/settings/dashboard/f$d;

    invoke-virtual {p1, v0}, Lcom/android/settings/dashboard/f$d;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 151
    iget-object p1, p0, Lcom/android/settings/dashboard/f;->g:Lcom/android/settings/dashboard/f$d;

    invoke-virtual {p1, v0}, Lcom/android/settings/dashboard/f$d;->sendEmptyMessage(I)Z

    return-void

    .line 155
    :cond_3
    iget-object p1, p0, Lcom/android/settings/dashboard/f;->g:Lcom/android/settings/dashboard/f$d;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/android/settings/dashboard/f$d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void
.end method

.method final declared-synchronized b(Z)V
    .locals 4

    monitor-enter p0

    .line 226
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/f;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 227
    monitor-exit p0

    return-void

    .line 229
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/settings/dashboard/f;->j:Z

    .line 233
    iget-object v0, p0, Lcom/android/settings/dashboard/f;->e:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/f$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :try_start_2
    invoke-interface {v1, p1}, Lcom/android/settings/dashboard/f$b;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SummaryLoader"

    const-string v3, "Problem in setListening"

    .line 237
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 240
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
