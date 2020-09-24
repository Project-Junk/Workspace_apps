.class public final Lcom/android/settings/homepage/contextualcards/i;
.super Ljava/lang/Object;
.source "ControllerRendererPool.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/contextualcards/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/contextualcards/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/i;->a:Ljava/util/Set;

    .line 51
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/i;->b:Ljava/util/Set;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/settings/homepage/contextualcards/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/c;",
            ">;)",
            "Lcom/android/settings/homepage/contextualcards/c;"
        }
    .end annotation

    .line 107
    const-class v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    if-ne v0, p1, :cond_0

    .line 108
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 109
    :cond_0
    const-class v0, Lcom/android/settings/homepage/contextualcards/slices/b;

    if-ne v0, p1, :cond_1

    .line 110
    new-instance p1, Lcom/android/settings/homepage/contextualcards/slices/b;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/slices/b;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 111
    :cond_1
    const-class v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    if-ne v0, p1, :cond_2

    .line 112
    new-instance p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Class;)Lcom/android/settings/homepage/contextualcards/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/g;",
            ">;)",
            "Lcom/android/settings/homepage/contextualcards/g;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/i;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/g;

    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p3, :cond_0

    const-string p1, "ControllerRendererPool"

    const-string p2, "Renderer is already there."

    .line 93
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 98
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/homepage/contextualcards/i;->b(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Class;)Lcom/android/settings/homepage/contextualcards/g;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 100
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/i;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
.end method

.method private b(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Class;)Lcom/android/settings/homepage/contextualcards/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/settings/homepage/contextualcards/g;"
        }
    .end annotation

    .line 119
    const-class v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    if-ne v0, p3, :cond_0

    .line 120
    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/i;)V

    return-object p2

    .line 121
    :cond_0
    const-class v0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    if-ne v0, p3, :cond_1

    .line 122
    new-instance p3, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    invoke-direct {p3, p1, p2, p0}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/i;)V

    return-object p3

    .line 124
    :cond_1
    const-class p2, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b;

    if-ne p2, p3, :cond_2

    .line 125
    new-instance p2, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/i;)V

    return-object p2

    .line 127
    :cond_2
    const-class p2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;

    if-ne p2, p3, :cond_3

    .line 128
    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/i;)V

    return-object p2

    .line 130
    :cond_3
    const-class p2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    if-ne p2, p3, :cond_4

    .line 131
    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/i;)V

    return-object p2

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/settings/homepage/contextualcards/c;",
            ">(",
            "Landroid/content/Context;",
            "I)TT;"
        }
    .end annotation

    .line 57
    invoke-static {p2}, Lcom/android/settings/homepage/contextualcards/f;->a(I)Ljava/lang/Class;

    move-result-object p2

    .line 58
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/i;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/c;

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p2, :cond_0

    const-string p1, "ControllerRendererPool"

    const-string p2, "Controller is already there."

    .line 60
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 65
    :cond_1
    invoke-static {p1, p2}, Lcom/android/settings/homepage/contextualcards/i;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/settings/homepage/contextualcards/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 67
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/i;->a:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
.end method

.method public final a(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)Lcom/android/settings/homepage/contextualcards/g;
    .locals 0

    .line 85
    invoke-static {p3}, Lcom/android/settings/homepage/contextualcards/f;->b(I)Ljava/lang/Class;

    move-result-object p3

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/homepage/contextualcards/i;->a(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Class;)Lcom/android/settings/homepage/contextualcards/g;

    move-result-object p1

    return-object p1
.end method
