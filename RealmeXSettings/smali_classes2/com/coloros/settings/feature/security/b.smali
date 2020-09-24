.class public Lcom/coloros/settings/feature/security/b;
.super Ljava/lang/Object;
.source "SafePackageInstallManager.java"


# static fields
.field private static final a:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Lcom/coloros/settings/feature/security/b;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/security/b;->a:Landroid/util/ArraySet;

    .line 41
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    .line 48
    sget-object v0, Lcom/coloros/settings/feature/security/b;->a:Landroid/util/ArraySet;

    const-string v1, "es.plus.yomvi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/coloros/settings/feature/security/b;->a:Landroid/util/ArraySet;

    const-string v1, "com.movistar.android.mimovistar.es"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/coloros/settings/feature/security/b;->a:Landroid/util/ArraySet;

    const-string v1, "com.zeptolab.ctr2.tier.movistar"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/coloros/settings/feature/security/b;->a:Landroid/util/ArraySet;

    const-string v1, "com.gameloft.android.GloftSMIF"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/coloros/settings/feature/security/b;->a:Landroid/util/ArraySet;

    const-string v1, "com.gameloft.android.GloftDMKF"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/coloros/settings/feature/security/b;->a:Landroid/util/ArraySet;

    const-string v1, "com.amazon.mShop.android.shopping"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/coloros/settings/feature/security/b;->a:Landroid/util/ArraySet;

    const-string v1, "com.amazon.appmanager"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/b;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/b;->e:Z

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/feature/security/-$$Lambda$b$QnVF4_40mBiRMHsreAFdKtkFcuw;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/security/-$$Lambda$b$QnVF4_40mBiRMHsreAFdKtkFcuw;-><init>(Lcom/coloros/settings/feature/security/b;Landroid/content/Context;)V

    const-string p1, "SafePackageInstallManager"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/coloros/settings/feature/security/b;
    .locals 2

    .line 58
    sget-object v0, Lcom/coloros/settings/feature/security/b;->c:Lcom/coloros/settings/feature/security/b;

    if-nez v0, :cond_0

    .line 59
    const-class v0, Lcom/coloros/settings/feature/security/b;

    monitor-enter v0

    .line 60
    :try_start_0
    new-instance v1, Lcom/coloros/settings/feature/security/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/security/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/settings/feature/security/b;->c:Lcom/coloros/settings/feature/security/b;

    .line 61
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 63
    :cond_0
    :goto_0
    sget-object p0, Lcom/coloros/settings/feature/security/b;->c:Lcom/coloros/settings/feature/security/b;

    return-object p0
.end method

.method private static synthetic a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 3

    .line 157
    sget-boolean v0, Lcom/coloros/settings/a;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 158
    sget-object v0, Lcom/coloros/settings/feature/security/b;->a:Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    return v1

    .line 160
    :cond_1
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 162
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "settings_shared"

    .line 168
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "hasInstallAuthSkipItem"

    .line 169
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private synthetic c(Landroid/content/Context;)V
    .locals 5

    .line 2091
    sget-boolean v0, Lcom/coloros/settings/a;->b:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2096
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/au;->a(Landroid/content/Context;)Lcom/coloros/settings/utils/au;

    move-result-object v0

    const-string v1, "safe_packageinstall_list"

    .line 2097
    invoke-virtual {v0, v1}, Lcom/coloros/settings/utils/au;->a(Ljava/lang/String;)Lcom/coloros/settings/utils/au;

    move-result-object v0

    const v1, 0x7fffffff

    const-string v2, "skip_permission"

    .line 3087
    invoke-virtual {v0, v2, v1}, Lcom/coloros/settings/utils/au;->a(Ljava/lang/String;I)Lcom/coloros/settings/utils/au;

    move-result-object v0

    const-string v2, "account_settings"

    .line 4087
    invoke-virtual {v0, v2, v1}, Lcom/coloros/settings/utils/au;->a(Ljava/lang/String;I)Lcom/coloros/settings/utils/au;

    move-result-object v0

    .line 2100
    invoke-virtual {v0}, Lcom/coloros/settings/utils/au;->a()Lcom/coloros/settings/utils/au$a;

    move-result-object v0

    .line 2101
    invoke-virtual {v0}, Lcom/coloros/settings/utils/au$a;->a()Lcom/coloros/settings/utils/au$a;

    move-result-object v0

    const-string v1, "skip_permission"

    .line 2103
    invoke-virtual {v0, v1}, Lcom/coloros/settings/utils/au$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2104
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2105
    sget-object v2, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v1, "account_settings"

    .line 2108
    invoke-virtual {v0, v1}, Lcom/coloros/settings/utils/au$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2109
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 2112
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2115
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SafePackageInstallManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v1

    :goto_0
    const-string v3, "settings_shared"

    .line 4173
    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 4174
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "hasInstallAuthSkipItem"

    .line 4175
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4176
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2120
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/security/b;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 2121
    :try_start_1
    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/b;->e:Z

    .line 2122
    iget-object v0, p0, Lcom/coloros/settings/feature/security/b;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2123
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2072
    :cond_4
    :goto_1
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2073
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.heytap.market"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2074
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.oppo.market"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2075
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.nearme.gamecenter"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2076
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.coloros.backuprestore"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2077
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.android.incallui"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2078
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.android.contacts"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2079
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.android.phone"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2080
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.android.server.telecom"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2081
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.coloros.mcs"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2082
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.heytap.mcs"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2083
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.android.mms"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2084
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.aspire.popular"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2085
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.aspire.mm"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2086
    sget-object p1, Lcom/coloros/settings/feature/security/b;->b:Landroid/util/ArraySet;

    const-string v0, "com.cmic.mmnes"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public static synthetic lambda$52sx42Ai7tSqP11KRYVZxw7ljNY(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/security/b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$QnVF4_40mBiRMHsreAFdKtkFcuw(Lcom/coloros/settings/feature/security/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/b;->c(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 132
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 136
    :cond_0
    sget-boolean v0, Lcom/coloros/settings/a;->b:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_3

    .line 138
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/b;->e:Z

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/coloros/settings/feature/security/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/settings/feature/security/b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 142
    :try_start_1
    iget-object v1, p0, Lcom/coloros/settings/feature/security/b;->d:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "SafePackageInstallManager"

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 149
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/b;->e:Z

    if-nez v0, :cond_3

    const-string v0, "SafePackageInstallManager"

    const-string v1, "Load RomXml takes more than 5s"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/coloros/settings/feature/security/-$$Lambda$owrpH0Ja1aQA4S-FVzFfeunQrfc;->INSTANCE:Lcom/coloros/settings/feature/security/-$$Lambda$owrpH0Ja1aQA4S-FVzFfeunQrfc;

    .line 155
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/coloros/settings/feature/security/-$$Lambda$b$52sx42Ai7tSqP11KRYVZxw7ljNY;->INSTANCE:Lcom/coloros/settings/feature/security/-$$Lambda$b$52sx42Ai7tSqP11KRYVZxw7ljNY;

    .line 156
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 164
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 1083
    :cond_4
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
