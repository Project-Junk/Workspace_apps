.class public Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;
.super Ljava/lang/Object;
.source "LegacySuggestionContextualCardController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/c;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;
.implements Lcom/android/settingslib/suggestions/a$a;


# instance fields
.field a:Lcom/android/settingslib/suggestions/a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private b:Lcom/android/settings/homepage/contextualcards/h;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->c:Landroid/content/Context;

    .line 58
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050051

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "LegacySuggestCardCtrl"

    const-string v0, "Legacy suggestion contextual card disabled, skipping."

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->c:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/overlay/b;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/a;

    move-result-object p1

    .line 64
    invoke-interface {p1}, Lcom/android/settings/dashboard/suggestions/a;->a()Landroid/content/ComponentName;

    move-result-object p1

    .line 65
    new-instance v0, Lcom/android/settingslib/suggestions/a;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settingslib/suggestions/a;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/settingslib/suggestions/a$a;)V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->a:Lcom/android/settingslib/suggestions/a;

    return-void
.end method

.method private synthetic a(Ljava/util/Map;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->b:Lcom/android/settings/homepage/contextualcards/h;

    invoke-interface {v0, p1}, Lcom/android/settings/homepage/contextualcards/h;->a(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic c()V
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->a:Lcom/android/settingslib/suggestions/a;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->b:Lcom/android/settings/homepage/contextualcards/h;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/a;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "null"

    goto :goto_0

    .line 133
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Loaded suggests: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LegacySuggestCardCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/settings/suggestions/Suggestion;

    .line 140
    new-instance v3, Lcom/android/settings/homepage/contextualcards/legacysuggestion/a$a;

    invoke-direct {v3}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/a$a;-><init>()V

    .line 142
    invoke-virtual {v2}, Landroid/service/settings/suggestions/Suggestion;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 143
    invoke-virtual {v2}, Landroid/service/settings/suggestions/Suggestion;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->c:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1380
    iput-object v4, v3, Lcom/android/settings/homepage/contextualcards/b$a;->q:Landroid/graphics/drawable/Drawable;

    .line 146
    :cond_2
    invoke-virtual {v2}, Landroid/service/settings/suggestions/Suggestion;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 2046
    iput-object v4, v3, Lcom/android/settings/homepage/contextualcards/legacysuggestion/a$a;->v:Landroid/app/PendingIntent;

    .line 147
    invoke-virtual {v2}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v4

    .line 2300
    iput-object v4, v3, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    .line 148
    invoke-virtual {v2}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2345
    iput-object v4, v3, Lcom/android/settings/homepage/contextualcards/b$a;->j:Ljava/lang/String;

    .line 149
    invoke-virtual {v2}, Landroid/service/settings/suggestions/Suggestion;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2355
    iput-object v2, v3, Lcom/android/settings/homepage/contextualcards/b$a;->l:Ljava/lang/String;

    const v2, 0x7f0d01a8

    .line 2390
    iput v2, v3, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 152
    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/a$a;->b()Lcom/android/settings/homepage/contextualcards/legacysuggestion/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    :cond_3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x2

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardController$jbjbAO6vejntktrfY1vH4xjf4_4;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardController$jbjbAO6vejntktrfY1vH4xjf4_4;-><init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic lambda$jbjbAO6vejntktrfY1vH4xjf4_4(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->a(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic lambda$vVOSN7QwICcduT3HKRdt9proPS0(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1126
    new-instance v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardController$vVOSN7QwICcduT3HKRdt9proPS0;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardController$vVOSN7QwICcduT3HKRdt9proPS0;-><init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final a(Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 2

    .line 78
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/a;

    .line 1038
    iget-object v0, v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/a;->l:Landroid/app/PendingIntent;

    .line 78
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 80
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start suggestion "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1118
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/b;->e:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LegacySuggestCardCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/android/settings/homepage/contextualcards/h;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->b:Lcom/android/settings/homepage/contextualcards/h;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 0

    return-void
.end method

.method public final c(Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->a:Lcom/android/settingslib/suggestions/a;

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/a;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->a:Lcom/android/settingslib/suggestions/a;

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/a;->b()V

    return-void
.end method
