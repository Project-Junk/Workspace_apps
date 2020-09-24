.class public final Lcom/coloros/settings/feature/language/region/c;
.super Ljava/lang/Object;
.source "ExSortHelp.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/language/region/c;->a:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/language/region/c;->d:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lcom/coloros/settings/feature/language/region/b;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/coloros/settings/feature/language/region/b;",
            ">(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/coloros/settings/feature/language/region/c;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 1101
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/language/region/b;->a:Landroid/content/Context;

    .line 40
    sput-object v1, Lcom/coloros/settings/feature/language/region/c;->b:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/region/b;->e()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/feature/language/region/c;->c:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/coloros/settings/feature/language/region/c;->a()Z

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    sget-object p0, Lcom/coloros/settings/feature/language/region/c;->a:Ljava/util/List;

    return-object p0

    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static a()Z
    .locals 5

    .line 48
    sget-object v0, Lcom/coloros/settings/feature/language/region/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    invoke-static {}, Lcom/coloros/settings/feature/language/region/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "$$"

    .line 57
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 59
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 60
    sget-object v4, Lcom/coloros/settings/feature/language/region/c;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 68
    :goto_1
    sget-object v1, Lcom/coloros/settings/feature/language/region/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    if-ge v0, v1, :cond_2

    .line 69
    sget-object v1, Lcom/coloros/settings/feature/language/region/c;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    .line 77
    sget-object v0, Lcom/coloros/settings/feature/language/region/c;->b:Landroid/content/Context;

    const-string v1, "oppo_settings_recent_sort"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/coloros/settings/feature/language/region/c;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recode ="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExSort"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static b(Lcom/coloros/settings/feature/language/region/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/coloros/settings/feature/language/region/b;",
            ">(TT;)V"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/coloros/settings/feature/language/region/c;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/region/b;->e()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/coloros/settings/feature/language/region/c;->c:Ljava/lang/String;

    .line 2101
    iget-object v1, p0, Lcom/coloros/settings/feature/language/region/b;->a:Landroid/content/Context;

    .line 87
    sput-object v1, Lcom/coloros/settings/feature/language/region/c;->b:Landroid/content/Context;

    .line 88
    invoke-static {}, Lcom/coloros/settings/feature/language/region/c;->a()Z

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    sget-object v2, Lcom/coloros/settings/feature/language/region/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/region/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$$"

    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/region/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "$$"

    .line 98
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2106
    sget-object v1, Lcom/coloros/settings/feature/language/region/c;->b:Landroid/content/Context;

    const-string v2, "oppo_settings_recent_sort"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2108
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ExSort"

    .line 2109
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "the save key ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/coloros/settings/feature/language/region/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", record ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    sget-object v2, Lcom/coloros/settings/feature/language/region/c;->c:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2111
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x0

    .line 101
    sput-object p0, Lcom/coloros/settings/feature/language/region/c;->c:Ljava/lang/String;

    .line 102
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
