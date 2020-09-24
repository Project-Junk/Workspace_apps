.class public final Lcom/android/settings/datetime/timezone/model/b;
.super Ljava/lang/Object;
.source "TimeZoneData.java"


# static fields
.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/datetime/timezone/model/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Llibcore/timezone/CountryZonesFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Llibcore/timezone/CountryZonesFinder;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/b;->c:Llibcore/timezone/CountryZonesFinder;

    .line 58
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/model/b;->c:Llibcore/timezone/CountryZonesFinder;

    invoke-virtual {p1}, Llibcore/timezone/CountryZonesFinder;->lookupAllCountryIsoCodes()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/model/b;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/b;->a:Ljava/util/Set;

    return-void
.end method

.method public static declared-synchronized a()Lcom/android/settings/datetime/timezone/model/b;
    .locals 3

    const-class v0, Lcom/android/settings/datetime/timezone/model/b;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/android/settings/datetime/timezone/model/b;->b:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/settings/datetime/timezone/model/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datetime/timezone/model/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 48
    monitor-exit v0

    return-object v1

    .line 50
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/settings/datetime/timezone/model/b;

    invoke-static {}, Llibcore/timezone/TimeZoneFinder;->getInstance()Llibcore/timezone/TimeZoneFinder;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/timezone/TimeZoneFinder;->getCountryZonesFinder()Llibcore/timezone/CountryZonesFinder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/datetime/timezone/model/b;-><init>(Llibcore/timezone/CountryZonesFinder;)V

    .line 51
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/datetime/timezone/model/b;->b:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 89
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    invoke-static {v1}, Lcom/android/settings/datetime/timezone/model/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/b;->c:Llibcore/timezone/CountryZonesFinder;

    .line 70
    invoke-virtual {v0, p1}, Llibcore/timezone/CountryZonesFinder;->lookupCountryTimeZonesForZoneId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 71
    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1}, Landroidx/collection/ArraySet;-><init>()V

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llibcore/timezone/CountryTimeZones;

    .line 73
    new-instance v3, Lcom/android/settings/datetime/timezone/model/a;

    invoke-direct {v3, v2}, Lcom/android/settings/datetime/timezone/model/a;-><init>(Llibcore/timezone/CountryTimeZones;)V

    .line 1059
    iget-object v2, v3, Lcom/android/settings/datetime/timezone/model/a;->a:Ljava/util/List;

    .line 74
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v3}, Lcom/android/settings/datetime/timezone/model/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final b(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/a;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/model/b;->c:Llibcore/timezone/CountryZonesFinder;

    .line 83
    invoke-virtual {v1, p1}, Llibcore/timezone/CountryZonesFinder;->lookupCountryTimeZones(Ljava/lang/String;)Llibcore/timezone/CountryTimeZones;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 84
    :cond_1
    new-instance v0, Lcom/android/settings/datetime/timezone/model/a;

    invoke-direct {v0, p1}, Lcom/android/settings/datetime/timezone/model/a;-><init>(Llibcore/timezone/CountryTimeZones;)V

    return-object v0
.end method
