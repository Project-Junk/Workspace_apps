.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;
.super Ljava/lang/Object;
.source "ConditionContextualCardController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/c;
.implements Lcom/android/settings/homepage/contextualcards/conditional/h;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field a:Z

.field private final b:Landroid/content/Context;

.field private c:Lcom/android/settings/homepage/contextualcards/conditional/i;

.field private d:Lcom/android/settings/homepage/contextualcards/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->b:Landroid/content/Context;

    const-string v0, "config_use_condition"

    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1}, Lcom/coloros/settings/b/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ConditionCtxCardCtrl"

    const-string v0, "condition contextual card disabled, skipping."

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_0
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/i;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/i;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/h;)V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->c:Lcom/android/settings/homepage/contextualcards/conditional/i;

    .line 67
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->c:Lcom/android/settings/homepage/contextualcards/conditional/i;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/i;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 125
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->d:Lcom/android/settings/homepage/contextualcards/h;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->c:Lcom/android/settings/homepage/contextualcards/conditional/i;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 128
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/conditional/i;->a()Ljava/util/List;

    move-result-object v0

    .line 3169
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x3

    .line 3170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3180
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->a:Z

    if-nez v3, :cond_1

    goto :goto_1

    .line 3184
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    .line 3185
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    .line 3184
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 3186
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 3188
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    .line 3190
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/homepage/contextualcards/conditional/k;

    .line 4170
    iget-object v5, v5, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    const v6, 0x7f0d0110

    .line 4390
    iput v6, v5, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 3192
    invoke-virtual {v5}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v5

    .line 3191
    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3182
    :cond_3
    :goto_1
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 3170
    :cond_4
    :goto_2
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 3172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5198
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-wide v4, -0x3f07961000000000L    # -99999.0

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->a:Z

    if-eqz v3, :cond_5

    .line 5199
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 5200
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5201
    new-instance v6, Lcom/android/settings/homepage/contextualcards/conditional/f$a;

    invoke-direct {v6}, Lcom/android/settings/homepage/contextualcards/conditional/f$a;-><init>()V

    const-string v7, "condition_footer"

    .line 5300
    iput-object v7, v6, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    .line 5310
    iput-wide v4, v6, Lcom/android/settings/homepage/contextualcards/b$a;->c:D

    const v7, 0x7f0d010f

    .line 5390
    iput v7, v6, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 5205
    invoke-virtual {v6}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v6

    .line 5201
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5208
    :cond_5
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 3172
    :goto_3
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 3174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6212
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->a:Z

    if-nez v3, :cond_6

    .line 6213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 6214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6215
    new-instance v6, Lcom/android/settings/homepage/contextualcards/conditional/g$a;

    invoke-direct {v6}, Lcom/android/settings/homepage/contextualcards/conditional/g$a;-><init>()V

    .line 7074
    iput-object v0, v6, Lcom/android/settings/homepage/contextualcards/conditional/g$a;->v:Ljava/util/List;

    const-string v0, "condition_header"

    .line 7300
    iput-object v0, v6, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    .line 7310
    iput-wide v4, v6, Lcom/android/settings/homepage/contextualcards/b$a;->c:D

    const v0, 0x7f0d0112

    .line 7390
    iput v0, v6, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 6220
    invoke-virtual {v6}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v0

    .line 6215
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 6223
    :cond_6
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 3174
    :goto_4
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->d:Lcom/android/settings/homepage/contextualcards/h;

    invoke-interface {v0, v1}, Lcom/android/settings/homepage/contextualcards/h;->a(Ljava/util/Map;)V

    :cond_7
    :goto_5
    return-void
.end method

.method public final a(Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->c:Lcom/android/settings/homepage/contextualcards/conditional/i;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/k;

    .line 106
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->b:Landroid/content/Context;

    .line 2052
    iget-wide v2, p1, Lcom/android/settings/homepage/contextualcards/conditional/k;->l:J

    .line 2091
    invoke-virtual {v0, v2, v3}, Lcom/android/settings/homepage/contextualcards/conditional/i;->a(J)Lcom/android/settings/homepage/contextualcards/conditional/j;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/settings/homepage/contextualcards/conditional/j;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Lcom/android/settings/homepage/contextualcards/h;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->d:Lcom/android/settings/homepage/contextualcards/h;

    return-void
.end method

.method public final b(Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->c:Lcom/android/settings/homepage/contextualcards/conditional/i;

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/k;

    .line 3052
    iget-wide v1, p1, Lcom/android/settings/homepage/contextualcards/conditional/k;->l:J

    .line 3100
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/conditional/i;->a(J)Lcom/android/settings/homepage/contextualcards/conditional/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/homepage/contextualcards/conditional/j;->a()V

    return-void
.end method

.method public final c(Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->c:Lcom/android/settings/homepage/contextualcards/conditional/i;

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/conditional/i;->b()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->c:Lcom/android/settings/homepage/contextualcards/conditional/i;

    if-nez v0, :cond_0

    return-void

    .line 1123
    :cond_0
    iget-boolean v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/i;->b:Z

    if-nez v1, :cond_1

    const-string v0, "ConditionManager"

    const-string v1, "Not listening to condition state changes, skipping"

    .line 1124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1127
    :cond_1
    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homepage/contextualcards/conditional/j;

    .line 1128
    invoke-interface {v2}, Lcom/android/settings/homepage/contextualcards/conditional/j;->c()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1130
    iput-boolean v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/i;->b:Z

    return-void
.end method
