.class public final Lcom/android/settings/core/instrumentation/c;
.super Lcom/android/settingslib/core/instrumentation/d;
.source "SettingsMetricsFeatureProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settingslib/core/instrumentation/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/c;->a:Ljava/util/List;

    new-instance v1, Lcom/android/settings/core/instrumentation/d;

    invoke-direct {v1}, Lcom/android/settings/core/instrumentation/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/c;->a:Ljava/util/List;

    new-instance v1, Lcom/android/settings/core/instrumentation/a;

    invoke-direct {v1}, Lcom/android/settings/core/instrumentation/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/c;->a:Ljava/util/List;

    new-instance v1, Lcom/android/settings/core/instrumentation/b;

    invoke-direct {v1}, Lcom/android/settings/core/instrumentation/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs a(Landroid/content/Context;I[Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SettingsMetricsFeature"

    const-string v1, "action(Pair<Integer, Object>... taggedData) is deprecated, Use action(int, int, int, String, int) instead."

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    return-void
.end method
