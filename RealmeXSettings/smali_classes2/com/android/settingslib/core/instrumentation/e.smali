.class public final Lcom/android/settingslib/core/instrumentation/e;
.super Ljava/lang/Object;
.source "SharedPreferencesLogger.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/core/instrumentation/e$b;,
        Lcom/android/settingslib/core/instrumentation/e$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/android/settingslib/core/instrumentation/d;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/instrumentation/d;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/settingslib/core/instrumentation/e;->c:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/settingslib/core/instrumentation/e;->a:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/android/settingslib/core/instrumentation/e;->b:Lcom/android/settingslib/core/instrumentation/d;

    .line 47
    new-instance p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/core/instrumentation/e;->d:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/core/instrumentation/e;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/e;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settingslib/core/instrumentation/e;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/core/instrumentation/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/core/instrumentation/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2164
    new-instance v0, Lcom/android/settingslib/core/instrumentation/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/core/instrumentation/e$a;-><init>(Lcom/android/settingslib/core/instrumentation/e;B)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, p0, v2}, Lcom/android/settingslib/core/instrumentation/e$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/e;->a:Ljava/lang/String;

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez p3, :cond_0

    .line 111
    iget-object p1, p0, Lcom/android/settingslib/core/instrumentation/e;->d:Ljava/util/Set;

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/android/settingslib/core/instrumentation/e;->d:Ljava/util/Set;

    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 119
    :cond_0
    instance-of p1, p2, Ljava/lang/Long;

    const/high16 p3, -0x80000000

    const v0, 0x7fffffff

    if-eqz p1, :cond_3

    .line 120
    check-cast p2, Ljava/lang/Long;

    .line 121
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    :goto_0
    move v7, v0

    goto :goto_3

    .line 123
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    :goto_1
    move v7, p3

    goto :goto_3

    .line 126
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p1

    goto :goto_2

    .line 128
    :cond_3
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 129
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_2
    move v7, p1

    goto :goto_3

    .line 130
    :cond_4
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_5

    .line 131
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    .line 132
    :cond_5
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_8

    .line 133
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x4f000000

    cmpl-float p2, p1, p2

    if-lez p2, :cond_6

    goto :goto_0

    :cond_6
    const/high16 p2, -0x31000000

    cmpg-float p2, p1, p2

    if-gez p2, :cond_7

    goto :goto_1

    :cond_7
    float-to-int p1, p1

    goto :goto_2

    .line 146
    :goto_3
    iget-object v2, p0, Lcom/android/settingslib/core/instrumentation/e;->b:Lcom/android/settingslib/core/instrumentation/d;

    const/4 v3, 0x0

    const/16 v4, 0x355

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    return-void

    .line 142
    :cond_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Tried to log unloggable object"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SharedPreferencesLogger"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic b(Lcom/android/settingslib/core/instrumentation/e;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 3106
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/core/instrumentation/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 92
    new-instance v0, Lcom/android/settingslib/core/instrumentation/e$b;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/instrumentation/e$b;-><init>(Lcom/android/settingslib/core/instrumentation/e;)V

    return-object v0
.end method

.method public final getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    return p2
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 0

    return p2
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 0

    return p2
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 0

    return-wide p2
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    return-object p2
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    return-void
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    return-void
.end method
