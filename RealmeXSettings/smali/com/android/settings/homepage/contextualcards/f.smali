.class public final Lcom/android/settings/homepage/contextualcards/f;
.super Ljava/lang/Object;
.source "ContextualCardLookupTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/f$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/Set;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/contextualcards/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/android/settings/homepage/contextualcards/f$1;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/f$1;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/f;->a:Ljava/util/Set;

    return-void
.end method

.method public static a(I)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/c;",
            ">;"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/android/settings/homepage/contextualcards/f;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/f$a;

    .line 107
    iget v2, v1, Lcom/android/settings/homepage/contextualcards/f$a;->a:I

    if-ne v2, p0, :cond_0

    .line 108
    iget-object p0, v1, Lcom/android/settings/homepage/contextualcards/f$a;->c:Ljava/lang/Class;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic a(ILcom/android/settings/homepage/contextualcards/f$a;)Z
    .locals 0

    .line 117
    iget p1, p1, Lcom/android/settings/homepage/contextualcards/f$a;->b:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/android/settings/homepage/contextualcards/f;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/-$$Lambda$f$dAQBpVOBRhFRtN7eoj4_B_V0FF4;

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$f$dAQBpVOBRhFRtN7eoj4_B_V0FF4;-><init>(I)V

    .line 117
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    .line 118
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 126
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/f$a;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/f$a;->d:Ljava/lang/Class;

    return-object p0

    .line 123
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Have duplicate VIEW_TYPE in lookup table."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const-string p0, "ContextualCardLookup"

    const-string v0, "No matching mapping"

    .line 119
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$dAQBpVOBRhFRtN7eoj4_B_V0FF4(ILcom/android/settings/homepage/contextualcards/f$a;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/homepage/contextualcards/f;->a(ILcom/android/settings/homepage/contextualcards/f$a;)Z

    move-result p0

    return p0
.end method
